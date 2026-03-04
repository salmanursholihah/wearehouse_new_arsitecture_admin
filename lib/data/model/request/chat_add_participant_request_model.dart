class ChatAddParticipantRequestModel {
  final int userId;

  ChatAddParticipantRequestModel({required this.userId});

  Map<String, dynamic> toJson() => {'user_id': userId};
}