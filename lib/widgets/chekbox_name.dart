import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxName extends StatelessWidget {
  var fstvalue;

  var scdvalue;

  var fstname;

  var scdname;

  var ontouch1;

  var ontouch;

  CheckBoxName(
      {required this.fstvalue,
      required this.scdvalue,
      required this.fstname,
      required this.scdname,
      required this.ontouch1,
      required this.ontouch});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Checkbox(
                value: fstvalue,
                onChanged: ontouch1,
              ),
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
              Checkbox(
                value: scdvalue,
                onChanged: ontouch,
              ),
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
}
