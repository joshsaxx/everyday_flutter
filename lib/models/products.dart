class ProductModel {
  final int? productId;
  final String? productName;

  ProductModel({this.productId, this.productName});
  
  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      productId: json['product_id'] ?? 0,
      productName: json['product_name'] ?? "",
    );
  }
}

final List<ProductModel> products = [
  ProductModel(productId: 1, productName: "Schools"),
  ProductModel(productId: 2, productName: "Hospitals"),
  ProductModel(productId: 3, productName: "Supermarket"),
  ProductModel(productId: 4, productName: "Church"),
  
];