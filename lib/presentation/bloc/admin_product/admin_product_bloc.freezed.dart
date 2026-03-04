// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductEvent()';
}


}

/// @nodoc
class $AdminProductEventCopyWith<$Res>  {
$AdminProductEventCopyWith(AdminProductEvent _, $Res Function(AdminProductEvent) __);
}


/// Adds pattern-matching-related methods to [AdminProductEvent].
extension AdminProductEventPatterns on AdminProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetList value)?  getList,TResult Function( _LoadMore value)?  loadMore,TResult Function( _GetDetail value)?  getDetail,TResult Function( _Create value)?  create,TResult Function( _Update value)?  update,TResult Function( _Delete value)?  delete,TResult Function( _Approve value)?  approve,TResult Function( _Reject value)?  reject,TResult Function( _GetImages value)?  getImages,TResult Function( _AddImage value)?  addImage,TResult Function( _DeleteImage value)?  deleteImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetList() when getList != null:
return getList(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Create() when create != null:
return create(_that);case _Update() when update != null:
return update(_that);case _Delete() when delete != null:
return delete(_that);case _Approve() when approve != null:
return approve(_that);case _Reject() when reject != null:
return reject(_that);case _GetImages() when getImages != null:
return getImages(_that);case _AddImage() when addImage != null:
return addImage(_that);case _DeleteImage() when deleteImage != null:
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetList value)  getList,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _GetDetail value)  getDetail,required TResult Function( _Create value)  create,required TResult Function( _Update value)  update,required TResult Function( _Delete value)  delete,required TResult Function( _Approve value)  approve,required TResult Function( _Reject value)  reject,required TResult Function( _GetImages value)  getImages,required TResult Function( _AddImage value)  addImage,required TResult Function( _DeleteImage value)  deleteImage,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetList():
return getList(_that);case _LoadMore():
return loadMore(_that);case _GetDetail():
return getDetail(_that);case _Create():
return create(_that);case _Update():
return update(_that);case _Delete():
return delete(_that);case _Approve():
return approve(_that);case _Reject():
return reject(_that);case _GetImages():
return getImages(_that);case _AddImage():
return addImage(_that);case _DeleteImage():
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetList value)?  getList,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _GetDetail value)?  getDetail,TResult? Function( _Create value)?  create,TResult? Function( _Update value)?  update,TResult? Function( _Delete value)?  delete,TResult? Function( _Approve value)?  approve,TResult? Function( _Reject value)?  reject,TResult? Function( _GetImages value)?  getImages,TResult? Function( _AddImage value)?  addImage,TResult? Function( _DeleteImage value)?  deleteImage,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetList() when getList != null:
return getList(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _GetDetail() when getDetail != null:
return getDetail(_that);case _Create() when create != null:
return create(_that);case _Update() when update != null:
return update(_that);case _Delete() when delete != null:
return delete(_that);case _Approve() when approve != null:
return approve(_that);case _Reject() when reject != null:
return reject(_that);case _GetImages() when getImages != null:
return getImages(_that);case _AddImage() when addImage != null:
return addImage(_that);case _DeleteImage() when deleteImage != null:
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? status,  String? search,  int perPage)?  getList,TResult Function()?  loadMore,TResult Function( int id)?  getDetail,TResult Function( ProductCreateRequestModel request)?  create,TResult Function( int id,  ProductUpdateRequestModel request)?  update,TResult Function( int id)?  delete,TResult Function( int id)?  approve,TResult Function( int id)?  reject,TResult Function( int productId)?  getImages,TResult Function( int productId,  XFile image)?  addImage,TResult Function( int imageId)?  deleteImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetList() when getList != null:
return getList(_that.status,_that.search,_that.perPage);case _LoadMore() when loadMore != null:
return loadMore();case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Create() when create != null:
return create(_that.request);case _Update() when update != null:
return update(_that.id,_that.request);case _Delete() when delete != null:
return delete(_that.id);case _Approve() when approve != null:
return approve(_that.id);case _Reject() when reject != null:
return reject(_that.id);case _GetImages() when getImages != null:
return getImages(_that.productId);case _AddImage() when addImage != null:
return addImage(_that.productId,_that.image);case _DeleteImage() when deleteImage != null:
return deleteImage(_that.imageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? status,  String? search,  int perPage)  getList,required TResult Function()  loadMore,required TResult Function( int id)  getDetail,required TResult Function( ProductCreateRequestModel request)  create,required TResult Function( int id,  ProductUpdateRequestModel request)  update,required TResult Function( int id)  delete,required TResult Function( int id)  approve,required TResult Function( int id)  reject,required TResult Function( int productId)  getImages,required TResult Function( int productId,  XFile image)  addImage,required TResult Function( int imageId)  deleteImage,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetList():
return getList(_that.status,_that.search,_that.perPage);case _LoadMore():
return loadMore();case _GetDetail():
return getDetail(_that.id);case _Create():
return create(_that.request);case _Update():
return update(_that.id,_that.request);case _Delete():
return delete(_that.id);case _Approve():
return approve(_that.id);case _Reject():
return reject(_that.id);case _GetImages():
return getImages(_that.productId);case _AddImage():
return addImage(_that.productId,_that.image);case _DeleteImage():
return deleteImage(_that.imageId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? status,  String? search,  int perPage)?  getList,TResult? Function()?  loadMore,TResult? Function( int id)?  getDetail,TResult? Function( ProductCreateRequestModel request)?  create,TResult? Function( int id,  ProductUpdateRequestModel request)?  update,TResult? Function( int id)?  delete,TResult? Function( int id)?  approve,TResult? Function( int id)?  reject,TResult? Function( int productId)?  getImages,TResult? Function( int productId,  XFile image)?  addImage,TResult? Function( int imageId)?  deleteImage,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetList() when getList != null:
return getList(_that.status,_that.search,_that.perPage);case _LoadMore() when loadMore != null:
return loadMore();case _GetDetail() when getDetail != null:
return getDetail(_that.id);case _Create() when create != null:
return create(_that.request);case _Update() when update != null:
return update(_that.id,_that.request);case _Delete() when delete != null:
return delete(_that.id);case _Approve() when approve != null:
return approve(_that.id);case _Reject() when reject != null:
return reject(_that.id);case _GetImages() when getImages != null:
return getImages(_that.productId);case _AddImage() when addImage != null:
return addImage(_that.productId,_that.image);case _DeleteImage() when deleteImage != null:
return deleteImage(_that.imageId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AdminProductEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductEvent.started()';
}


}




/// @nodoc


class _GetList implements AdminProductEvent {
  const _GetList({this.status, this.search, this.perPage = 10});
  

 final  String? status;
// pending|approved|rejected
 final  String? search;
@JsonKey() final  int perPage;

/// Create a copy of AdminProductEvent
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
  return 'AdminProductEvent.getList(status: $status, search: $search, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetListCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
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

/// Create a copy of AdminProductEvent
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


class _LoadMore implements AdminProductEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductEvent.loadMore()';
}


}




/// @nodoc


class _GetDetail implements AdminProductEvent {
  const _GetDetail(this.id);
  

 final  int id;

/// Create a copy of AdminProductEvent
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
  return 'AdminProductEvent.getDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetDetailCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
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

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Create implements AdminProductEvent {
  const _Create(this.request);
  

 final  ProductCreateRequestModel request;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCopyWith<_Create> get copyWith => __$CreateCopyWithImpl<_Create>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Create&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'AdminProductEvent.create(request: $request)';
}


}

/// @nodoc
abstract mixin class _$CreateCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) _then) = __$CreateCopyWithImpl;
@useResult
$Res call({
 ProductCreateRequestModel request
});




}
/// @nodoc
class __$CreateCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(this._self, this._then);

  final _Create _self;
  final $Res Function(_Create) _then;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(_Create(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ProductCreateRequestModel,
  ));
}


}

/// @nodoc


class _Update implements AdminProductEvent {
  const _Update({required this.id, required this.request});
  

 final  int id;
 final  ProductUpdateRequestModel request;

/// Create a copy of AdminProductEvent
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
  return 'AdminProductEvent.update(id: $id, request: $request)';
}


}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) = __$UpdateCopyWithImpl;
@useResult
$Res call({
 int id, ProductUpdateRequestModel request
});




}
/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? request = null,}) {
  return _then(_Update(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ProductUpdateRequestModel,
  ));
}


}

/// @nodoc


class _Delete implements AdminProductEvent {
  const _Delete(this.id);
  

 final  int id;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCopyWith<_Delete> get copyWith => __$DeleteCopyWithImpl<_Delete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Delete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AdminProductEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) _then) = __$DeleteCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(this._self, this._then);

  final _Delete _self;
  final $Res Function(_Delete) _then;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Delete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Approve implements AdminProductEvent {
  const _Approve(this.id);
  

 final  int id;

/// Create a copy of AdminProductEvent
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
  return 'AdminProductEvent.approve(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ApproveCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
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

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Approve(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Reject implements AdminProductEvent {
  const _Reject(this.id);
  

 final  int id;

/// Create a copy of AdminProductEvent
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
  return 'AdminProductEvent.reject(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RejectCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
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

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Reject(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetImages implements AdminProductEvent {
  const _GetImages(this.productId);
  

 final  int productId;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetImagesCopyWith<_GetImages> get copyWith => __$GetImagesCopyWithImpl<_GetImages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetImages&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'AdminProductEvent.getImages(productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$GetImagesCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
  factory _$GetImagesCopyWith(_GetImages value, $Res Function(_GetImages) _then) = __$GetImagesCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class __$GetImagesCopyWithImpl<$Res>
    implements _$GetImagesCopyWith<$Res> {
  __$GetImagesCopyWithImpl(this._self, this._then);

  final _GetImages _self;
  final $Res Function(_GetImages) _then;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(_GetImages(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddImage implements AdminProductEvent {
  const _AddImage({required this.productId, required this.image});
  

 final  int productId;
 final  XFile image;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddImageCopyWith<_AddImage> get copyWith => __$AddImageCopyWithImpl<_AddImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddImage&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,productId,image);

@override
String toString() {
  return 'AdminProductEvent.addImage(productId: $productId, image: $image)';
}


}

/// @nodoc
abstract mixin class _$AddImageCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
  factory _$AddImageCopyWith(_AddImage value, $Res Function(_AddImage) _then) = __$AddImageCopyWithImpl;
@useResult
$Res call({
 int productId, XFile image
});




}
/// @nodoc
class __$AddImageCopyWithImpl<$Res>
    implements _$AddImageCopyWith<$Res> {
  __$AddImageCopyWithImpl(this._self, this._then);

  final _AddImage _self;
  final $Res Function(_AddImage) _then;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? image = null,}) {
  return _then(_AddImage(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile,
  ));
}


}

/// @nodoc


class _DeleteImage implements AdminProductEvent {
  const _DeleteImage(this.imageId);
  

 final  int imageId;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteImageCopyWith<_DeleteImage> get copyWith => __$DeleteImageCopyWithImpl<_DeleteImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteImage&&(identical(other.imageId, imageId) || other.imageId == imageId));
}


@override
int get hashCode => Object.hash(runtimeType,imageId);

@override
String toString() {
  return 'AdminProductEvent.deleteImage(imageId: $imageId)';
}


}

/// @nodoc
abstract mixin class _$DeleteImageCopyWith<$Res> implements $AdminProductEventCopyWith<$Res> {
  factory _$DeleteImageCopyWith(_DeleteImage value, $Res Function(_DeleteImage) _then) = __$DeleteImageCopyWithImpl;
@useResult
$Res call({
 int imageId
});




}
/// @nodoc
class __$DeleteImageCopyWithImpl<$Res>
    implements _$DeleteImageCopyWith<$Res> {
  __$DeleteImageCopyWithImpl(this._self, this._then);

  final _DeleteImage _self;
  final $Res Function(_DeleteImage) _then;

/// Create a copy of AdminProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imageId = null,}) {
  return _then(_DeleteImage(
null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AdminProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState()';
}


}

/// @nodoc
class $AdminProductStateCopyWith<$Res>  {
$AdminProductStateCopyWith(AdminProductState _, $Res Function(AdminProductState) __);
}


/// Adds pattern-matching-related methods to [AdminProductState].
extension AdminProductStatePatterns on AdminProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _ListLoaded value)?  listLoaded,TResult Function( _LoadingMore value)?  loadingMore,TResult Function( _DetailLoading value)?  detailLoading,TResult Function( _DetailLoaded value)?  detailLoaded,TResult Function( _ImagesLoading value)?  imagesLoading,TResult Function( _ImagesLoaded value)?  imagesLoaded,TResult Function( _ActionLoading value)?  actionLoading,TResult Function( _ActionSuccess value)?  actionSuccess,TResult Function( _ActionError value)?  actionError,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ListLoaded() when listLoaded != null:
return listLoaded(_that);case _LoadingMore() when loadingMore != null:
return loadingMore(_that);case _DetailLoading() when detailLoading != null:
return detailLoading(_that);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that);case _ImagesLoading() when imagesLoading != null:
return imagesLoading(_that);case _ImagesLoaded() when imagesLoaded != null:
return imagesLoaded(_that);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _ListLoaded value)  listLoaded,required TResult Function( _LoadingMore value)  loadingMore,required TResult Function( _DetailLoading value)  detailLoading,required TResult Function( _DetailLoaded value)  detailLoaded,required TResult Function( _ImagesLoading value)  imagesLoading,required TResult Function( _ImagesLoaded value)  imagesLoaded,required TResult Function( _ActionLoading value)  actionLoading,required TResult Function( _ActionSuccess value)  actionSuccess,required TResult Function( _ActionError value)  actionError,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _ListLoaded():
return listLoaded(_that);case _LoadingMore():
return loadingMore(_that);case _DetailLoading():
return detailLoading(_that);case _DetailLoaded():
return detailLoaded(_that);case _ImagesLoading():
return imagesLoading(_that);case _ImagesLoaded():
return imagesLoaded(_that);case _ActionLoading():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _ListLoaded value)?  listLoaded,TResult? Function( _LoadingMore value)?  loadingMore,TResult? Function( _DetailLoading value)?  detailLoading,TResult? Function( _DetailLoaded value)?  detailLoaded,TResult? Function( _ImagesLoading value)?  imagesLoading,TResult? Function( _ImagesLoaded value)?  imagesLoaded,TResult? Function( _ActionLoading value)?  actionLoading,TResult? Function( _ActionSuccess value)?  actionSuccess,TResult? Function( _ActionError value)?  actionError,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ListLoaded() when listLoaded != null:
return listLoaded(_that);case _LoadingMore() when loadingMore != null:
return loadingMore(_that);case _DetailLoading() when detailLoading != null:
return detailLoading(_that);case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that);case _ImagesLoading() when imagesLoading != null:
return imagesLoading(_that);case _ImagesLoaded() when imagesLoaded != null:
return imagesLoaded(_that);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<AdminProductModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  listLoaded,TResult Function( List<AdminProductModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  loadingMore,TResult Function()?  detailLoading,TResult Function( AdminProductModel? product)?  detailLoaded,TResult Function()?  imagesLoading,TResult Function( List<ProductImageModel> images)?  imagesLoaded,TResult Function()?  actionLoading,TResult Function( String message)?  actionSuccess,TResult Function( String message)?  actionError,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _DetailLoading() when detailLoading != null:
return detailLoading();case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.product);case _ImagesLoading() when imagesLoading != null:
return imagesLoading();case _ImagesLoaded() when imagesLoaded != null:
return imagesLoaded(_that.images);case _ActionLoading() when actionLoading != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<AdminProductModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)  listLoaded,required TResult Function( List<AdminProductModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)  loadingMore,required TResult Function()  detailLoading,required TResult Function( AdminProductModel? product)  detailLoaded,required TResult Function()  imagesLoading,required TResult Function( List<ProductImageModel> images)  imagesLoaded,required TResult Function()  actionLoading,required TResult Function( String message)  actionSuccess,required TResult Function( String message)  actionError,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ListLoaded():
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _LoadingMore():
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _DetailLoading():
return detailLoading();case _DetailLoaded():
return detailLoaded(_that.product);case _ImagesLoading():
return imagesLoading();case _ImagesLoaded():
return imagesLoaded(_that.images);case _ActionLoading():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<AdminProductModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  listLoaded,TResult? Function( List<AdminProductModel> items,  int page,  int perPage,  bool canLoadMore,  String? status,  String? search)?  loadingMore,TResult? Function()?  detailLoading,TResult? Function( AdminProductModel? product)?  detailLoaded,TResult? Function()?  imagesLoading,TResult? Function( List<ProductImageModel> images)?  imagesLoaded,TResult? Function()?  actionLoading,TResult? Function( String message)?  actionSuccess,TResult? Function( String message)?  actionError,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ListLoaded() when listLoaded != null:
return listLoaded(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.items,_that.page,_that.perPage,_that.canLoadMore,_that.status,_that.search);case _DetailLoading() when detailLoading != null:
return detailLoading();case _DetailLoaded() when detailLoaded != null:
return detailLoaded(_that.product);case _ImagesLoading() when imagesLoading != null:
return imagesLoading();case _ImagesLoaded() when imagesLoaded != null:
return imagesLoaded(_that.images);case _ActionLoading() when actionLoading != null:
return actionLoading();case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.message);case _ActionError() when actionError != null:
return actionError(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminProductState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.initial()';
}


}




/// @nodoc


class _Loading implements AdminProductState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.loading()';
}


}




/// @nodoc


class _ListLoaded implements AdminProductState {
  const _ListLoaded({required final  List<AdminProductModel> items, required this.page, required this.perPage, required this.canLoadMore, this.status, this.search}): _items = items;
  

 final  List<AdminProductModel> _items;
 List<AdminProductModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;
 final  String? status;
 final  String? search;

/// Create a copy of AdminProductState
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
  return 'AdminProductState.listLoaded(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore, status: $status, search: $search)';
}


}

/// @nodoc
abstract mixin class _$ListLoadedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$ListLoadedCopyWith(_ListLoaded value, $Res Function(_ListLoaded) _then) = __$ListLoadedCopyWithImpl;
@useResult
$Res call({
 List<AdminProductModel> items, int page, int perPage, bool canLoadMore, String? status, String? search
});




}
/// @nodoc
class __$ListLoadedCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(this._self, this._then);

  final _ListLoaded _self;
  final $Res Function(_ListLoaded) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,Object? status = freezed,Object? search = freezed,}) {
  return _then(_ListLoaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdminProductModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadingMore implements AdminProductState {
  const _LoadingMore({required final  List<AdminProductModel> items, required this.page, required this.perPage, required this.canLoadMore, this.status, this.search}): _items = items;
  

 final  List<AdminProductModel> _items;
 List<AdminProductModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int page;
 final  int perPage;
 final  bool canLoadMore;
 final  String? status;
 final  String? search;

/// Create a copy of AdminProductState
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
  return 'AdminProductState.loadingMore(items: $items, page: $page, perPage: $perPage, canLoadMore: $canLoadMore, status: $status, search: $search)';
}


}

/// @nodoc
abstract mixin class _$LoadingMoreCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(_LoadingMore value, $Res Function(_LoadingMore) _then) = __$LoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<AdminProductModel> items, int page, int perPage, bool canLoadMore, String? status, String? search
});




}
/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(this._self, this._then);

  final _LoadingMore _self;
  final $Res Function(_LoadingMore) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? canLoadMore = null,Object? status = freezed,Object? search = freezed,}) {
  return _then(_LoadingMore(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdminProductModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DetailLoading implements AdminProductState {
  const _DetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.detailLoading()';
}


}




/// @nodoc


class _DetailLoaded implements AdminProductState {
  const _DetailLoaded(this.product);
  

 final  AdminProductModel? product;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailLoadedCopyWith<_DetailLoaded> get copyWith => __$DetailLoadedCopyWithImpl<_DetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailLoaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'AdminProductState.detailLoaded(product: $product)';
}


}

/// @nodoc
abstract mixin class _$DetailLoadedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$DetailLoadedCopyWith(_DetailLoaded value, $Res Function(_DetailLoaded) _then) = __$DetailLoadedCopyWithImpl;
@useResult
$Res call({
 AdminProductModel? product
});




}
/// @nodoc
class __$DetailLoadedCopyWithImpl<$Res>
    implements _$DetailLoadedCopyWith<$Res> {
  __$DetailLoadedCopyWithImpl(this._self, this._then);

  final _DetailLoaded _self;
  final $Res Function(_DetailLoaded) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = freezed,}) {
  return _then(_DetailLoaded(
freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as AdminProductModel?,
  ));
}


}

/// @nodoc


class _ImagesLoading implements AdminProductState {
  const _ImagesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.imagesLoading()';
}


}




/// @nodoc


class _ImagesLoaded implements AdminProductState {
  const _ImagesLoaded(final  List<ProductImageModel> images): _images = images;
  

 final  List<ProductImageModel> _images;
 List<ProductImageModel> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagesLoadedCopyWith<_ImagesLoaded> get copyWith => __$ImagesLoadedCopyWithImpl<_ImagesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagesLoaded&&const DeepCollectionEquality().equals(other._images, _images));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'AdminProductState.imagesLoaded(images: $images)';
}


}

/// @nodoc
abstract mixin class _$ImagesLoadedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$ImagesLoadedCopyWith(_ImagesLoaded value, $Res Function(_ImagesLoaded) _then) = __$ImagesLoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductImageModel> images
});




}
/// @nodoc
class __$ImagesLoadedCopyWithImpl<$Res>
    implements _$ImagesLoadedCopyWith<$Res> {
  __$ImagesLoadedCopyWithImpl(this._self, this._then);

  final _ImagesLoaded _self;
  final $Res Function(_ImagesLoaded) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? images = null,}) {
  return _then(_ImagesLoaded(
null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImageModel>,
  ));
}


}

/// @nodoc


class _ActionLoading implements AdminProductState {
  const _ActionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.actionLoading()';
}


}




/// @nodoc


class _ActionSuccess implements AdminProductState {
  const _ActionSuccess(this.message);
  

 final  String message;

/// Create a copy of AdminProductState
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
  return 'AdminProductState.actionSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
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

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ActionError implements AdminProductState {
  const _ActionError(this.message);
  

 final  String message;

/// Create a copy of AdminProductState
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
  return 'AdminProductState.actionError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActionErrorCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
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

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ActionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements AdminProductState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AdminProductState
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
  return 'AdminProductState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
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

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
