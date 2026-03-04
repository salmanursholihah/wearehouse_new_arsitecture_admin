// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatEvent()';
}


}

/// @nodoc
class $AdminChatEventCopyWith<$Res>  {
$AdminChatEventCopyWith(AdminChatEvent _, $Res Function(AdminChatEvent) __);
}


/// Adds pattern-matching-related methods to [AdminChatEvent].
extension AdminChatEventPatterns on AdminChatEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetRooms value)?  getRooms,TResult Function( _CreateRoom value)?  createRoom,TResult Function( _OpenRoom value)?  openRoom,TResult Function( _LoadMoreMessages value)?  loadMoreMessages,TResult Function( _SendMessage value)?  sendMessage,TResult Function( _AddParticipant value)?  addParticipant,TResult Function( _RemoveParticipant value)?  removeParticipant,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetRooms() when getRooms != null:
return getRooms(_that);case _CreateRoom() when createRoom != null:
return createRoom(_that);case _OpenRoom() when openRoom != null:
return openRoom(_that);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _AddParticipant() when addParticipant != null:
return addParticipant(_that);case _RemoveParticipant() when removeParticipant != null:
return removeParticipant(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetRooms value)  getRooms,required TResult Function( _CreateRoom value)  createRoom,required TResult Function( _OpenRoom value)  openRoom,required TResult Function( _LoadMoreMessages value)  loadMoreMessages,required TResult Function( _SendMessage value)  sendMessage,required TResult Function( _AddParticipant value)  addParticipant,required TResult Function( _RemoveParticipant value)  removeParticipant,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetRooms():
return getRooms(_that);case _CreateRoom():
return createRoom(_that);case _OpenRoom():
return openRoom(_that);case _LoadMoreMessages():
return loadMoreMessages(_that);case _SendMessage():
return sendMessage(_that);case _AddParticipant():
return addParticipant(_that);case _RemoveParticipant():
return removeParticipant(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetRooms value)?  getRooms,TResult? Function( _CreateRoom value)?  createRoom,TResult? Function( _OpenRoom value)?  openRoom,TResult? Function( _LoadMoreMessages value)?  loadMoreMessages,TResult? Function( _SendMessage value)?  sendMessage,TResult? Function( _AddParticipant value)?  addParticipant,TResult? Function( _RemoveParticipant value)?  removeParticipant,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetRooms() when getRooms != null:
return getRooms(_that);case _CreateRoom() when createRoom != null:
return createRoom(_that);case _OpenRoom() when openRoom != null:
return openRoom(_that);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _AddParticipant() when addParticipant != null:
return addParticipant(_that);case _RemoveParticipant() when removeParticipant != null:
return removeParticipant(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getRooms,TResult Function( ChatCreateRoomRequestModel request)?  createRoom,TResult Function( int roomId,  int perPage)?  openRoom,TResult Function()?  loadMoreMessages,TResult Function( int roomId,  ChatSendMessageRequestModel request)?  sendMessage,TResult Function( int roomId,  ChatAddParticipantRequestModel request)?  addParticipant,TResult Function( int roomId,  int userId)?  removeParticipant,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetRooms() when getRooms != null:
return getRooms();case _CreateRoom() when createRoom != null:
return createRoom(_that.request);case _OpenRoom() when openRoom != null:
return openRoom(_that.roomId,_that.perPage);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages();case _SendMessage() when sendMessage != null:
return sendMessage(_that.roomId,_that.request);case _AddParticipant() when addParticipant != null:
return addParticipant(_that.roomId,_that.request);case _RemoveParticipant() when removeParticipant != null:
return removeParticipant(_that.roomId,_that.userId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getRooms,required TResult Function( ChatCreateRoomRequestModel request)  createRoom,required TResult Function( int roomId,  int perPage)  openRoom,required TResult Function()  loadMoreMessages,required TResult Function( int roomId,  ChatSendMessageRequestModel request)  sendMessage,required TResult Function( int roomId,  ChatAddParticipantRequestModel request)  addParticipant,required TResult Function( int roomId,  int userId)  removeParticipant,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetRooms():
return getRooms();case _CreateRoom():
return createRoom(_that.request);case _OpenRoom():
return openRoom(_that.roomId,_that.perPage);case _LoadMoreMessages():
return loadMoreMessages();case _SendMessage():
return sendMessage(_that.roomId,_that.request);case _AddParticipant():
return addParticipant(_that.roomId,_that.request);case _RemoveParticipant():
return removeParticipant(_that.roomId,_that.userId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getRooms,TResult? Function( ChatCreateRoomRequestModel request)?  createRoom,TResult? Function( int roomId,  int perPage)?  openRoom,TResult? Function()?  loadMoreMessages,TResult? Function( int roomId,  ChatSendMessageRequestModel request)?  sendMessage,TResult? Function( int roomId,  ChatAddParticipantRequestModel request)?  addParticipant,TResult? Function( int roomId,  int userId)?  removeParticipant,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetRooms() when getRooms != null:
return getRooms();case _CreateRoom() when createRoom != null:
return createRoom(_that.request);case _OpenRoom() when openRoom != null:
return openRoom(_that.roomId,_that.perPage);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages();case _SendMessage() when sendMessage != null:
return sendMessage(_that.roomId,_that.request);case _AddParticipant() when addParticipant != null:
return addParticipant(_that.roomId,_that.request);case _RemoveParticipant() when removeParticipant != null:
return removeParticipant(_that.roomId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AdminChatEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatEvent.started()';
}


}




/// @nodoc


class _GetRooms implements AdminChatEvent {
  const _GetRooms();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRooms);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatEvent.getRooms()';
}


}




/// @nodoc


class _CreateRoom implements AdminChatEvent {
  const _CreateRoom(this.request);
  

 final  ChatCreateRoomRequestModel request;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateRoomCopyWith<_CreateRoom> get copyWith => __$CreateRoomCopyWithImpl<_CreateRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRoom&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'AdminChatEvent.createRoom(request: $request)';
}


}

/// @nodoc
abstract mixin class _$CreateRoomCopyWith<$Res> implements $AdminChatEventCopyWith<$Res> {
  factory _$CreateRoomCopyWith(_CreateRoom value, $Res Function(_CreateRoom) _then) = __$CreateRoomCopyWithImpl;
@useResult
$Res call({
 ChatCreateRoomRequestModel request
});




}
/// @nodoc
class __$CreateRoomCopyWithImpl<$Res>
    implements _$CreateRoomCopyWith<$Res> {
  __$CreateRoomCopyWithImpl(this._self, this._then);

  final _CreateRoom _self;
  final $Res Function(_CreateRoom) _then;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(_CreateRoom(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ChatCreateRoomRequestModel,
  ));
}


}

/// @nodoc


class _OpenRoom implements AdminChatEvent {
  const _OpenRoom({required this.roomId, this.perPage = 20});
  

 final  int roomId;
@JsonKey() final  int perPage;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenRoomCopyWith<_OpenRoom> get copyWith => __$OpenRoomCopyWithImpl<_OpenRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenRoom&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,perPage);

@override
String toString() {
  return 'AdminChatEvent.openRoom(roomId: $roomId, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$OpenRoomCopyWith<$Res> implements $AdminChatEventCopyWith<$Res> {
  factory _$OpenRoomCopyWith(_OpenRoom value, $Res Function(_OpenRoom) _then) = __$OpenRoomCopyWithImpl;
@useResult
$Res call({
 int roomId, int perPage
});




}
/// @nodoc
class __$OpenRoomCopyWithImpl<$Res>
    implements _$OpenRoomCopyWith<$Res> {
  __$OpenRoomCopyWithImpl(this._self, this._then);

  final _OpenRoom _self;
  final $Res Function(_OpenRoom) _then;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? perPage = null,}) {
  return _then(_OpenRoom(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMoreMessages implements AdminChatEvent {
  const _LoadMoreMessages();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreMessages);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatEvent.loadMoreMessages()';
}


}




/// @nodoc


class _SendMessage implements AdminChatEvent {
  const _SendMessage({required this.roomId, required this.request});
  

 final  int roomId;
 final  ChatSendMessageRequestModel request;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,request);

@override
String toString() {
  return 'AdminChatEvent.sendMessage(roomId: $roomId, request: $request)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $AdminChatEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@useResult
$Res call({
 int roomId, ChatSendMessageRequestModel request
});




}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? request = null,}) {
  return _then(_SendMessage(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ChatSendMessageRequestModel,
  ));
}


}

/// @nodoc


class _AddParticipant implements AdminChatEvent {
  const _AddParticipant({required this.roomId, required this.request});
  

 final  int roomId;
 final  ChatAddParticipantRequestModel request;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddParticipantCopyWith<_AddParticipant> get copyWith => __$AddParticipantCopyWithImpl<_AddParticipant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddParticipant&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,request);

@override
String toString() {
  return 'AdminChatEvent.addParticipant(roomId: $roomId, request: $request)';
}


}

/// @nodoc
abstract mixin class _$AddParticipantCopyWith<$Res> implements $AdminChatEventCopyWith<$Res> {
  factory _$AddParticipantCopyWith(_AddParticipant value, $Res Function(_AddParticipant) _then) = __$AddParticipantCopyWithImpl;
@useResult
$Res call({
 int roomId, ChatAddParticipantRequestModel request
});




}
/// @nodoc
class __$AddParticipantCopyWithImpl<$Res>
    implements _$AddParticipantCopyWith<$Res> {
  __$AddParticipantCopyWithImpl(this._self, this._then);

  final _AddParticipant _self;
  final $Res Function(_AddParticipant) _then;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? request = null,}) {
  return _then(_AddParticipant(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ChatAddParticipantRequestModel,
  ));
}


}

/// @nodoc


class _RemoveParticipant implements AdminChatEvent {
  const _RemoveParticipant({required this.roomId, required this.userId});
  

 final  int roomId;
 final  int userId;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveParticipantCopyWith<_RemoveParticipant> get copyWith => __$RemoveParticipantCopyWithImpl<_RemoveParticipant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveParticipant&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,userId);

@override
String toString() {
  return 'AdminChatEvent.removeParticipant(roomId: $roomId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$RemoveParticipantCopyWith<$Res> implements $AdminChatEventCopyWith<$Res> {
  factory _$RemoveParticipantCopyWith(_RemoveParticipant value, $Res Function(_RemoveParticipant) _then) = __$RemoveParticipantCopyWithImpl;
@useResult
$Res call({
 int roomId, int userId
});




}
/// @nodoc
class __$RemoveParticipantCopyWithImpl<$Res>
    implements _$RemoveParticipantCopyWith<$Res> {
  __$RemoveParticipantCopyWithImpl(this._self, this._then);

  final _RemoveParticipant _self;
  final $Res Function(_RemoveParticipant) _then;

/// Create a copy of AdminChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? userId = null,}) {
  return _then(_RemoveParticipant(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AdminChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatState()';
}


}

/// @nodoc
class $AdminChatStateCopyWith<$Res>  {
$AdminChatStateCopyWith(AdminChatState _, $Res Function(AdminChatState) __);
}


/// Adds pattern-matching-related methods to [AdminChatState].
extension AdminChatStatePatterns on AdminChatState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _RoomsLoading value)?  roomsLoading,TResult Function( _RoomsLoaded value)?  roomsLoaded,TResult Function( _MessagesLoading value)?  messagesLoading,TResult Function( _MessagesLoaded value)?  messagesLoaded,TResult Function( _MessagesLoadingMore value)?  messagesLoadingMore,TResult Function( _ActionLoading value)?  actionLoading,TResult Function( _ActionSuccess value)?  actionSuccess,TResult Function( _ActionError value)?  actionError,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RoomsLoading() when roomsLoading != null:
return roomsLoading(_that);case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that);case _MessagesLoading() when messagesLoading != null:
return messagesLoading(_that);case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that);case _MessagesLoadingMore() when messagesLoadingMore != null:
return messagesLoadingMore(_that);case _ActionLoading() when actionLoading != null:
return actionLoading(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _ActionError() when actionError != null:
return actionError(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _RoomsLoading value)  roomsLoading,required TResult Function( _RoomsLoaded value)  roomsLoaded,required TResult Function( _MessagesLoading value)  messagesLoading,required TResult Function( _MessagesLoaded value)  messagesLoaded,required TResult Function( _MessagesLoadingMore value)  messagesLoadingMore,required TResult Function( _ActionLoading value)  actionLoading,required TResult Function( _ActionSuccess value)  actionSuccess,required TResult Function( _ActionError value)  actionError,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _RoomsLoading():
return roomsLoading(_that);case _RoomsLoaded():
return roomsLoaded(_that);case _MessagesLoading():
return messagesLoading(_that);case _MessagesLoaded():
return messagesLoaded(_that);case _MessagesLoadingMore():
return messagesLoadingMore(_that);case _ActionLoading():
return actionLoading(_that);case _ActionSuccess():
return actionSuccess(_that);case _ActionError():
return actionError(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _RoomsLoading value)?  roomsLoading,TResult? Function( _RoomsLoaded value)?  roomsLoaded,TResult? Function( _MessagesLoading value)?  messagesLoading,TResult? Function( _MessagesLoaded value)?  messagesLoaded,TResult? Function( _MessagesLoadingMore value)?  messagesLoadingMore,TResult? Function( _ActionLoading value)?  actionLoading,TResult? Function( _ActionSuccess value)?  actionSuccess,TResult? Function( _ActionError value)?  actionError,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _RoomsLoading() when roomsLoading != null:
return roomsLoading(_that);case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that);case _MessagesLoading() when messagesLoading != null:
return messagesLoading(_that);case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that);case _MessagesLoadingMore() when messagesLoadingMore != null:
return messagesLoadingMore(_that);case _ActionLoading() when actionLoading != null:
return actionLoading(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _ActionError() when actionError != null:
return actionError(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  roomsLoading,TResult Function( List<ChatRoomModel> rooms)?  roomsLoaded,TResult Function()?  messagesLoading,TResult Function( int roomId,  List<ChatMessageModel> items,  int page,  int perPage,  bool canLoadMore)?  messagesLoaded,TResult Function( int roomId,  List<ChatMessageModel> items,  int page,  int perPage,  bool canLoadMore)?  messagesLoadingMore,TResult Function()?  actionLoading,TResult Function( String message)?  actionSuccess,TResult Function( String message)?  actionError,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RoomsLoading() when roomsLoading != null:
return roomsLoading();case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that.rooms);case _MessagesLoading() when messagesLoading != null:
return messagesLoading();case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that.roomId,_that.items,_that.page,_that.perPage,_that.canLoadMore);case _MessagesLoadingMore() when messagesLoadingMore != null:
return messagesLoadingMore(_that.roomId,_that.items,_that.page,_that.perPage,_that.canLoadMore);case _ActionLoading() when actionLoading != null:
return actionLoading();case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.message);case _ActionError() when actionError != null:
return actionError(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  roomsLoading,required TResult Function( List<ChatRoomModel> rooms)  roomsLoaded,required TResult Function()  messagesLoading,required TResult Function( int roomId,  List<ChatMessageModel> items,  int page,  int perPage,  bool canLoadMore)  messagesLoaded,required TResult Function( int roomId,  List<ChatMessageModel> items,  int page,  int perPage,  bool canLoadMore)  messagesLoadingMore,required TResult Function()  actionLoading,required TResult Function( String message)  actionSuccess,required TResult Function( String message)  actionError,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _RoomsLoading():
return roomsLoading();case _RoomsLoaded():
return roomsLoaded(_that.rooms);case _MessagesLoading():
return messagesLoading();case _MessagesLoaded():
return messagesLoaded(_that.roomId,_that.items,_that.page,_that.perPage,_that.canLoadMore);case _MessagesLoadingMore():
return messagesLoadingMore(_that.roomId,_that.items,_that.page,_that.perPage,_that.canLoadMore);case _ActionLoading():
return actionLoading();case _ActionSuccess():
return actionSuccess(_that.message);case _ActionError():
return actionError(_that.message);case _Error():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  roomsLoading,TResult? Function( List<ChatRoomModel> rooms)?  roomsLoaded,TResult? Function()?  messagesLoading,TResult? Function( int roomId,  List<ChatMessageModel> items,  int page,  int perPage,  bool canLoadMore)?  messagesLoaded,TResult? Function( int roomId,  List<ChatMessageModel> items,  int page,  int perPage,  bool canLoadMore)?  messagesLoadingMore,TResult? Function()?  actionLoading,TResult? Function( String message)?  actionSuccess,TResult? Function( String message)?  actionError,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _RoomsLoading() when roomsLoading != null:
return roomsLoading();case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that.rooms);case _MessagesLoading() when messagesLoading != null:
return messagesLoading();case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that.roomId,_that.items,_that.page,_that.perPage,_that.canLoadMore);case _MessagesLoadingMore() when messagesLoadingMore != null:
return messagesLoadingMore(_that.roomId,_that.items,_that.page,_that.perPage,_that.canLoadMore);case _ActionLoading() when actionLoading != null:
return actionLoading();case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.message);case _ActionError() when actionError != null:
return actionError(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminChatState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatState.initial()';
}


}




/// @nodoc


class _RoomsLoading implements AdminChatState {
  const _RoomsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatState.roomsLoading()';
}


}




/// @nodoc


class _RoomsLoaded implements AdminChatState {
  const _RoomsLoaded(final  List<ChatRoomModel> rooms): _rooms = rooms;
  

 final  List<ChatRoomModel> _rooms;
 List<ChatRoomModel> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}


/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomsLoadedCopyWith<_RoomsLoaded> get copyWith => __$RoomsLoadedCopyWithImpl<_RoomsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomsLoaded&&const DeepCollectionEquality().equals(other._rooms, _rooms));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rooms));

@override
String toString() {
  return 'AdminChatState.roomsLoaded(rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class _$RoomsLoadedCopyWith<$Res> implements $AdminChatStateCopyWith<$Res> {
  factory _$RoomsLoadedCopyWith(_RoomsLoaded value, $Res Function(_RoomsLoaded) _then) = __$RoomsLoadedCopyWithImpl;
@useResult
$Res call({
 List<ChatRoomModel> rooms
});




}
/// @nodoc
class __$RoomsLoadedCopyWithImpl<$Res>
    implements _$RoomsLoadedCopyWith<$Res> {
  __$RoomsLoadedCopyWithImpl(this._self, this._then);

  final _RoomsLoaded _self;
  final $Res Function(_RoomsLoaded) _then;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rooms = null,}) {
  return _then(_RoomsLoaded(
null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<ChatRoomModel>,
  ));
}


}

/// @nodoc


class _MessagesLoading implements AdminChatState {
  const _MessagesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatState.messagesLoading()';
}


}




/// @nodoc


class _MessagesLoaded implements AdminChatState {
  const _MessagesLoaded({required this.roomId, required final  List<ChatMessageModel> items, required this.page, required this.perPage, required this.canLoadMore}): _items = items;
  

 final  int roomId;
 final  List<ChatMessageModel> _items;
 List<ChatMessageModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesLoadedCopyWith<_MessagesLoaded> get copyWith => __$MessagesLoadedCopyWithImpl<_MessagesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesLoaded&&(identical(other.roomId, roomId) || other.roomId == roomId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore);

@override
String toString() {
  return 'AdminChatState.messagesLoaded(roomId: $roomId, items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore)';
}


}

/// @nodoc
abstract mixin class _$MessagesLoadedCopyWith<$Res> implements $AdminChatStateCopyWith<$Res> {
  factory _$MessagesLoadedCopyWith(_MessagesLoaded value, $Res Function(_MessagesLoaded) _then) = __$MessagesLoadedCopyWithImpl;
@useResult
$Res call({
 int roomId, List<ChatMessageModel> items, int page, int perPage, bool canLoadMore
});




}
/// @nodoc
class __$MessagesLoadedCopyWithImpl<$Res>
    implements _$MessagesLoadedCopyWith<$Res> {
  __$MessagesLoadedCopyWithImpl(this._self, this._then);

  final _MessagesLoaded _self;
  final $Res Function(_MessagesLoaded) _then;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,}) {
  return _then(_MessagesLoaded(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChatMessageModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _MessagesLoadingMore implements AdminChatState {
  const _MessagesLoadingMore({required this.roomId, required final  List<ChatMessageModel> items, required this.page, required this.perPage, required this.canLoadMore}): _items = items;
  

 final  int roomId;
 final  List<ChatMessageModel> _items;
 List<ChatMessageModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesLoadingMoreCopyWith<_MessagesLoadingMore> get copyWith => __$MessagesLoadingMoreCopyWithImpl<_MessagesLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesLoadingMore&&(identical(other.roomId, roomId) || other.roomId == roomId)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore);

@override
String toString() {
  return 'AdminChatState.messagesLoadingMore(roomId: $roomId, items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore)';
}


}

/// @nodoc
abstract mixin class _$MessagesLoadingMoreCopyWith<$Res> implements $AdminChatStateCopyWith<$Res> {
  factory _$MessagesLoadingMoreCopyWith(_MessagesLoadingMore value, $Res Function(_MessagesLoadingMore) _then) = __$MessagesLoadingMoreCopyWithImpl;
@useResult
$Res call({
 int roomId, List<ChatMessageModel> items, int page, int perPage, bool canLoadMore
});




}
/// @nodoc
class __$MessagesLoadingMoreCopyWithImpl<$Res>
    implements _$MessagesLoadingMoreCopyWith<$Res> {
  __$MessagesLoadingMoreCopyWithImpl(this._self, this._then);

  final _MessagesLoadingMore _self;
  final $Res Function(_MessagesLoadingMore) _then;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,}) {
  return _then(_MessagesLoadingMore(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChatMessageModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ActionLoading implements AdminChatState {
  const _ActionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminChatState.actionLoading()';
}


}




/// @nodoc


class _ActionSuccess implements AdminChatState {
  const _ActionSuccess(this.message);
  

 final  String message;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionSuccessCopyWith<_ActionSuccess> get copyWith => __$ActionSuccessCopyWithImpl<_ActionSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AdminChatState.actionSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $AdminChatStateCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(_ActionSuccess value, $Res Function(_ActionSuccess) _then) = __$ActionSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(this._self, this._then);

  final _ActionSuccess _self;
  final $Res Function(_ActionSuccess) _then;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ActionError implements AdminChatState {
  const _ActionError(this.message);
  

 final  String message;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionErrorCopyWith<_ActionError> get copyWith => __$ActionErrorCopyWithImpl<_ActionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AdminChatState.actionError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionErrorCopyWith<$Res> implements $AdminChatStateCopyWith<$Res> {
  factory _$ActionErrorCopyWith(_ActionError value, $Res Function(_ActionError) _then) = __$ActionErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ActionErrorCopyWithImpl<$Res>
    implements _$ActionErrorCopyWith<$Res> {
  __$ActionErrorCopyWithImpl(this._self, this._then);

  final _ActionError _self;
  final $Res Function(_ActionError) _then;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements AdminChatState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AdminChatState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AdminChatStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AdminChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
