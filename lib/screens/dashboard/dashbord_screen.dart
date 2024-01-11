import 'package:flutter/material.dart';
import 'package:responsiv_adminpanel/constants.dart';
import 'package:responsiv_adminpanel/responsive.dart';

import '../main/companents/header.dart';
import '../main/companents/my_files.dart';
import '../main/companents/recent_files.dart';
import '../main/companents/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defoultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defoultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defoultPadding,
                      ),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defoultPadding),
                      if (Responsive.isMobile(context)) Storage_details(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defoultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Storage_details(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
