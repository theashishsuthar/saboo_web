import 'package:flutter/material.dart';

class BackgroundImg extends StatelessWidget {
  const BackgroundImg({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img/signup_bg.jpg',
            ),
            fit: BoxFit.cover,
            
          ),
        ),
      ),
    );
  }
}
