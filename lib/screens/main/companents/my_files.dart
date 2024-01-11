import 'package:flutter/material.dart';
import 'package:responsiv_adminpanel/models/MyFiles.dart';
import 'package:responsiv_adminpanel/responsive.dart';
import 'package:responsiv_adminpanel/screens/main/companents/file_info_card.dart';

import '../../../constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: defoultPadding * 1.5,
                    vertical:
                        defoultPadding / (Responsive.isMobile(context) ? 1 : 2),
                  ),
                  backgroundColor: primaryColor),
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: Text(
                "Add New",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: defoultPadding),
        Responsive(
            mobile: FileInfoCardGridView(
              crossAxisCount: _size.width < 650 ? 2 : 4,
              childAspectRatio: _size.width < 650 ? 1.3 : 1,
            ),
            tablet: FileInfoCardGridView(),
            desktop: FileInfoCardGridView(
              childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            ))
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: defoultPadding,
        crossAxisSpacing: defoultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}
