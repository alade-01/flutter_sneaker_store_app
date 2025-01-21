import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/product_item_model.dart';

import '../../core/router_generator.dart';

class ProductItemHor extends StatelessWidget {
  const ProductItemHor({
    Key? key,
    required this.s,
    required this.item,
    this.callback
  }) : super(key: key);

  final Size s;
  final ProductItemModel item;
  final Function? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () => Navigator.pushNamed(context, RouterGenerator.productDetailRoute),
      child: Container(
        width: (s.width * 315) / 375,
        height: (s.height * 88) / 812,
        child: Row(
          children: [
            Container(
              width: (s.height * 88) / 812,
              height: (s.height * 88) / 812,
              child: Center(
                child: Image.asset(
                  item.image,
                  width: (s.width * 120) / 375,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular((s.width * 12) / 375),
              ),
            ),
            SizedBox(width: (s.width * 15) / 375),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(item.brand, width: (s.width * 24) / 375),
                Container(
                  child: Text(
                    item.model,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  item.title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  item.price,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
