import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.verified_user,
                size: 50.0,
                color: Colors.white60,
              ),
            ),
            DrawerListTile(
                title: 'Dashboard',
                icon: const Icon(Icons.home_max_outlined),
                press: () {}),
            DrawerListTile(
                title: 'Transaction',
                icon: const Icon(Icons.monetization_on_outlined),
                press: () {}),
            DrawerListTile(
                title: 'Task', icon: const Icon(Icons.task_alt), press: () {}),
            DrawerListTile(
                title: 'Notification',
                icon: const Icon(Icons.notifications),
                press: () {}),
            DrawerListTile(
                title: 'Profile',
                icon: const Icon(Icons.account_circle_outlined),
                press: () {}),
            DrawerListTile(
                title: 'Settings',
                icon: const Icon(Icons.settings),
                press: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    @required this.title,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String? title;
  final Icon? icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: icon,
      onTap: press,
      title: Text('$title'),
    );
  }
}
