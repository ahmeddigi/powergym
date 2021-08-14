import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  bool? isadmin;
  SideMenu({
    @required this.isadmin,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/logo.png"),
          ),
          DrawerListTile(
            title: "Dashbord",
            svgSrc: Icons.dashboard,
            press: () {},
          ),
          isadmin!
              ? DrawerListTile(
                  title: "Super visors",
                  svgSrc: Icons.person_pin,
                  press: () {},
                )
              : Container(),
          DrawerListTile(
            title: "Members",
            svgSrc: Icons.people,
            press: () {},
          ),
          isadmin!
              ? DrawerListTile(
                  title: "Finance",
                  svgSrc: Icons.monetization_on,
                  press: () {},
                )
              : Container(),
          DrawerListTile(
            title: "Logout",
            svgSrc: Icons.logout,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        svgSrc,
        color: redcolor,
        size: 22,
      ),
      title: Text(
        title,
        style: TextStyle(color: bluecolor),
      ),
    );
  }
}
