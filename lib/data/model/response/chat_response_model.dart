import 'dart:convert';

class ChatRoomsResponseModel {
  final bool success;
  final List<ChatRoomModel> data;

  ChatRoomsResponseModel({required this.success, required this.data});

  factory ChatRoomsResponseModel.fromJson(String str) =>
      ChatRoomsResponseModel.fromMap(jsonDecode(str));

  factory ChatRoomsResponseModel.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => ChatRoomModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return ChatRoomsResponseModel(
      success: json['success'] == true,
      data: list,
    );
  }
}

class ChatRoomResponseModel {
  final bool success;
  final String? message;
  final ChatRoomModel? data;

  ChatRoomResponseModel({required this.success, this.message, this.data});

  factory ChatRoomResponseModel.fromJson(String str) =>
      ChatRoomResponseModel.fromMap(jsonDecode(str));

  factory ChatRoomResponseModel.fromMap(Map<String, dynamic> json) {
    return ChatRoomResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null ? null : ChatRoomModel.fromMap(json['data']),
    );
  }
}

/// messages paginate dari laravel
class ChatMessagesResponseModel {
  final bool success;
  final ChatMessagePagination? data;

  ChatMessagesResponseModel({required this.success, this.data});

  factory ChatMessagesResponseModel.fromJson(String str) =>
      ChatMessagesResponseModel.fromMap(jsonDecode(str));

  factory ChatMessagesResponseModel.fromMap(Map<String, dynamic> json) {
    return ChatMessagesResponseModel(
      success: json['success'] == true,
      data: json['data'] == null
          ? null
          : ChatMessagePagination.fromMap(json['data']),
    );
  }
}

class ActionResponseModel {
  final bool success;
  final String? message;
  final dynamic data;

  ActionResponseModel({required this.success, this.message, this.data});

  factory ActionResponseModel.fromJson(String str) =>
      ActionResponseModel.fromMap(jsonDecode(str));

  factory ActionResponseModel.fromMap(Map<String, dynamic> json) {
    return ActionResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'],
    );
  }
}

class ChatRoomModel {
  final int? id;
  final String? type; // personal|group
  final String? name;
  final int? createdBy;
  final String? updatedAt;

  final List<ChatParticipantModel> participants;

  /// opsional: kalau API kamu mengirim last_message
  final ChatMessageModel? lastMessage;

  ChatRoomModel({
    this.id,
    this.type,
    this.name,
    this.createdBy,
    this.updatedAt,
    required this.participants,
    this.lastMessage,
  });

  factory ChatRoomModel.fromMap(Map<String, dynamic> json) {
    final participants = (json['participants'] as List? ?? [])
        .map((e) => ChatParticipantModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return ChatRoomModel(
      id: json['id'] as int?,
      type: json['type']?.toString(),
      name: json['name']?.toString(),
      createdBy: json['created_by'] as int?,
      updatedAt: json['updated_at']?.toString(),
      participants: participants,
      lastMessage: json['last_message'] == null
          ? null
          : ChatMessageModel.fromMap(json['last_message']),
    );
  }

  String get safeType => type ?? 'personal';

  String displayName({required int myUserId}) {
    if (safeType == 'group') return name ?? 'Group';
    final other = participants
        .map((p) => p.user)
        .whereType<UserMiniModel>()
        .firstWhere(
          (u) => u.id != myUserId,
          orElse: () => UserMiniModel(id: null, name: 'Unknown', email: ''),
        );
    return other.name ?? 'Unknown';
  }
}

class ChatParticipantModel {
  final int? id;
  final int? chatRoomId;
  final int? userId;
  final UserMiniModel? user;

  ChatParticipantModel({this.id, this.chatRoomId, this.userId, this.user});

  factory ChatParticipantModel.fromMap(Map<String, dynamic> json) {
    return ChatParticipantModel(
      id: json['id'] as int?,
      chatRoomId: json['chat_room_id'] as int?,
      userId: json['user_id'] as int?,
      user: json['user'] == null ? null : UserMiniModel.fromMap(json['user']),
    );
  }
}

class ChatMessagePagination {
  final int currentPage;
  final List<ChatMessageModel> data;
  final int lastPage;

  ChatMessagePagination({
    required this.currentPage,
    required this.data,
    required this.lastPage,
  });

  factory ChatMessagePagination.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => ChatMessageModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return ChatMessagePagination(
      currentPage: (json['current_page'] ?? 1) as int,
      lastPage: (json['last_page'] ?? 1) as int,
      data: list,
    );
  }

  bool get canLoadMore => currentPage < lastPage;
}

class ChatMessageModel {
  final int? id;
  final int? chatRoomId;
  final int? senderId;
  final String? message;
  final String? createdAt;

  final UserMiniModel? sender;

  ChatMessageModel({
    this.id,
    this.chatRoomId,
    this.senderId,
    this.message,
    this.createdAt,
    this.sender,
  });

  factory ChatMessageModel.fromMap(Map<String, dynamic> json) {
    return ChatMessageModel(
      id: json['id'] as int?,
      chatRoomId: json['chat_room_id'] as int?,
      senderId: json['sender_id'] as int?,
      message: json['message']?.toString(),
      createdAt: json['created_at']?.toString(),
      sender: json['sender'] == null ? null : UserMiniModel.fromMap(json['sender']),
    );
  }
}

class UserMiniModel {
  final int? id;
  final String? name;
  final String? email;
  final String? image;
  final String? role;

  UserMiniModel({this.id, this.name, this.email, this.image, this.role});

  factory UserMiniModel.fromMap(Map<String, dynamic> json) {
    return UserMiniModel(
      id: json['id'] as int?,
      name: json['name']?.toString(),
      email: json['email']?.toString(),
      image: json['image']?.toString(),
      role: json['role']?.toString(),
    );
  }
}