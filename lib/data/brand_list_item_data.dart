import 'package:x_store/Models/brand_list_item_model.dart';
List products = [
  {"icon": "res/icons/nike.svg", "name": "NIKE","numb": 601},
  {"icon": "res/icons/adidas.svg", "name": "Adidas","numb": 601},
  {"icon": "res/icons/vans.svg", "name": "Vans","numb": 601},
  {"icon": "res/icons/newBalance.svg", "name": "NewBalance","numb": 601},
  {"icon": "res/icons/vans.svg", "name": "Vans","numb": 601},
];

List<BrandListItemModel> brandItems = [
for (var item in products)
  BrandListItemModel("${item["icon"]}", "${item["name"]}", item["numb"])
];