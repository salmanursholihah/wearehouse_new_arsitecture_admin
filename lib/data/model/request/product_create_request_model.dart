class ProductCreateRequestModel {
  final String sku;
  final String name;
  final String? description;
  final int stock;
  final String unit;

  ProductCreateRequestModel({
    required this.sku,
    required this.name,
    this.description,
    required this.stock,
    required this.unit,
  });

  Map<String, String> toFields() => {
        'sku': sku,
        'name': name,
        if (description != null) 'description': description!,
        'stock': stock.toString(),
        'unit': unit,
      };
}