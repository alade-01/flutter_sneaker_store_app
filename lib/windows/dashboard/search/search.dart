import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';


import 'search_bar_r.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  List<String> recommendedSearch = [
    "jordan 1",
    "yeezy",
    "jordan 14",
    "off white",
    "dior",
    "travis scott",
    "supreme",
    "air force",
    "jordan 4",
    "adidas",
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      color: white100,
      padding: EdgeInsets.symmetric(horizontal: ww(s, 30)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hh(s, 52)),
            Text(
              "Search",
              style: bold28(s, black100),
            ),
            SizedBox(height: hh(s, 20)),
            SearchBarR(),
            SizedBox(height: hh(s, 20)),
            Column(
              children: List.generate(
                recommendedSearch.length,
                    (index) => MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  height: hh(s, 40),
                  child: Text(
                    recommendedSearch[index],
                    style: regular16(s, black100),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
