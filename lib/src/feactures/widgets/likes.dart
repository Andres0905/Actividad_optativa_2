import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  _LikeButtonState get createState => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  int _likes = 0;

  void _incrementLikes() {
    setState(() {
      _likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '$_likes me gusta',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: const Icon(Icons.thumb_up),
          onPressed: _incrementLikes,
        ),
      ],
    );
  }
}
