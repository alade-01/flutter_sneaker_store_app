import 'package:flutter/material.dart';
import 'package:x_store/windows/dashboard/Home/new_and_popular/product_details/product_infos/product_infos.dart';
import 'product_infos/cover.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            Cover(s: s),
            ProductInfos(),
          ],
        ),
      ),
    );
  }
}
