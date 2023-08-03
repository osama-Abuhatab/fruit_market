class Nutrition {
  int? id;
  String? name;
  String? description;

  Nutrition({this.id, this.name, this.description});

  Nutrition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}