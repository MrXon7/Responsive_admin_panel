import 'package:flutter/material.dart';
import 'package:responsiv_adminpanel/constants.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.svgSrc,
      required this.title,
      required this.totalStorage,
      required this.numOfFiles,
      required this.percentage,
      required this.color});
}

List demoMyFiles = [
  CloudStorageInfo(
      svgSrc: 'icons/Documents.svg',
      title: "Documents",
      totalStorage: "1.9GB",
      numOfFiles: 1328,
      percentage: 35,
      color: primaryColor),
  CloudStorageInfo(
    svgSrc: 'icons/google_drive.svg',
    title: "Google Drive",
    totalStorage: "1.9GB",
    numOfFiles: 1328,
    percentage: 35,
    color: Color(0xFFFFA113),
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: "icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Drop Box",
    numOfFiles: 5328,
    svgSrc: "icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
