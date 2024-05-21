import 'package:flutter/material.dart';
import 'package:ui_application/ui_application.dart';

class PhotoButton extends StatelessWidget {
  const PhotoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Padding(
      padding: EdgeInsets.all(3),
      child: Icon(
        Icons.photo_camera,
        color: UIApplicationColors.quickSilver,
      ));
}
