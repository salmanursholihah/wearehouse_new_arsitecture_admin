// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StockEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockEvent()';
}


}

/// @nodoc
class $StockEventCopyWith<$Res>  {
$StockEventCopyWith(StockEvent _, $Res Function(StockEvent) __);
}


/// Adds pattern-matching-related methods to [StockEvent].
extension StockEventPatterns on StockEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetLogs value)?  getLogs,TResult Function( _LoadMore value)?  loadMore,TResult Function( _ShowLog value)?  showLog,TResult Function( _StockIn value)?  stockIn,TResult Function( _StockOut value)?  stockOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetLogs() when getLogs != null:
return getLogs(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _ShowLog() when showLog != null:
return showLog(_that);case _StockIn() when stockIn != null:
return stockIn(_that);case _StockOut() when stockOut != null:
return stockOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetLogs value)  getLogs,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _ShowLog value)  showLog,required TResult Function( _StockIn value)  stockIn,required TResult Function( _StockOut value)  stockOut,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetLogs():
return getLogs(_that);case _LoadMore():
return loadMore(_that);case _ShowLog():
return showLog(_that);case _StockIn():
return stockIn(_that);case _StockOut():
return stockOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetLogs value)?  getLogs,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _ShowLog value)?  showLog,TResult? Function( _StockIn value)?  stockIn,TResult? Function( _StockOut value)?  stockOut,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetLogs() when getLogs != null:
return getLogs(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _ShowLog() when showLog != null:
return showLog(_that);case _StockIn() when stockIn != null:
return stockIn(_that);case _StockOut() when stockOut != null:
return stockOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? type,  String? search,  int? productId,  int perPage)?  getLogs,TResult Function()?  loadMore,TResult Function( int id)?  showLog,TResult Function( StockInRequestModel request)?  stockIn,TResult Function( StockOutRequestModel request)?  stockOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetLogs() when getLogs != null:
return getLogs(_that.type,_that.search,_that.productId,_that.perPage);case _LoadMore() when loadMore != null:
return loadMore();case _ShowLog() when showLog != null:
return showLog(_that.id);case _StockIn() when stockIn != null:
return stockIn(_that.request);case _StockOut() when stockOut != null:
return stockOut(_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? type,  String? search,  int? productId,  int perPage)  getLogs,required TResult Function()  loadMore,required TResult Function( int id)  showLog,required TResult Function( StockInRequestModel request)  stockIn,required TResult Function( StockOutRequestModel request)  stockOut,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetLogs():
return getLogs(_that.type,_that.search,_that.productId,_that.perPage);case _LoadMore():
return loadMore();case _ShowLog():
return showLog(_that.id);case _StockIn():
return stockIn(_that.request);case _StockOut():
return stockOut(_that.request);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? type,  String? search,  int? productId,  int perPage)?  getLogs,TResult? Function()?  loadMore,TResult? Function( int id)?  showLog,TResult? Function( StockInRequestModel request)?  stockIn,TResult? Function( StockOutRequestModel request)?  stockOut,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetLogs() when getLogs != null:
return getLogs(_that.type,_that.search,_that.productId,_that.perPage);case _LoadMore() when loadMore != null:
return loadMore();case _ShowLog() when showLog != null:
return showLog(_that.id);case _StockIn() when stockIn != null:
return stockIn(_that.request);case _StockOut() when stockOut != null:
return stockOut(_that.request);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements StockEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockEvent.started()';
}


}




/// @nodoc


class _GetLogs implements StockEvent {
  const _GetLogs({this.type, this.search, this.productId, this.perPage = 10});
  

 final  String? type;
// in|out|null
 final  String? search;
 final  int? productId;
@JsonKey() final  int perPage;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetLogsCopyWith<_GetLogs> get copyWith => __$GetLogsCopyWithImpl<_GetLogs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLogs&&(identical(other.type, type) || other.type == type)&&(identical(other.search, search) || other.search == search)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,type,search,productId,perPage);

@override
String toString() {
  return 'StockEvent.getLogs(type: $type, search: $search, productId: $productId, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetLogsCopyWith<$Res> implements $StockEventCopyWith<$Res> {
  factory _$GetLogsCopyWith(_GetLogs value, $Res Function(_GetLogs) _then) = __$GetLogsCopyWithImpl;
@useResult
$Res call({
 String? type, String? search, int? productId, int perPage
});




}
/// @nodoc
class __$GetLogsCopyWithImpl<$Res>
    implements _$GetLogsCopyWith<$Res> {
  __$GetLogsCopyWithImpl(this._self, this._then);

  final _GetLogs _self;
  final $Res Function(_GetLogs) _then;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? search = freezed,Object? productId = freezed,Object? perPage = null,}) {
  return _then(_GetLogs(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMore implements StockEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockEvent.loadMore()';
}


}




/// @nodoc


class _ShowLog implements StockEvent {
  const _ShowLog(this.id);
  

 final  int id;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowLogCopyWith<_ShowLog> get copyWith => __$ShowLogCopyWithImpl<_ShowLog>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowLog&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'StockEvent.showLog(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ShowLogCopyWith<$Res> implements $StockEventCopyWith<$Res> {
  factory _$ShowLogCopyWith(_ShowLog value, $Res Function(_ShowLog) _then) = __$ShowLogCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ShowLogCopyWithImpl<$Res>
    implements _$ShowLogCopyWith<$Res> {
  __$ShowLogCopyWithImpl(this._self, this._then);

  final _ShowLog _self;
  final $Res Function(_ShowLog) _then;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_ShowLog(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _StockIn implements StockEvent {
  const _StockIn(this.request);
  

 final  StockInRequestModel request;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockInCopyWith<_StockIn> get copyWith => __$StockInCopyWithImpl<_StockIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockIn&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'StockEvent.stockIn(request: $request)';
}


}

/// @nodoc
abstract mixin class _$StockInCopyWith<$Res> implements $StockEventCopyWith<$Res> {
  factory _$StockInCopyWith(_StockIn value, $Res Function(_StockIn) _then) = __$StockInCopyWithImpl;
@useResult
$Res call({
 StockInRequestModel request
});




}
/// @nodoc
class __$StockInCopyWithImpl<$Res>
    implements _$StockInCopyWith<$Res> {
  __$StockInCopyWithImpl(this._self, this._then);

  final _StockIn _self;
  final $Res Function(_StockIn) _then;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(_StockIn(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as StockInRequestModel,
  ));
}


}

/// @nodoc


class _StockOut implements StockEvent {
  const _StockOut(this.request);
  

 final  StockOutRequestModel request;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockOutCopyWith<_StockOut> get copyWith => __$StockOutCopyWithImpl<_StockOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockOut&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'StockEvent.stockOut(request: $request)';
}


}

/// @nodoc
abstract mixin class _$StockOutCopyWith<$Res> implements $StockEventCopyWith<$Res> {
  factory _$StockOutCopyWith(_StockOut value, $Res Function(_StockOut) _then) = __$StockOutCopyWithImpl;
@useResult
$Res call({
 StockOutRequestModel request
});




}
/// @nodoc
class __$StockOutCopyWithImpl<$Res>
    implements _$StockOutCopyWith<$Res> {
  __$StockOutCopyWithImpl(this._self, this._then);

  final _StockOut _self;
  final $Res Function(_StockOut) _then;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(_StockOut(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as StockOutRequestModel,
  ));
}


}

/// @nodoc
mixin _$StockState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState()';
}


}

/// @nodoc
class $StockStateCopyWith<$Res>  {
$StockStateCopyWith(StockState _, $Res Function(StockState) __);
}


/// Adds pattern-matching-related methods to [StockState].
extension StockStatePatterns on StockState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _ListLoaded value)?  listLoaded,TResult Function( _LoadingMore value)?  loadingMore,TResult Function( _DetailLoading value)?  detailLoading,TResult Function( _DetailLoaded value)?  detailLoaded,TResult Function( _ActionLoading value)?  actionLoading,TResult Function( _ActionSuccess value)?  actionSuccess,TResult Function( _ActionError value)?  actionError,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ListLoaded() when listLoaded != null:
return listLoaded(_that);case _LoadingMore() when loadingMore != null:
return loadingMore(_that);case _DetailLoading() when detailLoading != null:
return detailLoading(_that);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _ListLoaded value)  listLoaded,required TResult Function( _LoadingMore value)  loadingMore,required TResult Function( _DetailLoading value)  detailLoading,required TResult Function( _DetailLoaded value)  detailLoaded,required TResult Function( _ActionLoading value)  actionLoading,required TResult Function( _ActionSuccess value)  actionSuccess,required TResult Function( _ActionError value)  actionError,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _ListLoaded():
return listLoaded(_that);case _LoadingMore():
return loadingMore(_that);case _DetailLoading():
return detailLoading(_that);case _DetailLoaded():
return detailLoaded(_that);case _ActionLoading():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _ListLoaded value)?  listLoaded,TResult? Function( _LoadingMore value)?  loadingMore,TResult? Function( _DetailLoading value)?  detailLoading,TResult? Function( _DetailLoaded value)?  detailLoaded,TResult? Function( _ActionLoading value)?  actionLoading,TResult? Function( _ActionSuccess value)?  actionSuccess,TResult? Function( _ActionError value)?  actionError,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ListLoaded() when listLoaded != null:
return listLoaded(_that);case _LoadingMore() when loadingMore != null:
return loadingMore(_that);case _DetailLoading() when detailLoading != null:
return detailLoading(_that);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<StockLogModel> items,  int page,  int perPage,  bool canLoadMore,  String? type,  String? search,  int? productId)?  listLoaded,TResult Function( List<StockLogModel> items,  int page,  int perPage,  bool canLoadMore,  String? type,  String? search,  int? productId)?  loadingMore,TResult Function()?  detailLoading,TResult Function( StockLogModel? log)?  detailLoaded,TResult Function()?  actionLoading,TResult Function( String message)?  actionSuccess,TResult Function( String message)?  actionError,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.type,_that.search,_that.productId);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.type,_that.search,_that.productId);case _DetailLoading() when detailLoading != null:
return detailLoading();case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.log);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<StockLogModel> items,  int page,  int perPage,  bool canLoadMore,  String? type,  String? search,  int? productId)  listLoaded,required TResult Function( List<StockLogModel> items,  int page,  int perPage,  bool canLoadMore,  String? type,  String? search,  int? productId)  loadingMore,required TResult Function()  detailLoading,required TResult Function( StockLogModel? log)  detailLoaded,required TResult Function()  actionLoading,required TResult Function( String message)  actionSuccess,required TResult Function( String message)  actionError,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ListLoaded():
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.type,_that.search,_that.productId);case _LoadingMore():
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.type,_that.search,_that.productId);case _DetailLoading():
return detailLoading();case _DetailLoaded():
return detailLoaded(_that.log);case _ActionLoading():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<StockLogModel> items,  int page,  int perPage,  bool canLoadMore,  String? type,  String? search,  int? productId)?  listLoaded,TResult? Function( List<StockLogModel> items,  int page,  int perPage,  bool canLoadMore,  String? type,  String? search,  int? productId)?  loadingMore,TResult? Function()?  detailLoading,TResult? Function( StockLogModel? log)?  detailLoaded,TResult? Function()?  actionLoading,TResult? Function( String message)?  actionSuccess,TResult? Function( String message)?  actionError,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.type,_that.search,_that.productId);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.type,_that.search,_that.productId);case _DetailLoading() when detailLoading != null:
return detailLoading();case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.log);case _ActionLoading() when actionLoading != null:
return actionLoading();case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.message);case _ActionError() when actionError != null:
return actionError(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements StockState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState.initial()';
}


}




/// @nodoc


class _Loading implements StockState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState.loading()';
}


}




/// @nodoc


class _ListLoaded implements StockState {
  const _ListLoaded({required final  List<StockLogModel> items, required this.page, required this.perPage, required this.canLoadMore, this.type, this.search, this.productId}): _items = items;
  

 final  List<StockLogModel> _items;
 List<StockLogModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;
 final  String? type;
 final  String? search;
 final  int? productId;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListLoadedCopyWith<_ListLoaded> get copyWith => __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListLoaded&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore)&&(identical(other.type, type) || other.type == type)&&(identical(other.search, search) || other.search == search)&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore,type,search,productId);

@override
String toString() {
  return 'StockState.listLoaded(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore, type: $type, search: $search, productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$ListLoadedCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$ListLoadedCopyWith(_ListLoaded value, $Res Function(_ListLoaded) _then) = __$ListLoadedCopyWithImpl;
@useResult
$Res call({
 List<StockLogModel> items, int page, int perPage, bool canLoadMore, String? type, String? search, int? productId
});




}
/// @nodoc
class __$ListLoadedCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(this._self, this._then);

  final _ListLoaded _self;
  final $Res Function(_ListLoaded) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,Object? type = freezed,Object? search = freezed,Object? productId = freezed,}) {
  return _then(_ListLoaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StockLogModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _LoadingMore implements StockState {
  const _LoadingMore({required final  List<StockLogModel> items, required this.page, required this.perPage, required this.canLoadMore, this.type, this.search, this.productId}): _items = items;
  

 final  List<StockLogModel> _items;
 List<StockLogModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;
 final  String? type;
 final  String? search;
 final  int? productId;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingMoreCopyWith<_LoadingMore> get copyWith => __$LoadingMoreCopyWithImpl<_LoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingMore&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore)&&(identical(other.type, type) || other.type == type)&&(identical(other.search, search) || other.search == search)&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore,type,search,productId);

@override
String toString() {
  return 'StockState.loadingMore(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore, type: $type, search: $search, productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$LoadingMoreCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(_LoadingMore value, $Res Function(_LoadingMore) _then) = __$LoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<StockLogModel> items, int page, int perPage, bool canLoadMore, String? type, String? search, int? productId
});




}
/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(this._self, this._then);

  final _LoadingMore _self;
  final $Res Function(_LoadingMore) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,Object? type = freezed,Object? search = freezed,Object? productId = freezed,}) {
  return _then(_LoadingMore(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StockLogModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _DetailLoading implements StockState {
  const _DetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState.detailLoading()';
}


}




/// @nodoc


class _DetailLoaded implements StockState {
  const _DetailLoaded(this.log);
  

 final  StockLogModel? log;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailLoadedCopyWith<_DetailLoaded> get copyWith => __$DetailLoadedCopyWithImpl<_DetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoaded&&(identical(other.log, log) || other.log == log));
}


@override
int get hashCode => Object.hash(runtimeType,log);

@override
String toString() {
  return 'StockState.detailLoaded(log: $log)';
}


}

/// @nodoc
abstract mixin class _$DetailLoadedCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$DetailLoadedCopyWith(_DetailLoaded value, $Res Function(_DetailLoaded) _then) = __$DetailLoadedCopyWithImpl;
@useResult
$Res call({
 StockLogModel? log
});




}
/// @nodoc
class __$DetailLoadedCopyWithImpl<$Res>
    implements _$DetailLoadedCopyWith<$Res> {
  __$DetailLoadedCopyWithImpl(this._self, this._then);

  final _DetailLoaded _self;
  final $Res Function(_DetailLoaded) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? log = freezed,}) {
  return _then(_DetailLoaded(
freezed == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as StockLogModel?,
  ));
}


}

/// @nodoc


class _ActionLoading implements StockState {
  const _ActionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState.actionLoading()';
}


}




/// @nodoc


class _ActionSuccess implements StockState {
  const _ActionSuccess(this.message);
  

 final  String message;

/// Create a copy of StockState
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
  return 'StockState.actionSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $StockStateCopyWith<$Res> {
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

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ActionError implements StockState {
  const _ActionError(this.message);
  

 final  String message;

/// Create a copy of StockState
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
  return 'StockState.actionError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionErrorCopyWith<$Res> implements $StockStateCopyWith<$Res> {
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

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements StockState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of StockState
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
  return 'StockState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $StockStateCopyWith<$Res> {
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

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
