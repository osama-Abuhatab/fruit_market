
import 'dart:math';

import 'package:fruit_market/data/models/fruit_model.dart';
import 'package:fruit_market/data/models/group_model.dart';

class GetSubCategory{


  static const Map<String, String> _fruitInfo = {};
  static const List<String> _nutrition = [];
  static final Random _rng = Random();
  static const String _imgFruitPath = "assets/images/fruit/";

  static GroupModel _getGroupFruit() {
    List<FruitModel> l = [];
    for (String f in _fruitInfo.keys) {
      l.add(_infoToFruitModel(f, _fruitInfo[f] ?? '', _imgFruitPath));
    }
    return GroupModel(
        l, 'Organic Fruits', "(20% Off)", "Pick up from organic farms");
  }

  static FruitModel _infoToFruitModel(
      String name, String description, String imgPath) {
    String img = "$imgPath${name.replaceAll(" ", "_")}.jpg";
    double price = (_rng.nextInt(30) + 5).toDouble();
    double rate = (300 + _rng.nextInt(200)).toDouble() / 100;
    bool isFavor = _rng.nextInt(10) > 8;
    List<String> nutrition = _getRandomNutrition(_rng.nextInt(4) + 3);

    return FruitModel(
        name: name,
        nutrition: nutrition,
        isFavorite: isFavor,
        price: price,
        rate: rate,
        details: description,
        img: img);
  }

  static List<String> _getRandomNutrition(int count) {
    List<String> l = [];
    for (int i = 0; i <= count; i++) {
      l.add(_nutrition[_rng.nextInt(_nutrition.length - 1)]);
    }
    return l;
  }


}