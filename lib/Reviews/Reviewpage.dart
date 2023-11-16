import 'package:flutter/material.dart';

class PostReview extends StatefulWidget {
  final String messege;
  final String user;
  const PostReview({super.key, required this.messege, required this.user});

  @override
  State<PostReview> createState() => _PostReviewState();
}

class _PostReviewState extends State<PostReview> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(widget.user.substring(0, widget.user.length - 10)),
      subtitle: Text(
        widget.messege,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
