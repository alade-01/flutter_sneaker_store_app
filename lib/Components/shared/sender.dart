import 'package:flutter/material.dart';

class Sender extends StatelessWidget {
  final String? img;
  final String name;
  final String views;
  final String time;

  const Sender({
    Key? key,
    this.img,
    required this.name,
    required this.views,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Row(
      children: [
        if (name != "X-Store")
          Container(
            width: (s.width * 16) / 375,
            height: (s.width * 16) / 375,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        SizedBox(
          width: (s.width * 8) / 375,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: (s.width * 8) / 375,
        ),
        Text(
          views,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: (s.width * 8) / 375,
        ),
        Text(
          time,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
