class ProductUpdateRequestModel {
  final String sku;
  final String name;
  final String? description;
  final int stock;
  final String unit;

  ProductUpdateRequestModel({
    required this.sku,
    required this.name,
    this.description,
    required this.stock,
    required this.unit,
  });

  Map<String, dynamic> toJson() => {
        'sku': sku,
        'name': name,
        'description': description,
        'stock': stock,
        'unit': unit,
      };
}