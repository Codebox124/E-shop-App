class Product {
  final String productName;
  final String productImage;
  final String currentPrice;
  final String oldPrice;
  final bool isLinked;

  const Product({
    required this.productName,
    required this.productImage,
    required this.currentPrice,
    required this.oldPrice,
    required this.isLinked,
  });
}

class Category {
  final String categoryName;
  final String productCount;
  final String thumbnailImage;

  const Category({
    required this.categoryName,
    required this.productCount,
    required this.thumbnailImage,
  });
}

final categories = [
  const Category(
    categoryName: "T-shirt",
    productCount: "400",
    thumbnailImage: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  ),
  const Category(
    categoryName: "T-shirt",
    productCount: "400",
    thumbnailImage: "https://images.unsplash.com/photo-1508184964240-ee96bb9677a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbiUyMHBpY3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  ),
  const Category(
    categoryName: "T-shirt",
    productCount: "400",
    thumbnailImage: "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ),
];

final products = [
  const Product(
    productName: "MML- oversized",
    productImage: "https://images.unsplash.com/photo-1516399677720-a9edd66e55e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    currentPrice: "500",
    oldPrice: "700",
    isLinked: true,
  ),
  const Product(
    productName: "MML- oversized",
    productImage: "https://images.unsplash.com/photo-1528151406837-4745fbcd9f70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    currentPrice: "500",
    oldPrice: "700",
    isLinked: true,
  ),
  const Product(
    productName: "MML- oversized",
    productImage: "https://images.unsplash.com/photo-1610261003803-224ee66747e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    currentPrice: "500",
    oldPrice: "700",
    isLinked: true,
  ),
    const Product(
    productName: "MML- oversized",
    productImage: "https://images.unsplash.com/photo-1610261003803-224ee66747e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    currentPrice: "500",
    oldPrice: "700",
    isLinked: true,
  ),
    const Product(
    productName: "MML- oversized",
    productImage: "https://images.unsplash.com/photo-1610261003803-224ee66747e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    currentPrice: "500",
    oldPrice: "700",
    isLinked: true,
  ),
    const Product(
    productName: "MML- oversized",
    productImage: "https://images.unsplash.com/photo-1610261003803-224ee66747e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZhc2hpb24lMjBwaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    currentPrice: "500",
    oldPrice: "700",
    isLinked: true,
  ),
];
