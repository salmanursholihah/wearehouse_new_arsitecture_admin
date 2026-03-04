class ChatSendMessageRequestModel {
  final String message;

  ChatSendMessageRequestModel({required this.message});

  Map<String, dynamic> toJson() => {'message': message};
}