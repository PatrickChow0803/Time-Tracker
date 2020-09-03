import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    String assetName,
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Row(
              // Use spaceBetween to have the widgets have proper spacing.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(assetName),
                Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 15.0),
                ),
                // The Image asset is here to help with spacing. The opacity widget is to make the image widget invisible.
                // When you want to make widgets space evenly, use the widget that uses the same amount of space. In this case, another Image Asset
                Opacity(opacity: 0.0, child: Image.asset(assetName)),
              ]),
          onPressed: onPressed,
          color: color,
        );
}
