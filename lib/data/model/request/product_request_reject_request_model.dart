class ProductRequestRejectRequestModel {
  final String? reason;

  ProductRequestRejectRequestModel({this.reason});

  Map<String, dynamic> toJson() => {
        'reason': reason,
      };
}