import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Jalal D. Alkhotami"),
            accountEmail: Text("jalaldalkhotami@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/img/ace.png'),
            ),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTitlePressed:(){}
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTitlePressed:(){}
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTitlePressed:(){}
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTitlePressed:(){}
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTitlePressed:(){}
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTitlePressed:(){}
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTitlePressed;
  const DrawerListTile({
    Key? key,
    this.iconData,
    this.title,
    this.onTitlePressed
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTitlePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}