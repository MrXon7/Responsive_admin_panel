import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsiv_adminpanel/controllers/MenuController.dart';
import 'package:responsiv_adminpanel/responsive.dart';
import 'package:responsiv_adminpanel/screens/main/companents/side_menu.dart';

import '../dashboard/dashbord_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            Expanded(
              // flex defoult xolatda 1 ga teng bo'ladi
              // bu asosiy onaning 1/6 qismini egallaydi
              child: SideMenu(),
            ),
          Expanded(
              // asosiy oinaning 5/6 qisimini egallaydi
              flex: 5,
              child: DashboardScreen()),
        ]),
      ),
    );
  }
}
