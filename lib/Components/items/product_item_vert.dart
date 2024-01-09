import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/product_item_model.dart';

import '../../core/router_generator.dart';

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
        width: (s.width * 150) / 375,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: (s.width * 150) / 375,
              height: (s.width * 150) / 375,
              child: Stack(
                children: [
                  Positioned(
                    top: (s.width * 15) / 375,
                    left: (s.width * 15) / 375,
                    child: SvgPicture.asset(
                      item.brand,
                      width: (s.width * 24) / 375,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      item.image,
                      width: (s.width * 120) / 375,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular((s.width * 12) / 375),
              ),
            ),
            Spacer(),
            Container(
              child: Text(
                item.model,

                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)
              ),
            ),
            Text(
              item.title,

                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w500)
            ),
            Text(
              item.price,

                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)
            ),
          ],
        ),
      ),
    );
  }
}
