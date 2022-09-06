import 'package:flutter/material.dart';
import '../../model/user.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user == null) {
      //not logged in
      // show user authentication pages
      return Text('User Not Logged in');
    }
    // show app content
    return Text('User Logged in');
  }
}
