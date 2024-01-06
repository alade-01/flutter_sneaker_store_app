import 'package:flutter/material.dart';
import 'package:x_store/Models/product_item_model.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../../../Components/BaseSection.dart';
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
          padding: EdgeInsets.only(bottom: ww(s, 15)),
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
          SizedBox(height: hh(s, 74)),
          horizontalPadding30(
            s,
            child: Text(
              "Today",
              style: bold28(s, black100),
            ),
          ),
          NewInCarousel(),
          SizedBox(height: hh(s, 60)),
          BaseSection(
            s: s,
            header: "Just Dropped",
            content: Container(
              height: hh(s, 234),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: ww(s, 30)),
                physics: BouncingScrollPhysics(),
                itemCount: justDroppedItems.length,
                itemBuilder: (context, index) {
                  var item = justDroppedItems[index];
                  return Padding(
                      padding: EdgeInsets.only(right: ww(s, 15)),
                      child: ProductItemvert(s: s, item: item));
                },
              ),
            ),
          ),

          SizedBox(height: hh(s, 60)),
          BaseSection(
            s: s,
            header: "Most Popular",
            content: Container(
              height: hh(s, 234),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: ww(s, 30)),
                physics: BouncingScrollPhysics(),
                itemCount: horizontalData(s, mostPopularItems).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: ww(s, 15)),
                    child: horizontalData(s, mostPopularItems)[index],
                  );
                },
              ),
            ),
          ),
          SizedBox(height: hh(s, 60)),
          BaseSection(
            s: s,
            header: "Popular Brands",
            height: hh(s, 160),
            content: Container(
              height: hh(s, 112),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: ww(s, 30)),
                physics: BouncingScrollPhysics(),
                itemCount: brandItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: ww(s, 10)),
                    child: BrandListItem(s: s, item: brandItems[index]),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: hh(s, 60)),
          BaseSection(
            s: s,
            header: "Recommended For You",
            content: Container(
              height: hh(s, 234),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: ww(s, 30)),
                physics: BouncingScrollPhysics(),
                itemCount: recommendedItems.length,
                itemBuilder: (context, index) {
                  var item = recommendedItems[index];
                  return Padding(
                      padding: EdgeInsets.only(right: ww(s, 15)),
                      child: ProductItemvert(s: s, item: item));
                },
              ),
            ),
          ),
          SizedBox(height: hh(s, 60)),
          BaseSection(
            s: s,
            header: "New Lowest Asks",
            content: Container(
              height: hh(s, 234),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: ww(s, 30)),
                physics: BouncingScrollPhysics(),
                itemCount: horizontalData(s, mostPopularItems).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: ww(s, 15)),
                    child: horizontalData(s, mostPopularItems)[index],
                  );
                },
              ),
            ),
          ),
          SizedBox(height: hh(s, 60)),
          BaseSection(
            s: s,
            header: "New Highest Asks",
            content: Container(
              height: hh(s, 234),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: ww(s, 30)),
                physics: BouncingScrollPhysics(),
                itemCount: horizontalData(s, mostPopularItems).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: ww(s, 15)),
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
