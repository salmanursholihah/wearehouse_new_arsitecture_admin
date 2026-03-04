// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminProductRequestEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductRequestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestEvent()';
}


}

/// @nodoc
class $AdminProductRequestEventCopyWith<$Res>  {
$AdminProductRequestEventCopyWith(AdminProductRequestEvent _, $Res Function(AdminProductRequestEvent) __);
}


/// Adds pattern-matching-related methods to [AdminProductRequestEvent].
extension AdminProductRequestEventPatterns on AdminProductRequestEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetList value)?  getList,TResult Function( _LoadMore value)?  loadMore,TResult Function( _GetDetail value)?  getDetail,TResult Function( _Approve value)?  approve,TResult Function( _Reject value)?  reject,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetList() when getList != null:
return getList(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Approve() when approve != null:
return approve(_that);case _Reject() when reject != null:
return reject(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetList value)  getList,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _GetDetail value)  getDetail,required TResult Function( _Approve value)  approve,required TResult Function( _Reject value)  reject,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetList():
return getList(_that);case _LoadMore():
return loadMore(_that);case _GetDetail():
return getDetail(_that);case _Approve():
return approve(_that);case _Reject():
return reject(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetList value)?  getList,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _GetDetail value)?  getDetail,TResult? Function( _Approve value)?  approve,TResult? Function( _Reject value)?  reject,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetList() when getList != null:
return getList(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Approve() when approve != null:
return approve(_that);case _Reject() when reject != null:
return reject(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? status,  String? search,  int perPage)?  getList,TResult Function()?  loadMore,TResult Function( int id)?  getDetail,TResult Function( int id)?  approve,TResult Function( int id,  ProductRequestRejectRequestModel request)?  reject,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetList() when getList != null:
return getList(_that.status,_that.search,_that.perPage);case _LoadMore() when loadMore != null:
return loadMore();case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Approve() when approve != null:
return approve(_that.id);case _Reject() when reject != null:
return reject(_that.id,_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? status,  String? search,  int perPage)  getList,required TResult Function()  loadMore,required TResult Function( int id)  getDetail,required TResult Function( int id)  approve,required TResult Function( int id,  ProductRequestRejectRequestModel request)  reject,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetList():
return getList(_that.status,_that.search,_that.perPage);case _LoadMore():
return loadMore();case _GetDetail():
return getDetail(_that.id);case _Approve():
return approve(_that.id);case _Reject():
return reject(_that.id,_that.request);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? status,  String? search,  int perPage)?  getList,TResult? Function()?  loadMore,TResult? Function( int id)?  getDetail,TResult? Function( int id)?  approve,TResult? Function( int id,  ProductRequestRejectRequestModel request)?  reject,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetList() when getList != null:
return getList(_that.status,_that.search,_that.perPage);case _LoadMore() when loadMore != null:
return loadMore();case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Approve() when approve != null:
return approve(_that.id);case _Reject() when reject != null:
return reject(_that.id,_that.request);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AdminProductRequestEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestEvent.started()';
}


}




/// @nodoc


class _GetList implements AdminProductRequestEvent {
  const _GetList({this.status, this.search, this.perPage = 10});
  

 final  String? status;
// pending|approved|rejected
 final  String? search;
@JsonKey() final  int perPage;

/// Create a copy of AdminProductRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetListCopyWith<_GetList> get copyWith => __$GetListCopyWithImpl<_GetList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetList&&(identical(other.status, status) || other.status == status)&&(identical(other.search, search) || other.search == search)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,status,search,perPage);

@override
String toString() {
  return 'AdminProductRequestEvent.getList(status: $status, search: $search, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetListCopyWith<$Res> implements $AdminProductRequestEventCopyWith<$Res> {
  factory _$GetListCopyWith(_GetList value, $Res Function(_GetList) _then) = __$GetListCopyWithImpl;
@useResult
$Res call({
 String? status, String? search, int perPage
});




}
/// @nodoc
class __$GetListCopyWithImpl<$Res>
    implements _$GetListCopyWith<$Res> {
  __$GetListCopyWithImpl(this._self, this._then);

  final _GetList _self;
  final $Res Function(_GetList) _then;

/// Create a copy of AdminProductRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? search = freezed,Object? perPage = null,}) {
  return _then(_GetList(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMore implements AdminProductRequestEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestEvent.loadMore()';
}


}




/// @nodoc


class _GetDetail implements AdminProductRequestEvent {
  const _GetDetail(this.id);
  

 final  int id;

/// Create a copy of AdminProductRequestEvent
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
  return 'AdminProductRequestEvent.getDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetDetailCopyWith<$Res> implements $AdminProductRequestEventCopyWith<$Res> {
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

/// Create a copy of AdminProductRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Approve implements AdminProductRequestEvent {
  const _Approve(this.id);
  

 final  int id;

/// Create a copy of AdminProductRequestEvent
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
  return 'AdminProductRequestEvent.approve(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ApproveCopyWith<$Res> implements $AdminProductRequestEventCopyWith<$Res> {
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

/// Create a copy of AdminProductRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Approve(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Reject implements AdminProductRequestEvent {
  const _Reject({required this.id, required this.request});
  

 final  int id;
 final  ProductRequestRejectRequestModel request;

/// Create a copy of AdminProductRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RejectCopyWith<_Reject> get copyWith => __$RejectCopyWithImpl<_Reject>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reject&&(identical(other.id, id) || other.id == id)&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,id,request);

@override
String toString() {
  return 'AdminProductRequestEvent.reject(id: $id, request: $request)';
}


}

/// @nodoc
abstract mixin class _$RejectCopyWith<$Res> implements $AdminProductRequestEventCopyWith<$Res> {
  factory _$RejectCopyWith(_Reject value, $Res Function(_Reject) _then) = __$RejectCopyWithImpl;
@useResult
$Res call({
 int id, ProductRequestRejectRequestModel request
});




}
/// @nodoc
class __$RejectCopyWithImpl<$Res>
    implements _$RejectCopyWith<$Res> {
  __$RejectCopyWithImpl(this._self, this._then);

  final _Reject _self;
  final $Res Function(_Reject) _then;

/// Create a copy of AdminProductRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? request = null,}) {
  return _then(_Reject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ProductRequestRejectRequestModel,
  ));
}


}

/// @nodoc
mixin _$AdminProductRequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductRequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestState()';
}


}

/// @nodoc
class $AdminProductRequestStateCopyWith<$Res>  {
$AdminProductRequestStateCopyWith(AdminProductRequestState _, $Res Function(AdminProductRequestState) __);
}


/// Adds pattern-matching-related methods to [AdminProductRequestState].
extension AdminProductRequestStatePatterns on AdminProductRequestState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ProductRequestModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  listLoaded,TResult Function( List<ProductRequestModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  loadingMore,TResult Function()?  detailLoading,TResult Function( ProductRequestModel? item)?  detailLoaded,TResult Function()?  actionLoading,TResult Function( String message)?  actionSuccess,TResult Function( String message)?  actionError,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _DetailLoading() when detailLoading != null:
return detailLoading();case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.item);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ProductRequestModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)  listLoaded,required TResult Function( List<ProductRequestModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)  loadingMore,required TResult Function()  detailLoading,required TResult Function( ProductRequestModel? item)  detailLoaded,required TResult Function()  actionLoading,required TResult Function( String message)  actionSuccess,required TResult Function( String message)  actionError,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ListLoaded():
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _LoadingMore():
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _DetailLoading():
return detailLoading();case _DetailLoaded():
return detailLoaded(_that.item);case _ActionLoading():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ProductRequestModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  listLoaded,TResult? Function( List<ProductRequestModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  loadingMore,TResult? Function()?  detailLoading,TResult? Function( ProductRequestModel? item)?  detailLoaded,TResult? Function()?  actionLoading,TResult? Function( String message)?  actionSuccess,TResult? Function( String message)?  actionError,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _DetailLoading() when detailLoading != null:
return detailLoading();case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.item);case _ActionLoading() when actionLoading != null:
return actionLoading();case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.message);case _ActionError() when actionError != null:
return actionError(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminProductRequestState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestState.initial()';
}


}




/// @nodoc


class _Loading implements AdminProductRequestState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestState.loading()';
}


}




/// @nodoc


class _ListLoaded implements AdminProductRequestState {
  const _ListLoaded({required final  List<ProductRequestModel> items, required this.page, required this.perPage, required this.canLoadMore, this.status, this.search}): _items = items;
  

 final  List<ProductRequestModel> _items;
 List<ProductRequestModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;
 final  String? status;
 final  String? search;

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListLoadedCopyWith<_ListLoaded> get copyWith => __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListLoaded&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore)&&(identical(other.status, status) || other.status == status)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore,status,search);

@override
String toString() {
  return 'AdminProductRequestState.listLoaded(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore, status: $status, search: $search)';
}


}

/// @nodoc
abstract mixin class _$ListLoadedCopyWith<$Res> implements $AdminProductRequestStateCopyWith<$Res> {
  factory _$ListLoadedCopyWith(_ListLoaded value, $Res Function(_ListLoaded) _then) = __$ListLoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductRequestModel> items, int page, int perPage, bool canLoadMore, String? status, String? search
});




}
/// @nodoc
class __$ListLoadedCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(this._self, this._then);

  final _ListLoaded _self;
  final $Res Function(_ListLoaded) _then;

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,Object? status = freezed,Object? search = freezed,}) {
  return _then(_ListLoaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductRequestModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadingMore implements AdminProductRequestState {
  const _LoadingMore({required final  List<ProductRequestModel> items, required this.page, required this.perPage, required this.canLoadMore, this.status, this.search}): _items = items;
  

 final  List<ProductRequestModel> _items;
 List<ProductRequestModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;
 final  String? status;
 final  String? search;

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingMoreCopyWith<_LoadingMore> get copyWith => __$LoadingMoreCopyWithImpl<_LoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingMore&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore)&&(identical(other.status, status) || other.status == status)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore,status,search);

@override
String toString() {
  return 'AdminProductRequestState.loadingMore(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore, status: $status, search: $search)';
}


}

/// @nodoc
abstract mixin class _$LoadingMoreCopyWith<$Res> implements $AdminProductRequestStateCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(_LoadingMore value, $Res Function(_LoadingMore) _then) = __$LoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<ProductRequestModel> items, int page, int perPage, bool canLoadMore, String? status, String? search
});




}
/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(this._self, this._then);

  final _LoadingMore _self;
  final $Res Function(_LoadingMore) _then;

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,Object? status = freezed,Object? search = freezed,}) {
  return _then(_LoadingMore(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductRequestModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DetailLoading implements AdminProductRequestState {
  const _DetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestState.detailLoading()';
}


}




/// @nodoc


class _DetailLoaded implements AdminProductRequestState {
  const _DetailLoaded(this.item);
  

 final  ProductRequestModel? item;

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailLoadedCopyWith<_DetailLoaded> get copyWith => __$DetailLoadedCopyWithImpl<_DetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoaded&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'AdminProductRequestState.detailLoaded(item: $item)';
}


}

/// @nodoc
abstract mixin class _$DetailLoadedCopyWith<$Res> implements $AdminProductRequestStateCopyWith<$Res> {
  factory _$DetailLoadedCopyWith(_DetailLoaded value, $Res Function(_DetailLoaded) _then) = __$DetailLoadedCopyWithImpl;
@useResult
$Res call({
 ProductRequestModel? item
});




}
/// @nodoc
class __$DetailLoadedCopyWithImpl<$Res>
    implements _$DetailLoadedCopyWith<$Res> {
  __$DetailLoadedCopyWithImpl(this._self, this._then);

  final _DetailLoaded _self;
  final $Res Function(_DetailLoaded) _then;

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = freezed,}) {
  return _then(_DetailLoaded(
freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ProductRequestModel?,
  ));
}


}

/// @nodoc


class _ActionLoading implements AdminProductRequestState {
  const _ActionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductRequestState.actionLoading()';
}


}




/// @nodoc


class _ActionSuccess implements AdminProductRequestState {
  const _ActionSuccess(this.message);
  

 final  String message;

/// Create a copy of AdminProductRequestState
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
  return 'AdminProductRequestState.actionSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $AdminProductRequestStateCopyWith<$Res> {
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

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ActionError implements AdminProductRequestState {
  const _ActionError(this.message);
  

 final  String message;

/// Create a copy of AdminProductRequestState
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
  return 'AdminProductRequestState.actionError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionErrorCopyWith<$Res> implements $AdminProductRequestStateCopyWith<$Res> {
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

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements AdminProductRequestState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AdminProductRequestState
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
  return 'AdminProductRequestState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AdminProductRequestStateCopyWith<$Res> {
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

/// Create a copy of AdminProductRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
