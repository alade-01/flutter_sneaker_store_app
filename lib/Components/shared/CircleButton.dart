import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    this.onTap,
    required this.child,
  }) : super(key: key);

  final Function()? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: child,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 0.5),
        ),
      ),
    );
  }
}
