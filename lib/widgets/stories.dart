import 'package:facebook_ui/models/story.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

final _stories = [
  Story(
    bg: 'assets/wallpapers/1.jpeg',
    avatar: 'assets/users/jas.jpg',
    userName: 'Jas',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpeg',
    avatar: 'assets/users/2.jpg',
    userName: 'Julia',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpeg',
    avatar: 'assets/users/3.jpg',
    userName: 'Andrea',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpeg',
    avatar: 'assets/users/4.jpg',
    userName: 'Lucia',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpeg',
    avatar: 'assets/users/5.jpg',
    userName: 'Camilo',
  ),
  Story(
    bg: 'assets/wallpapers/6.jpeg',
    avatar: 'assets/users/6.jpg',
    userName: 'Andres',
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _stories.length,
          itemBuilder: ((_, index) {
            final story = _stories[index];

            return HistoryItem(
              story: story,
              index: index == 0,
              indexR: index == _stories.length - 1,
            );
          }),
        ));
  }
}

class HistoryItem extends StatelessWidget {
  final bool index;
  final bool indexR;
  const HistoryItem({
    Key? key,
    required this.story,
    required this.index,
    required this.indexR,
  }) : super(key: key);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(
        right: indexR ? 20 : 8,
        left: index ? 25 : 0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 50,
                    imageUrl: story.avatar,
                    borde: 4.5,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              color: const Color(0xff242527),
              child: Text(
                story.userName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
