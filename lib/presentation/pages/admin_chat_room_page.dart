import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_send_message_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_chat/admin_chat_bloc.dart';


class AdminChatRoomPage extends StatefulWidget {
  const AdminChatRoomPage({
    super.key,
    required this.roomId,
    required this.title,
    required this.myUserId,
  });

  final int roomId;
  final String title;
  final int myUserId;

  @override
  State<AdminChatRoomPage> createState() => _AdminChatRoomPageState();
}

class _AdminChatRoomPageState extends State<AdminChatRoomPage> {
  final _msgC = TextEditingController();
  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<AdminChatBloc>().add(AdminChatEvent.openRoom(roomId: widget.roomId));

    // scroll untuk load more (API desc, jadi load more saat scroll ke bawah)
    _scroll.addListener(() {
      if (_scroll.position.pixels >= _scroll.position.maxScrollExtent - 120) {
        context.read<AdminChatBloc>().add(const AdminChatEvent.loadMoreMessages());
      }
    });
  }

  @override
  void dispose() {
    _msgC.dispose();
    _scroll.dispose();
    super.dispose();
  }

  void _send() {
    final text = _msgC.text.trim();
    if (text.isEmpty) return;
    _msgC.clear();

    context.read<AdminChatBloc>().add(
          AdminChatEvent.sendMessage(
            roomId: widget.roomId,
            request: ChatSendMessageRequestModel(message: text),
          ),
        );

    // reload cepat setelah send
    context.read<AdminChatBloc>().add(AdminChatEvent.openRoom(roomId: widget.roomId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<AdminChatBloc, AdminChatState>(
              builder: (context, state) {
                return state.maybeWhen(
                  messagesLoading: () => const Center(child: CircularProgressIndicator()),
                  messagesLoaded: (roomId, items, page, perPage, canLoadMore) {
                    if (items.isEmpty) return const Center(child: Text('Belum ada pesan'));

                    // API desc (terbaru duluan), biar UI chat normal -> reverse list
                    final display = items.reversed.toList();

                    return ListView.builder(
                      controller: _scroll,
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      itemCount: display.length,
                      itemBuilder: (context, i) {
                        final m = display[i];
                        final isMe = (m.senderId ?? -1) == widget.myUserId;

                        return Align(
                          alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            constraints: const BoxConstraints(maxWidth: 280),
                            decoration: BoxDecoration(
                              color: isMe ? const Color(0xFF3578BC) : Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: isMe ? null : Border.all(color: const Color(0xFFEDEEF3)),
                            ),
                            child: Text(
                              m.message ?? '-',
                              style: TextStyle(color: isMe ? Colors.white : Colors.black),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  messagesLoadingMore: (roomId, items, page, perPage, canLoadMore) {
                    final display = items.reversed.toList();
                    return ListView.builder(
                      controller: _scroll,
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      itemCount: display.length + 1,
                      itemBuilder: (context, i) {
                        if (i == 0) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        final m = display[i - 1];
                        final isMe = (m.senderId ?? -1) == widget.myUserId;

                        return Align(
                          alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            constraints: const BoxConstraints(maxWidth: 280),
                            decoration: BoxDecoration(
                              color: isMe ? const Color(0xFF3578BC) : Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: isMe ? null : Border.all(color: const Color(0xFFEDEEF3)),
                            ),
                            child: Text(
                              m.message ?? '-',
                              style: TextStyle(color: isMe ? Colors.white : Colors.black),
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
          ),
          SafeArea(
            top: false,
            child: Container(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _msgC,
                      decoration: InputDecoration(
                        hintText: 'Ketik pesan...',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: ElevatedButton(
                      onPressed: _send,
                      style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                      child: const Icon(Icons.send),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}