import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final RenderBox box = context.findRenderObject() as RenderBox;
        final Offset offset = box.localToGlobal(Offset.zero);
        showMenu(
          context: context,
          position: RelativeRect.fromSize(
            offset.translate(0, box.size.height + 10) & Size(box.size.width, 0),
            MediaQuery.of(context).size
          ),
          items: <PopupMenuEntry>[
            PopupMenuItem(
              child: Row(
                children: [
                  Text(FirebaseAuth.instance.currentUser?.displayName ?? "<name>"),
                  SizedBox(width: 10),
                  Text(FirebaseAuth.instance.currentUser?.email ?? "<email>"),
                ],
              )
            ),
            PopupMenuDivider(height: 10),
            PopupMenuItem(
              onTap: () => FirebaseAuth.instance.signOut(),
              child: Text("登出")
            ),
          ],
        );
      },
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser?.photoURL ?? "")
      ),
    );
  }
}