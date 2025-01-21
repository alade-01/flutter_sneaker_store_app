import 'package:flutter/material.dart';
import '../Components/shared/sender.dart';

class LiveStroyItemModel {
  final String title,img;
  final Widget? action;
  final Sender sender;

  LiveStroyItemModel({
    required this.title,
    required this.sender,
    required this.img,
    this.action,
  });
}