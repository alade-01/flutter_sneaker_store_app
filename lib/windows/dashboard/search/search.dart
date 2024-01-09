import 'package:flutter/material.dart';


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
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: (s.width * 30) / 375),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: (s.height * 52) / 812),
            Text(
              "Search",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: (s.height * 20) / 812),
            SearchBarR(),
            SizedBox(height: (s.height * 20) / 812),
            Column(
              children: List.generate(
                recommendedSearch.length,
                    (index) => MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  height: (s.height * 40) / 812,
                  child: Text(
                    recommendedSearch[index],
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
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
