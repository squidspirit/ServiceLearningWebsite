import 'package:flutter/material.dart';
import 'package:the_basics/widgets/user_icon.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20),
        child: UserIcon(),
      )
    );
  }
}

