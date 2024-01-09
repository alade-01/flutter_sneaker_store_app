import 'package:flutter/material.dart';

class NewInCarousel extends StatefulWidget {
  const NewInCarousel({Key? key}) : super(key: key);

  @override
  _NewInCarouselState createState() => _NewInCarouselState();
}

class _NewInCarouselState extends State<NewInCarousel> {
  PageController controller = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: (s.height * 330) / 812,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: newInItems.length,
            onPageChanged: (val) {
              setState(() {
                page = val;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: (s.height * 30) / 812),
                child: Container(
                  height: (s.height * 330) / 812,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: (s.height * 24) / 812, vertical: (s.height * 24) / 812),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "New In",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 8),
                        Text(
                          newInItems[page].model,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "\$${newInItems[page].price} USD",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(newInItems[index].img),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(
                        (s.height * 12) / 812,
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: (s.width * 54) / 375,
            bottom: (s.width * 24) / 375,
            child: Row(
              children: List.generate(newInItems.length, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 320),
                  width: newInItems[index].id == page ? (s.width * 40) / 375 : (s.width * 6) / 375,
                  height: (s.height * 2) / 812,
                  margin: EdgeInsets.only(
                      right: index != (newInItems.length - 1) ? (s.width * 4) / 375 : 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                      color: newInItems[index].id == page ? Colors.white : Colors.white.withOpacity(0.5),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class NewInItemModel {
  final int id;
  final String img;
  final String model;
  final double price;

  NewInItemModel(this.id, this.img, this.model, this.price);
}

List<NewInItemModel> newInItems = [
  NewInItemModel(0, "res/images/p9.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 89.95),
  NewInItemModel(1, "res/images/p7.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 79.95),
  NewInItemModel(2, "res/images/p6.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 65.95),
  NewInItemModel(3, "res/images/p5.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 77.95),
  NewInItemModel(4, "res/images/p4.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 59.95),
];
