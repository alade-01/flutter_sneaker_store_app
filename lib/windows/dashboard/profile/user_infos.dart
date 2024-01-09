import 'package:flutter/material.dart';


class UserInfos extends StatelessWidget {
  const UserInfos({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => items[index],
      ),
    );
  }
}

List<UserInfoItem> items = [
  UserInfoItem(name: "Portfolio", hasChild: true, count: "3"),
  UserInfoItem(name: "Following", hasChild: true, count: "32"),
  UserInfoItem(name: "Blog", hasChild: false),
  UserInfoItem(name: "Help", hasChild: false),
  UserInfoItem(name: "How it works", hasChild: false),
  UserInfoItem(name: "Reviews", hasChild: false),
  UserInfoItem(
    name: "Currency",
    hasChild: true,
    count: "\$USD",
  ),
];

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({
    Key? key,
    required this.name,
    required this.hasChild,
    this.count,
  }) : super(key: key);

  final String name;
  final bool hasChild;
  final String? count;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      height: (s.height * 44) / 812,
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          hasChild
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Text(
                    count!,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black.withOpacity(0.5),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
