import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 0.6, color: bluecolor),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("latest registered members",
                style: TextStyle(
                  color: bluecolor,
                )),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text(
                    "Name",
                    style: TextStyle(color: redcolor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Phone number",
                    style: TextStyle(color: redcolor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(color: redcolor),
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Text(
          fileInfo.title!,
          style: TextStyle(color: bluecolor),
        ),
      ),
      DataCell(Text(
        fileInfo.size!,
        style: TextStyle(color: bluecolor),
      )),
      DataCell(Text(
        fileInfo.date!,
        style: TextStyle(color: bluecolor),
      )),
    ],
  );
}
