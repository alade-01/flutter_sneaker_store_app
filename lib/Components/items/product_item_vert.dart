import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/product_item_model.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../core/router_generator.dart';
import '../../windows/dashboard/Home/new_and_popular/product_details/product_detail.dart';

class ProductItemvert extends StatelessWidget {
  const ProductItemvert({
    Key? key,
    required this.s,
    required this.item,
  }) : super(key: key);

  final Size s;
  final ProductItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RouterGenerator.productDetailRoute),
      child: Container(
        width: ww(s, 150),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ww(s, 150),
              height: ww(s, 150),
              child: Stack(
                children: [
                  Positioned(
                    top: ww(s, 15),
                    left: ww(s, 15),
                    child: SvgPicture.asset(
                      item.brand,
                      width: ww(s, 24),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      item.image,
                      width: ww(s, 120),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: white100,
                borderRadius: BorderRadius.circular(ww(s, 12)),
              ),
            ),
            Spacer(),
            Container(
              child: Text(
                item.model,
                style: regular12(s, black100),
              ),
            ),
            Text(
              item.title,
              style: regular11(s, black30),
            ),
            Text(
              item.price,
              style: bold14(s, black100),
            ),
          ],
        ),
      ),
    );
  }
}
