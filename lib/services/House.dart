class House {

  String title;
  String price;
  String address;
  String imgUrl;
  String url;
  String provider;

  House();

  House.fromJson(json) {
    title = json['title'];
    price = json['price'];
    address = json['address'];
    imgUrl = json['imgUrl'];
    url = json['url'];
    provider = json['provider'];
  }
}
