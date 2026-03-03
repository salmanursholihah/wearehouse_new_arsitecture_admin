// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminUserEvent()';
}


}

/// @nodoc
class $AdminUserEventCopyWith<$Res>  {
$AdminUserEventCopyWith(AdminUserEvent _, $Res Function(AdminUserEvent) __);
}


/// Adds pattern-matching-related methods to [AdminUserEvent].
extension AdminUserEventPatterns on AdminUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetList value)?  getList,TResult Function( _GetDetail value)?  getDetail,TResult Function( _Update value)?  update,TResult Function( _Activate value)?  activate,TResult Function( _Deactivate value)?  deactivate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetList() when getList != null:
return getList(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Update() when update != null:
return update(_that);case _Activate() when activate != null:
return activate(_that);case _Deactivate() when deactivate != null:
return deactivate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetList value)  getList,required TResult Function( _GetDetail value)  getDetail,required TResult Function( _Update value)  update,required TResult Function( _Activate value)  activate,required TResult Function( _Deactivate value)  deactivate,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetList():
return getList(_that);case _GetDetail():
return getDetail(_that);case _Update():
return update(_that);case _Activate():
return activate(_that);case _Deactivate():
return deactivate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetList value)?  getList,TResult? Function( _GetDetail value)?  getDetail,TResult? Function( _Update value)?  update,TResult? Function( _Activate value)?  activate,TResult? Function( _Deactivate value)?  deactivate,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetList() when getList != null:
return getList(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Update() when update != null:
return update(_that);case _Activate() when activate != null:
return activate(_that);case _Deactivate() when deactivate != null:
return deactivate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int page,  int perPage,  bool isRefresh)?  getList,TResult Function( int id)?  getDetail,TResult Function( int id,  AdminUserUpdateRequestModel request)?  update,TResult Function( int id)?  activate,TResult Function( int id)?  deactivate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetList() when getList != null:
return getList(_that.page,_that.perPage,_that.isRefresh);case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Update() when update != null:
return update(_that.id,_that.request);case _Activate() when activate != null:
return activate(_that.id);case _Deactivate() when deactivate != null:
return deactivate(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int page,  int perPage,  bool isRefresh)  getList,required TResult Function( int id)  getDetail,required TResult Function( int id,  AdminUserUpdateRequestModel request)  update,required TResult Function( int id)  activate,required TResult Function( int id)  deactivate,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetList():
return getList(_that.page,_that.perPage,_that.isRefresh);case _GetDetail():
return getDetail(_that.id);case _Update():
return update(_that.id,_that.request);case _Activate():
return activate(_that.id);case _Deactivate():
return deactivate(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int page,  int perPage,  bool isRefresh)?  getList,TResult? Function( int id)?  getDetail,TResult? Function( int id,  AdminUserUpdateRequestModel request)?  update,TResult? Function( int id)?  activate,TResult? Function( int id)?  deactivate,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetList() when getList != null:
return getList(_that.page,_that.perPage,_that.isRefresh);case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Update() when update != null:
return update(_that.id,_that.request);case _Activate() when activate != null:
return activate(_that.id);case _Deactivate() when deactivate != null:
return deactivate(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AdminUserEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminUserEvent.started()';
}


}




/// @nodoc


class _GetList implements AdminUserEvent {
  const _GetList({this.page = 1, this.perPage = 10, this.isRefresh = false});
  

@JsonKey() final  int page;
@JsonKey() final  int perPage;
@JsonKey() final  bool isRefresh;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetListCopyWith<_GetList> get copyWith => __$GetListCopyWithImpl<_GetList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetList&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage,isRefresh);

@override
String toString() {
  return 'AdminUserEvent.getList(page: $page, perPage: $perPage, isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class _$GetListCopyWith<$Res> implements $AdminUserEventCopyWith<$Res> {
  factory _$GetListCopyWith(_GetList value, $Res Function(_GetList) _then) = __$GetListCopyWithImpl;
@useResult
$Res call({
 int page, int perPage, bool isRefresh
});




}
/// @nodoc
class __$GetListCopyWithImpl<$Res>
    implements _$GetListCopyWith<$Res> {
  __$GetListCopyWithImpl(this._self, this._then);

  final _GetList _self;
  final $Res Function(_GetList) _then;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? isRefresh = null,}) {
  return _then(_GetList(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GetDetail implements AdminUserEvent {
  const _GetDetail(this.id);
  

 final  int id;

/// Create a copy of AdminUserEvent
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
  return 'AdminUserEvent.getDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetDetailCopyWith<$Res> implements $AdminUserEventCopyWith<$Res> {
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

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Update implements AdminUserEvent {
  const _Update(this.id, this.request);
  

 final  int id;
 final  AdminUserUpdateRequestModel request;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCopyWith<_Update> get copyWith => __$UpdateCopyWithImpl<_Update>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update&&(identical(other.id, id) || other.id == id)&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,id,request);

@override
String toString() {
  return 'AdminUserEvent.update(id: $id, request: $request)';
}


}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $AdminUserEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) = __$UpdateCopyWithImpl;
@useResult
$Res call({
 int id, AdminUserUpdateRequestModel request
});




}
/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? request = null,}) {
  return _then(_Update(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as AdminUserUpdateRequestModel,
  ));
}


}

/// @nodoc


class _Activate implements AdminUserEvent {
  const _Activate(this.id);
  

 final  int id;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivateCopyWith<_Activate> get copyWith => __$ActivateCopyWithImpl<_Activate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activate&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminUserEvent.activate(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ActivateCopyWith<$Res> implements $AdminUserEventCopyWith<$Res> {
  factory _$ActivateCopyWith(_Activate value, $Res Function(_Activate) _then) = __$ActivateCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ActivateCopyWithImpl<$Res>
    implements _$ActivateCopyWith<$Res> {
  __$ActivateCopyWithImpl(this._self, this._then);

  final _Activate _self;
  final $Res Function(_Activate) _then;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Activate(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Deactivate implements AdminUserEvent {
  const _Deactivate(this.id);
  

 final  int id;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeactivateCopyWith<_Deactivate> get copyWith => __$DeactivateCopyWithImpl<_Deactivate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deactivate&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminUserEvent.deactivate(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeactivateCopyWith<$Res> implements $AdminUserEventCopyWith<$Res> {
  factory _$DeactivateCopyWith(_Deactivate value, $Res Function(_Deactivate) _then) = __$DeactivateCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeactivateCopyWithImpl<$Res>
    implements _$DeactivateCopyWith<$Res> {
  __$DeactivateCopyWithImpl(this._self, this._then);

  final _Deactivate _self;
  final $Res Function(_Deactivate) _then;

/// Create a copy of AdminUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Deactivate(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AdminUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminUserState()';
}


}

/// @nodoc
class $AdminUserStateCopyWith<$Res>  {
$AdminUserStateCopyWith(AdminUserState _, $Res Function(AdminUserState) __);
}


/// Adds pattern-matching-related methods to [AdminUserState].
extension AdminUserStatePatterns on AdminUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _ListLoaded value)?  listLoaded,TResult Function( _DetailLoaded value)?  detailLoaded,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ListLoaded() when listLoaded != null:
return listLoaded(_that);case _DetailLoaded() when detailLoaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _ListLoaded value)  listLoaded,required TResult Function( _DetailLoaded value)  detailLoaded,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _ListLoaded():
return listLoaded(_that);case _DetailLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _ListLoaded value)?  listLoaded,TResult? Function( _DetailLoaded value)?  detailLoaded,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ListLoaded() when listLoaded != null:
return listLoaded(_that);case _DetailLoaded() when detailLoaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<AdminUserModel> items,  int page,  int perPage,  bool canLoadMore)?  listLoaded,TResult Function( AdminUserModel? user)?  detailLoaded,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.user);case _Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<AdminUserModel> items,  int page,  int perPage,  bool canLoadMore)  listLoaded,required TResult Function( AdminUserModel? user)  detailLoaded,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ListLoaded():
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore);case _DetailLoaded():
return detailLoaded(_that.user);case _Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<AdminUserModel> items,  int page,  int perPage,  bool canLoadMore)?  listLoaded,TResult? Function( AdminUserModel? user)?  detailLoaded,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.user);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminUserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminUserState.initial()';
}


}




/// @nodoc


class _Loading implements AdminUserState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminUserState.loading()';
}


}




/// @nodoc


class _ListLoaded implements AdminUserState {
  const _ListLoaded({required final  List<AdminUserModel> items, required this.page, required this.perPage, required this.canLoadMore}): _items = items;
  

 final  List<AdminUserModel> _items;
 List<AdminUserModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;

/// Create a copy of AdminUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListLoadedCopyWith<_ListLoaded> get copyWith => __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListLoaded&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,canLoadMore);

@override
String toString() {
  return 'AdminUserState.listLoaded(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore)';
}


}

/// @nodoc
abstract mixin class _$ListLoadedCopyWith<$Res> implements $AdminUserStateCopyWith<$Res> {
  factory _$ListLoadedCopyWith(_ListLoaded value, $Res Function(_ListLoaded) _then) = __$ListLoadedCopyWithImpl;
@useResult
$Res call({
 List<AdminUserModel> items, int page, int perPage, bool canLoadMore
});




}
/// @nodoc
class __$ListLoadedCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(this._self, this._then);

  final _ListLoaded _self;
  final $Res Function(_ListLoaded) _then;

/// Create a copy of AdminUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,}) {
  return _then(_ListLoaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdminUserModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _DetailLoaded implements AdminUserState {
  const _DetailLoaded(this.user);
  

 final  AdminUserModel? user;

/// Create a copy of AdminUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailLoadedCopyWith<_DetailLoaded> get copyWith => __$DetailLoadedCopyWithImpl<_DetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoaded&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AdminUserState.detailLoaded(user: $user)';
}


}

/// @nodoc
abstract mixin class _$DetailLoadedCopyWith<$Res> implements $AdminUserStateCopyWith<$Res> {
  factory _$DetailLoadedCopyWith(_DetailLoaded value, $Res Function(_DetailLoaded) _then) = __$DetailLoadedCopyWithImpl;
@useResult
$Res call({
 AdminUserModel? user
});




}
/// @nodoc
class __$DetailLoadedCopyWithImpl<$Res>
    implements _$DetailLoadedCopyWith<$Res> {
  __$DetailLoadedCopyWithImpl(this._self, this._then);

  final _DetailLoaded _self;
  final $Res Function(_DetailLoaded) _then;

/// Create a copy of AdminUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_DetailLoaded(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AdminUserModel?,
  ));
}


}

/// @nodoc


class _Success implements AdminUserState {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of AdminUserState
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
  return 'AdminUserState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AdminUserStateCopyWith<$Res> {
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

/// Create a copy of AdminUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements AdminUserState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AdminUserState
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
  return 'AdminUserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AdminUserStateCopyWith<$Res> {
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

/// Create a copy of AdminUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
