import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_create_room_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_chat/admin_chat_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_chat_room_page.dart';

class AdminChatRoomsPage extends StatefulWidget {
  const AdminChatRoomsPage({super.key, required this.myUserId});
  final int myUserId; // ambil dari auth data

  @override
  State<AdminChatRoomsPage> createState() => _AdminChatRoomsPageState();
}

class _AdminChatRoomsPageState extends State<AdminChatRoomsPage> {
  final _emailC = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<AdminChatBloc>().add(const AdminChatEvent.getRooms());
  }

  @override
  void dispose() {
    _emailC.dispose();
    super.dispose();
  }

  Future<void> _createRoomDialog() async {
    _emailC.clear();

    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Mulai chat'),
        content: TextField(
          controller: _emailC,
          decoration: const InputDecoration(hintText: 'Email user tujuan'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Batal')),
          ElevatedButton(onPressed: () => Navigator.pop(context, true), child: const Text('Buat')),
        ],
      ),
    );

    if (ok == true) {
      context.read<AdminChatBloc>().add(
            AdminChatEvent.createRoom(
              ChatCreateRoomRequestModel(target: _emailC.text.trim(), type: 'personal'),
            ),
          );
    }
  }

  void _reload() {
    context.read<AdminChatBloc>().add(const AdminChatEvent.getRooms());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Chat Rooms'),
        actions: [
          IconButton(onPressed: _reload, icon: const Icon(Icons.refresh)),
          IconButton(onPressed: _createRoomDialog, icon: const Icon(Icons.add_comment_outlined)),
        ],
      ),
      body: BlocConsumer<AdminChatBloc, AdminChatState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.green),
              );
              _reload();
            },
            actionError: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.red),
              );
            },
            error: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            roomsLoading: () => const Center(child: CircularProgressIndicator()),
            roomsLoaded: (rooms) {
              if (rooms.isEmpty) return const Center(child: Text('Belum ada room'));

              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: rooms.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, i) {
                  final r = rooms[i];
                  final title = r.displayName(myUserId: widget.myUserId);
                  final last = r.lastMessage?.message ?? 'Tap untuk buka chat';

                  return InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AdminChatRoomPage(
                          roomId: r.id ?? 0,
                          title: title,
                          myUserId: widget.myUserId,
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFFEDEEF3)),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            child: Text(title.isNotEmpty ? title[0].toUpperCase() : '?'),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title, style: const TextStyle(fontWeight: FontWeight.w900)),
                                const SizedBox(height: 4),
                                Text(last, maxLines: 1, overflow: TextOverflow.ellipsis),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            error: (msg) => Center(child: Text(msg)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}