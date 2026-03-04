class ChatCreateRoomRequestModel {
  final String target; // email
  final String? type;  // personal|group (opsional)
  final String? name;  // group only

  ChatCreateRoomRequestModel({
    required this.target,
    this.type,
    this.name,
  });

  Map<String, dynamic> toJson() => {
        'target': target,
        if (type != null) 'type': type,
        if (name != null) 'name': name,
      };
}