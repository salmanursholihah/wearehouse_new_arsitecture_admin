class StockOutRequestModel {
  final int productId;
  final int qty;
  final String? note;

  StockOutRequestModel({
    required this.productId,
    required this.qty,
    this.note,
  });

  Map<String, dynamic> toJson() => {
        'product_id': productId,
        'qty': qty,
        'note': note,
      };
}