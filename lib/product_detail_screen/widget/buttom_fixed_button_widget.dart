import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtomFixedButtonWidget extends StatelessWidget {
  VoidCallback onPressed;
  ButtomFixedButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      animationDuration: const Duration(
        milliseconds: 300,
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )),
      elevation: 0,
      onPressed: onPressed,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      height: 56 + MediaQuery.of(context).padding.bottom,
      minWidth: MediaQuery.of(context).size.width,
      color: Colors.purple,
      child: const Text(
        'Add to Cart',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
