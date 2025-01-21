import 'package:x_store/Models/product_item_model.dart';
List products = [
  {
    "icon": "res/icons/nike.svg",
    "img": "res/images/p25.png",
    "model": "Nike ISPA Overreact \n Sail Multi",
    "title": "Lowest Ask",
    "price": "\$233"
  },
  {
    "icon": "res/icons/adidas.svg",
    "img": "res/images/p24.png",
    "model": "ADIDAS Yeezy Boost 700 \n MNVN Bone",
    "title": "Lowest Ask",
    "price": "\$373"
  },
  {
    "icon": "res/icons/jordan.svg",
    "img": "res/images/p23.png",
    "model": "Jordan 11 Retro Low White \n Concord (W)",
    "title": "Lowest Ask",
    "price": "\$233"
  },
];

List<ProductItemModel> justDroppedItems = [
  for (var item in products)
    ProductItemModel("${item["icon"]}","${item["img"]}",item["model"],item["title"],item["price"]),
];