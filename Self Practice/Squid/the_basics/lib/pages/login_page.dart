import 'package:flutter/material.dart';
import 'package:the_basics/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => AuthService().signInWithGoogle(),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey[200]
              ),
              child: Image.asset(
                "assets/images/google_icon.png",
                height: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}