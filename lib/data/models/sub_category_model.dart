import 'package:fruit_market/data/models/products_model.dart';

class SubCategories {
  int? id;
  String? title;
  int? discount;
  String? description;
  List<Products>? products;

  SubCategories(
      {this.id, this.title, this.discount, this.description, this.products});

  SubCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    discount = json['discount'];
    description = json['description'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add( Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['discount'] = discount;
    data['description'] = description;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
