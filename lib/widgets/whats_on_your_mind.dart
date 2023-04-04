import 'package:flutter/material.dart';

import 'avatar.dart';

class WhatsOnYourMind extends StatelessWidget {
  const WhatsOnYourMind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: const [
          Avatar(
            imageUrl: 'assets/users/jas.jpg',
            size: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text('What\'s on your mind Jas?',
                style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
