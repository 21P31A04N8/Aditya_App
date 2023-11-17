import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/Reviews/button.dart';

class PostReview extends StatefulWidget {
  final String messege;
  final String user;
  final String postId;
  final List<String> likes;
  const PostReview(
      {super.key,
      required this.messege,
      required this.user,
      required this.postId,
      required this.likes});

  @override
  State<PostReview> createState() => _PostReviewState();
}

class _PostReviewState extends State<PostReview> {
  final currentuser = FirebaseAuth.instance.currentUser;
  bool isLiked = false;
  @override
  void initState() {
    isLiked = widget.likes.contains(currentuser!.email);
    super.initState();
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
    DocumentReference postRef =
        FirebaseFirestore.instance.collection('User posts').doc(widget.postId);
    if (isLiked) {
      postRef.update({
        'Likes': FieldValue.arrayUnion([currentuser!.email])
      });
    } else {
      postRef.update({
        'Likes': FieldValue.arrayRemove([currentuser!.email])
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        trailing: Column(
          children: [
            Likebutton(
              isLiking: isLiked,
              onTap: toggleLike,
            ),
            Text(widget.likes.length.toString())
          ],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        leading: Icon(
          Icons.person,
          size: 35,
        ),
        title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.user.substring(0, widget.user.length - 10)),
              SizedBox(
                height: 3,
              )
            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            widget.messege,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
