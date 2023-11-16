import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Likebutton extends StatelessWidget {
  final bool isLiking;
  void Function() onTap;
  Likebutton({super.key, required this.isLiking, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isLiking ? Icons.favorite : Icons.favorite_border_outlined,
        color: isLiking ? Colors.red : Colors.grey,
      ),
    );
  }
}
