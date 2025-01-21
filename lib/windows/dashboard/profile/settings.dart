import 'package:flutter/material.dart';

import '../../../Components/shared/CircleButton.dart';
import '../../../Data/section_items_data.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: (s.height * 52) / 812),
              CircleButton(
                onTap: () => Navigator.of(context),
                child: Icon(Icons.arrow_back,color: Colors.black),
              ),
              SizedBox(height: (s.height * 20) / 812),
              Container(
                height: (s.height * 44) / 812,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Settings",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: (s.height * 20) / 812),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Account",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: (s.height * 10) / 812),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        accountItems.length,
                            (index) => accountItems[index],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: (s.height * 40) / 812),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Information",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: (s.height * 10) / 812),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        infoItems.length,
                            (index) => infoItems[index],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: (s.height * 40) / 812),
              Container(
                height: (s.height * 44) / 812,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: (s.height * 10) / 812),
                child: Text(
                  "Sign Out",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: (s.height * 40) / 812),
            ],
          ),
        ),
      ),
    );
  }
}
