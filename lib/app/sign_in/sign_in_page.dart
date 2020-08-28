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
          SizedBox(height: 8.0),
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
          SignInButton(
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
