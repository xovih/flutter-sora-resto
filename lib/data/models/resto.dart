import 'dart:convert';

class Resto {
  String restoName;
  String siteUrl;
  String openDays;
  String openHours;
  String description;
  String location;
  String rating;
  String photo;
  List<Gallery> gallery;

  Resto({
    this.restoName,
    this.siteUrl,
    this.openDays,
    this.openHours,
    this.description,
    this.location,
    this.rating,
    this.photo,
    this.gallery,
  });

  Resto.fromJson(Map<String, dynamic> resto) {
    restoName = resto['name'];
    siteUrl = resto['site'];
    openDays = resto['openDays'];
    openHours = resto['openHours'];
    description = resto['description'];
    location = resto['location'];
    rating = resto['rating'];
    photo = resto['primaryPhoto'];

    var list = resto['gallery'] as List;
    gallery = list.map((i) => Gallery.fromJson(i)).toList();
  }
}

class Gallery {
  String menuName;
  String imgUrl;
  String price;

  Gallery({this.menuName, this.imgUrl, this.price});

  Gallery.fromJson(Map<String, dynamic> photo) {
    menuName = photo['menuName'];
    imgUrl = photo['imgUrl'];
    price = photo['price'];
  }
}

List<Resto> parseResto(String json) {
  if (json == null) return [];

  final List parsed = jsonDecode(json);
  return parsed.map((i) => Resto.fromJson(i)).toList();
}
