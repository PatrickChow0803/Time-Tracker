import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    @required this.child,
    @required this.color,
    this.borderRadius: 15.0,
    this.height: 50.0,
    @required this.onPressed,
  });
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
//        style: ButtonStyle(elevation: MaterialStateProperty<double>),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          primary: color,
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
