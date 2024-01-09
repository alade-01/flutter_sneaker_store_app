import 'package:flutter/material.dart';
import 'package:x_store/Models/product_item_model.dart';

import '../../../../Components/layouts/BaseSection.dart';
import '../../../../Components/items/brand_list_item.dart';
import '../../../../Components/items/product_item_hor.dart';
import '../../../../Components/items/product_item_vert.dart';
import '../../../../Components/layouts/new_in_carousel.dart';
import '../../../../Data/brand_list_item_data.dart';
import '../../../../Data/just_dropped_item_data.dart';
import '../../../../Data/most_popular_data.dart';
import '../../../../Data/recommended_item_data.dart';


List<Column> horizontalData(Size s, List<ProductItemModel> items) {
  List<Column> columns = [];

  for (var i = 1; i <= (items.length / 2).ceil(); i++) {
    var n = (i * 2) - 2;
    var ne = items.sublist(n, n + 2);
    columns.add(Column(
      children: List.generate(ne.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: (s.width * 15) / 375),
          child: ProductItemHor(s: s,item: ne[index],
          ),
        );
      }),
    ));
  }

  return columns;
}

class NewAndPopular extends StatelessWidget {
  const NewAndPopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: (s.height * 74) / 812),
    Text(
    "Today",
    style:  Theme.of(context).textTheme.labelLarge!.copyWith(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500),
    ),
          NewInCarousel(),
          SizedBox(height: (s.height * 60) / 812),
          BaseSection(
            s: s,
            header: "Just Dropped",
            content: Container(
              height: (s.height * 234) / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: (s.width * 30) / 375),
                physics: BouncingScrollPhysics(),
                itemCount: justDroppedItems.length,
                itemBuilder: (context, index) {
                  var item = justDroppedItems[index];
                  return Padding(
                      padding: EdgeInsets.only(right: (s.width * 15) / 375),
                      child: ProductItemvert(s: s, item: item));
                },
              ),
            ),
          ),

          SizedBox(height: (s.height * 60) / 812),
          BaseSection(
            s: s,
            header: "Most Popular",
            content: Container(
              height: (s.height * 234) / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: (s.width * 30) / 375),
                physics: BouncingScrollPhysics(),
                itemCount: horizontalData(s, mostPopularItems).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: (s.width * 15) / 375),
                    child: horizontalData(s, mostPopularItems)[index],
                  );
                },
              ),
            ),
          ),
          SizedBox(height: (s.height * 60) / 812),
          BaseSection(
            s: s,
            header: "Popular Brands",
            height: (s.height * 160) / 812,
            content: Container(
              height: (s.height * 112) / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: (s.width * 30) / 375),
                physics: BouncingScrollPhysics(),
                itemCount: brandItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: (s.width * 10) / 375),
                    child: BrandListItem(s: s, item: brandItems[index]),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: (s.height * 60) / 812),
          BaseSection(
            s: s,
            header: "Recommended For You",
            content: Container(
              height: (s.height * 234) / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: (s.width * 30) / 375),
                physics: BouncingScrollPhysics(),
                itemCount: recommendedItems.length,
                itemBuilder: (context, index) {
                  var item = recommendedItems[index];
                  return Padding(
                      padding: EdgeInsets.only(right: (s.width * 15) / 375),
                      child: ProductItemvert(s: s, item: item));
                },
              ),
            ),
          ),
          SizedBox(height: (s.height * 60) / 812),
          BaseSection(
            s: s,
            header: "New Lowest Asks",
            content: Container(
              height: (s.height * 234) / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: (s.width * 30) / 375),
                physics: BouncingScrollPhysics(),
                itemCount: horizontalData(s, mostPopularItems).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: (s.width * 15) / 375),
                    child: horizontalData(s, mostPopularItems)[index],
                  );
                },
              ),
            ),
          ),
          SizedBox(height: (s.height * 60) / 812),
          BaseSection(
            s: s,
            header: "New Highest Asks",
            content: Container(
              height: (s.height * 234) / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: (s.width * 30) / 375),
                physics: BouncingScrollPhysics(),
                itemCount: horizontalData(s, mostPopularItems).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: (s.width * 15) / 375),
                    child: horizontalData(s, mostPopularItems)[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
