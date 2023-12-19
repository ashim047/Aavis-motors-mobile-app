import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class CusDropDown extends StatelessWidget {
  final String hint;
  const CusDropDown({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child: DropDownTextField(
        textFieldDecoration: InputDecoration(hintText: hint),
        listSpace: 5,
        listPadding: ListPadding(top: 5),
        enableSearch: true,
        validator: (value) {
          if (value == null) {
            return "Required field";
          } else {
            return null;
          }
        },
        dropDownList: const [
          DropDownValueModel(name: 'BMW', value: "red"),
          DropDownValueModel(name: 'Lambo', value: "value2"),
          DropDownValueModel(name: 'Honda', value: "value3"),
          DropDownValueModel(name: 'name4', value: "value4"),
          DropDownValueModel(name: 'name5', value: "value5"),
          DropDownValueModel(name: 'name6', value: "value6"),
          DropDownValueModel(name: 'name7', value: "value7"),
          DropDownValueModel(name: 'name8', value: "value8"),
        ],
        listTextStyle: const TextStyle(color: Colors.red),
        dropDownItemCount: 8,
        onChanged: (val) {},
      ),
    );
  }
}
