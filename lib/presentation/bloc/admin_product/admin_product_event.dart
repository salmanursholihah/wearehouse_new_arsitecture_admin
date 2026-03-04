part of 'admin_product_bloc.dart';

@freezed
class AdminProductEvent with _$AdminProductEvent {
  const factory AdminProductEvent.started() = _Started;
 const factory AdminProductEvent.getList({
    String? status, // pending|approved|rejected
    String? search,
    @Default(10) int perPage,
  }) = _GetList;

  const factory AdminProductEvent.loadMore() = _LoadMore;

  const factory AdminProductEvent.getDetail(int id) = _GetDetail;

  const factory AdminProductEvent.create(ProductCreateRequestModel request) = _Create;

  const factory AdminProductEvent.update({
    required int id,
    required ProductUpdateRequestModel request,
  }) = _Update;

  const factory AdminProductEvent.delete(int id) = _Delete;

  const factory AdminProductEvent.approve(int id) = _Approve;

  const factory AdminProductEvent.reject(int id) = _Reject;

  const factory AdminProductEvent.getImages(int productId) = _GetImages;

  const factory AdminProductEvent.addImage({
    required int productId,
    required XFile image, // ✅ XFile
  }) = _AddImage;

  const factory AdminProductEvent.deleteImage(int imageId) = _DeleteImage;
}