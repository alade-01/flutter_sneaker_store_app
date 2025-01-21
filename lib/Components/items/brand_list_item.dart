import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/brand_list_item_model.dart';

class BrandListItem extends StatelessWidget {
  const BrandListItem({
    Key? key,
    required this.s,
    required this.item,
  }) : super(key: key);

  final Size s;
  final BrandListItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (s.width * 72) / 375,
      height: (s.height * 112) / 812,
      child: Column(
        children: [
          Container(
            width: (s.width * 72) / 375,
            height: (s.width * 72) / 375,
            child: Center(
              child: SvgPicture.asset(
                item.img,
                width: (s.width * 24) / 375,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Spacer(),
          Text(
            item.name,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w500)
          ),
          Text(
            "All ${item.number}",
    style: Theme.of(context).textTheme.titleMedium!.copyWith(
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w500)
          ),
        ],
      ),
    );
  }
}
