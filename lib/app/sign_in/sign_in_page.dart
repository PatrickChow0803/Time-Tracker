import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Time Tracker")),
        elevation: 2.0,
      ),
      body: _buildContainer(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        // centers the buttons across the main Axis
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48.0),
//          Now using a SignInButton (Which extends from CustomRaisedButton) instead
//          CustomRaisedButton(
//            child: Text(
//              'Sign in with Google',
//              style: TextStyle(
//                color: Colors.black87,
//                fontSize: 15.0,
//              ),
//            ),
//            color: Colors.white,
//            onPressed: () {},
//            borderRadius: 16.0,
//          ),
          CustomRaisedButton(
            child: Row(
                // Use spaceBetween to have the widgets have proper spacing.
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/google-logo.png'),
                  Text('Sign in with Google'),
                  // The Image asset is here to help with spacing. The opacity widget is to make the image widget invisible.
                  // When you want to make widgets space evenly, use the widget that uses the same amount of space. In this case, another Image Asset
                  Opacity(
                      opacity: 0.0,
                      child: Image.asset('images/google-logo.png')),
                ]),
            color: Colors.white,
            onPressed: () {},
          ),
          SignInButton(
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 16.0),
          SignInButton(
            text: 'Sign in with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          SizedBox(height: 16.0),
          SignInButton(
            text: 'Sign in with Email',
            textColor: Colors.white,
            color: Colors.teal[700],
            onPressed: () {},
          ),
          SizedBox(height: 16.0),
          Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SignInButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime[300],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
