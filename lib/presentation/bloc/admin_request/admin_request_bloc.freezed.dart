// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminRequestEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminRequestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminRequestEvent()';
}


}

/// @nodoc
class $AdminRequestEventCopyWith<$Res>  {
$AdminRequestEventCopyWith(AdminRequestEvent _, $Res Function(AdminRequestEvent) __);
}


/// Adds pattern-matching-related methods to [AdminRequestEvent].
extension AdminRequestEventPatterns on AdminRequestEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetRequests value)?  getRequests,TResult Function( _GetDetail value)?  getDetail,TResult Function( _Approve value)?  approve,TResult Function( _Reject value)?  reject,TResult Function( _Taken value)?  taken,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetRequests() when getRequests != null:
return getRequests(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Approve() when approve != null:
return approve(_that);case _Reject() when reject != null:
return reject(_that);case _Taken() when taken != null:
return taken(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetRequests value)  getRequests,required TResult Function( _GetDetail value)  getDetail,required TResult Function( _Approve value)  approve,required TResult Function( _Reject value)  reject,required TResult Function( _Taken value)  taken,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetRequests():
return getRequests(_that);case _GetDetail():
return getDetail(_that);case _Approve():
return approve(_that);case _Reject():
return reject(_that);case _Taken():
return taken(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetRequests value)?  getRequests,TResult? Function( _GetDetail value)?  getDetail,TResult? Function( _Approve value)?  approve,TResult? Function( _Reject value)?  reject,TResult? Function( _Taken value)?  taken,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetRequests() when getRequests != null:
return getRequests(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Approve() when approve != null:
return approve(_that);case _Reject() when reject != null:
return reject(_that);case _Taken() when taken != null:
return taken(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getRequests,TResult Function( int id)?  getDetail,TResult Function( int id)?  approve,TResult Function( int id)?  reject,TResult Function( int id)?  taken,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetRequests() when getRequests != null:
return getRequests();case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Approve() when approve != null:
return approve(_that.id);case _Reject() when reject != null:
return reject(_that.id);case _Taken() when taken != null:
return taken(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getRequests,required TResult Function( int id)  getDetail,required TResult Function( int id)  approve,required TResult Function( int id)  reject,required TResult Function( int id)  taken,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetRequests():
return getRequests();case _GetDetail():
return getDetail(_that.id);case _Approve():
return approve(_that.id);case _Reject():
return reject(_that.id);case _Taken():
return taken(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getRequests,TResult? Function( int id)?  getDetail,TResult? Function( int id)?  approve,TResult? Function( int id)?  reject,TResult? Function( int id)?  taken,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetRequests() when getRequests != null:
return getRequests();case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Approve() when approve != null:
return approve(_that.id);case _Reject() when reject != null:
return reject(_that.id);case _Taken() when taken != null:
return taken(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AdminRequestEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminRequestEvent.started()';
}


}




/// @nodoc


class _GetRequests implements AdminRequestEvent {
  const _GetRequests();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRequests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminRequestEvent.getRequests()';
}


}




/// @nodoc


class _GetDetail implements AdminRequestEvent {
  const _GetDetail(this.id);
  

 final  int id;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDetailCopyWith<_GetDetail> get copyWith => __$GetDetailCopyWithImpl<_GetDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminRequestEvent.getDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetDetailCopyWith<$Res> implements $AdminRequestEventCopyWith<$Res> {
  factory _$GetDetailCopyWith(_GetDetail value, $Res Function(_GetDetail) _then) = __$GetDetailCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$GetDetailCopyWithImpl<$Res>
    implements _$GetDetailCopyWith<$Res> {
  __$GetDetailCopyWithImpl(this._self, this._then);

  final _GetDetail _self;
  final $Res Function(_GetDetail) _then;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Approve implements AdminRequestEvent {
  const _Approve(this.id);
  

 final  int id;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApproveCopyWith<_Approve> get copyWith => __$ApproveCopyWithImpl<_Approve>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Approve&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminRequestEvent.approve(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ApproveCopyWith<$Res> implements $AdminRequestEventCopyWith<$Res> {
  factory _$ApproveCopyWith(_Approve value, $Res Function(_Approve) _then) = __$ApproveCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ApproveCopyWithImpl<$Res>
    implements _$ApproveCopyWith<$Res> {
  __$ApproveCopyWithImpl(this._self, this._then);

  final _Approve _self;
  final $Res Function(_Approve) _then;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Approve(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Reject implements AdminRequestEvent {
  const _Reject(this.id);
  

 final  int id;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RejectCopyWith<_Reject> get copyWith => __$RejectCopyWithImpl<_Reject>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reject&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminRequestEvent.reject(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RejectCopyWith<$Res> implements $AdminRequestEventCopyWith<$Res> {
  factory _$RejectCopyWith(_Reject value, $Res Function(_Reject) _then) = __$RejectCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$RejectCopyWithImpl<$Res>
    implements _$RejectCopyWith<$Res> {
  __$RejectCopyWithImpl(this._self, this._then);

  final _Reject _self;
  final $Res Function(_Reject) _then;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Reject(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Taken implements AdminRequestEvent {
  const _Taken(this.id);
  

 final  int id;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TakenCopyWith<_Taken> get copyWith => __$TakenCopyWithImpl<_Taken>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Taken&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminRequestEvent.taken(id: $id)';
}


}

/// @nodoc
abstract mixin class _$TakenCopyWith<$Res> implements $AdminRequestEventCopyWith<$Res> {
  factory _$TakenCopyWith(_Taken value, $Res Function(_Taken) _then) = __$TakenCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$TakenCopyWithImpl<$Res>
    implements _$TakenCopyWith<$Res> {
  __$TakenCopyWithImpl(this._self, this._then);

  final _Taken _self;
  final $Res Function(_Taken) _then;

/// Create a copy of AdminRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Taken(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AdminRequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminRequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminRequestState()';
}


}

/// @nodoc
class $AdminRequestStateCopyWith<$Res>  {
$AdminRequestStateCopyWith(AdminRequestState _, $Res Function(AdminRequestState) __);
}


/// Adds pattern-matching-related methods to [AdminRequestState].
extension AdminRequestStatePatterns on AdminRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _DetailLoaded value)?  detailLoaded,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _DetailLoaded value)  detailLoaded,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _DetailLoaded():
return detailLoaded(_that);case _Success():
return success(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _DetailLoaded value)?  detailLoaded,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<RequestModel> requests)?  loaded,TResult Function( RequestModel request)?  detailLoaded,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.requests);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.request);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<RequestModel> requests)  loaded,required TResult Function( RequestModel request)  detailLoaded,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.requests);case _DetailLoaded():
return detailLoaded(_that.request);case _Success():
return success(_that.message);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<RequestModel> requests)?  loaded,TResult? Function( RequestModel request)?  detailLoaded,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.requests);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.request);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminRequestState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminRequestState.initial()';
}


}




/// @nodoc


class _Loading implements AdminRequestState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminRequestState.loading()';
}


}




/// @nodoc


class _Loaded implements AdminRequestState {
  const _Loaded(final  List<RequestModel> requests): _requests = requests;
  

 final  List<RequestModel> _requests;
 List<RequestModel> get requests {
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requests);
}


/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._requests, _requests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_requests));

@override
String toString() {
  return 'AdminRequestState.loaded(requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $AdminRequestStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<RequestModel> requests
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requests = null,}) {
  return _then(_Loaded(
null == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<RequestModel>,
  ));
}


}

/// @nodoc


class _DetailLoaded implements AdminRequestState {
  const _DetailLoaded(this.request);
  

 final  RequestModel request;

/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailLoadedCopyWith<_DetailLoaded> get copyWith => __$DetailLoadedCopyWithImpl<_DetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoaded&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'AdminRequestState.detailLoaded(request: $request)';
}


}

/// @nodoc
abstract mixin class _$DetailLoadedCopyWith<$Res> implements $AdminRequestStateCopyWith<$Res> {
  factory _$DetailLoadedCopyWith(_DetailLoaded value, $Res Function(_DetailLoaded) _then) = __$DetailLoadedCopyWithImpl;
@useResult
$Res call({
 RequestModel request
});




}
/// @nodoc
class __$DetailLoadedCopyWithImpl<$Res>
    implements _$DetailLoadedCopyWith<$Res> {
  __$DetailLoadedCopyWithImpl(this._self, this._then);

  final _DetailLoaded _self;
  final $Res Function(_DetailLoaded) _then;

/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(_DetailLoaded(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as RequestModel,
  ));
}


}

/// @nodoc


class _Success implements AdminRequestState {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AdminRequestState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AdminRequestStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements AdminRequestState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AdminRequestState
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
  return 'AdminRequestState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AdminRequestStateCopyWith<$Res> {
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

/// Create a copy of AdminRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
