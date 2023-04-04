import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final bool redContainer;

  const CircleButton({
    super.key,
    required this.color,
    required this.iconData,
    this.redContainer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                color: const Color(0xff242527),
                size: 16,
              ),
            ),
            // redContainer
            //     ? Positioned(
            //         top: -3,
            //         right: 0,
            //         child: Container(
            //           width: 13,
            //           height: 13,
            //           decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: Colors.red,
            //               border: Border.all(
            //                 width: 3,
            //                 color: Colors.white,
            //               )),
            //         ))
            //     : Container(
            //         height: 0,
            //       )

            if (redContainer)
              Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        // shape: BoxShape.circle,
                        // color: Colors.red,
                        border: Border.all(
                          width: 3,
                          color: const Color(0xff242527),
                        )),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          color: Colors.red, // El color de fondo que quieras
                        )),
                  ))
          ],
        ),
      ),
    );
  }
}
