import 'package:flutter/material.dart';
import 'package:responsiv_adminpanel/constants.dart';
import 'package:responsiv_adminpanel/screens/main/companents/chart.dart';
import 'package:responsiv_adminpanel/screens/main/companents/storage_info.dart';

class Storage_details extends StatelessWidget {
  const Storage_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defoultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Storage Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: defoultPadding),
            Chart(),
            StorageInfoCard(
              svgSrc: "icons/Documents.svg",
              title: "Document Files",
              amountOfFiles: "1.3GB",
              numOfFiles: 1329,
            ),
            StorageInfoCard(
              svgSrc: "icons/Media.svg",
              title: "Media Files",
              amountOfFiles: "1.53GB",
              numOfFiles: 1329,
            ),
            StorageInfoCard(
              svgSrc: "icons/folder.svg",
              title: "Other Files",
              amountOfFiles: "1.3GB",
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: "icons/unknown.svg",
              title: "Unknown Files",
              amountOfFiles: "1.3GB",
              numOfFiles: 140,
            ),
          ]),
    );
  }
}