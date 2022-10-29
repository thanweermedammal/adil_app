import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CheckBoxName(@required fstvalue, @required scdvalue, @required fstname,
    @required scdname) {
  return Row(
    children: [
      Expanded(
        child: Row(
          children: [
            Checkbox(value: fstvalue, onChanged: (bool? newvalue) {}),
            Text(
              fstname,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Checkbox(value: scdvalue, onChanged: (bool? newvalue) {}),
            Text(
              scdname,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    ],
  );
}
