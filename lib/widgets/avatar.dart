import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String imageUrl;
  final double borde;

  const Avatar({
    super.key,
    required this.size,
    required this.imageUrl,
    this.borde = 0,
  });

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   clipBehavior: Clip.antiAlias,
    //   width: size,
    //   height: size,
    //   decoration: BoxDecoration(
    //     border: Border.all(
    //       color: const Color(0xff242527),
    //       width: borde,
    //     ),
    //     shape: BoxShape.circle,
    //     color: Colors.red,
    //     image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
    //   ),
    // );

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), // Radio de la circunferencia
        border: Border.all(
          color: const Color(0xff242527),
          width: borde,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          color: Colors.white, // El color de fondo que quieras
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


// BoxDecoration(
//         border: Border.all(
//           color: const Color(0xff242527),
//           width: borde,
//         ),
//         shape: BoxShape.circle,
//         color: Colors.red,
//         image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
//       ),