import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/product_item_model.dart';

import '../../core/constants.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              item.brand,
              width: (s.width * 24) / 375,
            ),
            Image.asset(
              item.image,
              width: (s.width * 120) / 375,
            ),
            RichText(
              text: TextSpan(
                text: "${item.model} \n",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(text: "${item.title} \n"),
                  TextSpan(text: item.price),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular((s.width * 12) / 375),
        ),
      ),
    );
  }
}
