class PaginationMetaModel {
  final int? currentPage;
  final int? perPage;
  final int? total;
  final int? lastPage;

  PaginationMetaModel({
    this.currentPage,
    this.perPage,
    this.total,
    this.lastPage,
  });

  factory PaginationMetaModel.fromMap(Map<String, dynamic> json) =>
      PaginationMetaModel(
        currentPage: json["current_page"],
        perPage: json["per_page"] is int
            ? json["per_page"]
            : int.tryParse("${json["per_page"]}"),
        total: json["total"],
        lastPage: json["last_page"],
      );
}