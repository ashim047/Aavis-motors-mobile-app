import 'package:flutter/material.dart';

Expanded CusRadioButton(status, onchanged, value, Text text) {
  return Expanded(
    child: RadioListTile(
        contentPadding: EdgeInsets.all(0),
        title: text,
        value: value,
        groupValue: status,
        onChanged: onchanged),
  );
}
