import 'package:flutter/material.dart';
import 'package:x_store/windows/Home/NewAndPopular/Components/Sender.dart';

class LiveStroyItemModel {
  final String title;
  final String img;
  final Widget? action;
  final Sender sender;

  LiveStroyItemModel({
    required this.title,
    required this.sender,
    required this.img,
    this.action,
  });
}
