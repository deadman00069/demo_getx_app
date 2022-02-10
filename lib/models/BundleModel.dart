class BundleModel {
  BundleModel({
      this.id, 
      this.name, 
      this.image, 
      this.description, 
      this.unitPrice, 
      this.discountPrice, 
      this.isActive, 
      this.createdAt, 
      this.updatedAt, 
      this.bundleProducts,});

  BundleModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    unitPrice = json['unit_price'];
    discountPrice = json['discount_price'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['bundle_products'] != null) {
      bundleProducts = [];
      json['bundle_products'].forEach((v) {
        bundleProducts?.add(BundleProducts.fromJson(v));
      });
    }
  }
  int? id;
  String? name;
  String? image;
  String? description;
  String? unitPrice;
  String? discountPrice;
  int? isActive;
  String? createdAt;
  String? updatedAt;
  List<BundleProducts>? bundleProducts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    map['description'] = description;
    map['unit_price'] = unitPrice;
    map['discount_price'] = discountPrice;
    map['is_active'] = isActive;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (bundleProducts != null) {
      map['bundle_products'] = bundleProducts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class BundleProducts {
  BundleProducts({
      this.id, 
      this.bundleId, 
      this.productVariantId, 
      this.createdAt, 
      this.updatedAt, 
      // this.productVariant,
  });

  BundleProducts.fromJson(dynamic json) {
    id = json['id'];
    bundleId = json['bundle_id'];
    productVariantId = json['product_variant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    // productVariant = json['product_variant'] != null ? ProductVariant.fromJson(json['productVariant']) : null;
  }
  int? id;
  int? bundleId;
  int? productVariantId;
  String? createdAt;
  String? updatedAt;
  // ProductVariant? productVariant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['bundle_id'] = bundleId;
    map['product_variant_id'] = productVariantId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    // if (productVariant != null) {
    //   map['product_variant'] = productVariant?.toJson();
    // }
    return map;
  }

}

class ProductVariant {
  ProductVariant({
      this.id, 
      this.productId, 
      this.variantName, 
      this.unitPrice, 
      this.discountPrice, 
      this.inStock, 
      this.createdAt, 
      this.updatedAt, 
      this.product,});

  ProductVariant.fromJson(dynamic json) {
    id = json['id'];
    productId = json['product_id'];
    variantName = json['variant_name'];
    unitPrice = json['unit_price'];
    discountPrice = json['discount_price'];
    inStock = json['in_stock'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product = json['product'] != null ? Product.fromJson(json['product']) : null;
  }
  int? id;
  int? productId;
  String? variantName;
  String? unitPrice;
  String? discountPrice;
  int? inStock;
  String? createdAt;
  String? updatedAt;
  Product? product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['product_id'] = productId;
    map['variant_name'] = variantName;
    map['unit_price'] = unitPrice;
    map['discount_price'] = discountPrice;
    map['in_stock'] = inStock;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (product != null) {
      map['product'] = product?.toJson();
    }
    return map;
  }

}

class Product {
  Product({
      this.id, 
      this.categoryId, 
      this.name, 
      this.description, 
      this.images, 
      this.isPopular, 
      this.createdAt, 
      this.updatedAt,});

  Product.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    description = json['description'];
    images = json['images'];
    isPopular = json['is_popular'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  int? categoryId;
  String? name;
  String? description;
  String? images;
  int? isPopular;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['name'] = name;
    map['description'] = description;
    map['images'] = images;
    map['is_popular'] = isPopular;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}