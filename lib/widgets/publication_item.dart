import 'dart:ui';

import 'package:facebook_ui/models/publication.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublicationItem extends StatelessWidget {
  final Publication publication;
  const PublicationItem({super.key, required this.publication});

  @override
  Widget build(BuildContext context) {
    const double emojiSize = 18;
    const double emojiSpace = 5;
    const colorText = TextStyle(color: Colors.white);
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
        width: 10,
        color: Color(0xff18191b),
      ))),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Avatar(
                  size: 30,
                  imageUrl: publication.user.avatar,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  publication.user.userName,
                  style: colorText,
                ),
                const Spacer(),
                Text('${random.integer(40)} min', style: colorText)
              ],
            ),
          ),
          Image.network(
            publication.imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                .copyWith(top: 20),
            child: Text(
              publication.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                .copyWith(top: 5),
            //comentarios y emojis
            child: Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/emojis/like.svg',
                      height: emojiSize,
                      width: emojiSize,
                    ),
                    const SizedBox(width: emojiSpace),
                    SvgPicture.asset(
                      'assets/emojis/heart.svg',
                      height: emojiSize,
                      width: emojiSize,
                    ),
                    const SizedBox(width: emojiSpace),
                    SvgPicture.asset(
                      'assets/emojis/laughing.svg',
                      height: emojiSize,
                      width: emojiSize,
                    ),
                    const SizedBox(width: emojiSpace),
                    SvgPicture.asset(
                      'assets/emojis/shocked.svg',
                      height: emojiSize,
                      width: emojiSize,
                    ),
                    const SizedBox(width: emojiSpace),
                    SvgPicture.asset(
                      'assets/emojis/sad.svg',
                      height: emojiSize,
                      width: emojiSize,
                    ),
                    const SizedBox(width: emojiSpace),
                    SvgPicture.asset(
                      'assets/emojis/angry.svg',
                      height: emojiSize,
                      width: emojiSize,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '${random.integer(60)} Coments    ${random.integer(60)} Shares',
                  style: colorText,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
