import 'package:fruit_market/data/models/nutrition_model.dart';

class Products {
  int? id;
  String? name;
  int? price;
  String? rate;
  String? description;
  String? image;
  bool? isFavorite;
  String? subCategory;
  List<Nutrition>? nutrition;

  Products(
      {this.id,
        this.name,
        this.price,
        this.rate,
        this.description,
        this.image,
        this.isFavorite,
        this.subCategory,
        this.nutrition});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    rate = json['rate'];
    description = json['description'];
    image = json['image'];
    isFavorite = json['isFavorite'];
    subCategory = json['sub_category'];
    if (json['nutrition'] != null) {
      nutrition = <Nutrition>[];
      json['nutrition'].forEach((v) {
        nutrition!.add(Nutrition.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['rate'] = rate;
    data['description'] = description;
    data['image'] = image;
    data['isFavorite'] = isFavorite;
    data['sub_category'] = subCategory;
    if (nutrition != null) {
      data['nutrition'] = nutrition!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}