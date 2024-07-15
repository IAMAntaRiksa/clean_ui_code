import 'package:flutter/material.dart';

class ProductDetailHeaderWidget extends StatelessWidget {
  final String image;
  const ProductDetailHeaderWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
