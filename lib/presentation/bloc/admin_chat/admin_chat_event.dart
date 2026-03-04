part of 'admin_chat_bloc.dart';

@freezed
class AdminChatEvent with _$AdminChatEvent {
  const factory AdminChatEvent.started() = _Started;
  const factory AdminChatEvent.getRooms() = _GetRooms;

  const factory AdminChatEvent.createRoom(ChatCreateRoomRequestModel request) =
      _CreateRoom;

  const factory AdminChatEvent.openRoom({
    required int roomId,
    @Default(20) int perPage,
  }) = _OpenRoom;

  const factory AdminChatEvent.loadMoreMessages() = _LoadMoreMessages;

  const factory AdminChatEvent.sendMessage({
    required int roomId,
    required ChatSendMessageRequestModel request,
  }) = _SendMessage;

  const factory AdminChatEvent.addParticipant({
    required int roomId,
    required ChatAddParticipantRequestModel request,
  }) = _AddParticipant;

  const factory AdminChatEvent.removeParticipant({
    required int roomId,
    required int userId,
  }) = _RemoveParticipant;
}
