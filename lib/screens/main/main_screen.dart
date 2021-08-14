import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final bool? isadmin;
  MainScreen({this.isadmin});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(
        isadmin: isadmin,
      ),
      body: Container(
        alignment: Alignment.center,
        // constraints: BoxConstraints(maxHeight: 400, minHeight: 200),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/bg.png",
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(
                  isadmin: isadmin,
                ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
