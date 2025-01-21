import 'package:flutter/material.dart';

class Sales extends StatelessWidget {
  const Sales({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (size.height * 192.5) / 812,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SalesHeader(size: size),
          Divider(
            color: Colors.black.withOpacity(0.3),
            height: (size.height * 0.5) / 812,
          ),
          ...List.generate(salesItems.length, (index) => salesItems[index]),
        ],
      ),
    );
  }
}

List<SalesItem> salesItems = [
  SalesItem(
      size: "9.5",
      price: "\$254",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "11.5",
      price: "\$249",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "10",
      price: "\$245",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "12",
      price: "\$252",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "11.5",
      price: "\$214",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
];

class SalesItem extends StatelessWidget {
  const SalesItem({
    Key? key,
    required this.size,
    required this.price,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String size;
  final String price;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            size,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            price,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            date,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            time,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class SalesHeader extends StatelessWidget {
  const SalesHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            "Size",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Sale Price",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Date",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Time",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
