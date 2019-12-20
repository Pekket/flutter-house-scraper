class House {

  String title;
  String price;
  String address;
  String imgUrl;
  String url;


  House();

  void getHogetHouseuse() async {
      title ="Ik ben een huis";
      price ="360.000";
      address= "wennel 27, 3600 Genk";
      imgUrl ="https://ateamymm.ca/imgs/defaulthouse.jpg";
      url ="https://www.zimmo.be";
  }

  House.fromJson(json) {
    title = json['title'];
    price = json['price'];
    address = json['address'];
    imgUrl = json['imgUrl'];
    url = json['url'];
  }
}
