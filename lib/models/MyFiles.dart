import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;

  final IconData? icon;

  final String? subtitle;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.icon,
    this.svgSrc,
    this.subtitle,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Income This Month",
    subtitle: "200000 MRU",
    numOfFiles: 1328,
    icon: Icons.attach_money,
    color: Colors.green.shade400,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Active mebers",
    subtitle: "120",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    icon: Icons.circle_rounded,
    color: Colors.green.shade400,
    totalStorage: "2.9GB",
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Inactive Mebers",
    numOfFiles: 1328,
    subtitle: "20",
    svgSrc: "assets/icons/one_drive.svg",
    icon: Icons.circle_rounded,
    color: redcolor,
    totalStorage: "1GB",
    percentage: 10,
  ),
];

List demo = [
  CloudStorageInfo(
    title: "Active mebers",
    subtitle: "120",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    icon: Icons.circle_rounded,
    color: Colors.green.shade400,
    totalStorage: "2.9GB",
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Inactive Mebers",
    numOfFiles: 1328,
    subtitle: "20",
    svgSrc: "assets/icons/one_drive.svg",
    icon: Icons.circle_rounded,
    color: redcolor,
    totalStorage: "1GB",
    percentage: 10,
  ),
];
