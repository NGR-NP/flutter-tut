class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "samsung mobile",
      desc: "samsung desc",
      price: 999,
      color: "#000",
      image: "https://m.media-amazon.com/images/I/7136zgtNmJL._AC_UY218_.jpg",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  // Item(this.id, this.name, this.desc, this.price, this.color, this.image);
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
