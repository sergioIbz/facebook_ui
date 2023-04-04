import 'dart:math';

import 'package:facebook_ui/icons/custom_icons_icons.dart';
import 'package:facebook_ui/models/publication.dart';
import 'package:facebook_ui/widgets/publication_item.dart';
import 'package:facebook_ui/widgets/quick_actions.dart';
import 'package:facebook_ui/widgets/stories.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/circle_buttom.dart';
import 'widgets/whats_on_your_mind.dart';
import 'package:faker/faker.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    final publications = <Publication>[];
    for (var i = 0; i < 50; i++) {
      final publication = Publication(
        user: User(
          avatar: 'assets/users/jas.jpg',
          userName: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: faker.randomGenerator.integer(50000),
        sheresCount: faker.randomGenerator.integer(50000),
        currentUserReaction:
            Reaction.values[random.integer(Reaction.values.length - 1)],
      );
      publications.add(publication);
    }
    return Scaffold(
      backgroundColor: const Color(0xff242527),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
        ),
        actions: const [
          CircleButton(
            color: Color(0xffbebebe),
            iconData: CustomIcons.search,
          ),
          CircleButton(
            color: Color(0xfff2797d),
            iconData: CustomIcons.bell,
          ),
          CircleButton(
            color: Color(0xff85b6fb),
            iconData: CustomIcons.user_friends,
            redContainer: true,
          ),
          CircleButton(
            color: Color(0xff208cf0),
            iconData: CustomIcons.messenger,
          ),
        ],
      ),
      body: ListView(
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 20,
        // ).copyWith(
        //   top: 15,
        // ),
        children: [
          SizedBox(height: 10),
          WhatsOnYourMind(),
          SizedBox(height: 10),
          QuickActions(),
          SizedBox(height: 10),
          Stories(),
          // Separador(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: publications.length,
            itemBuilder: (BuildContext context, int index) {
              return PublicationItem(publication: publications[index]);
            },
          ),
        ],
      ),
    );
  }
}

class Separador extends StatelessWidget {
  const Separador({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: double.infinity,
      child: Container(
        color: const Color(0xff18191b),
      ),
    );
  }
}
