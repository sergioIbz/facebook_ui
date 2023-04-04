import 'package:facebook_ui/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';

import 'quick_buttom.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.transparent,
        height: 70,
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: 20,
            ),
            QuickButtom(
              color: Colors.green,
              texto: 'Gallery',
              icono: CustomIcons.photos,
            ),
            QuickButtom(
              color: Colors.blue,
              texto: 'Tag Friends',
              icono: CustomIcons.user_friends,
            ),
            QuickButtom(
              color: Colors.red,
              texto: 'Live',
              icono: CustomIcons.video_camera,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
