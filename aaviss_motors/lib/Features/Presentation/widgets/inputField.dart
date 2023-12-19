import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final VoidCallback? ontap;
  final initial;
  final TextController;
  final IconData? icons;
  final HintText;
  final bool readonly;
  final TextInputType? keyboardtype;
  final inputformatter;
  final Validator;
  final labeltext;
  final FormFieldSetter? onSaved;
  InputField(
      {Key? key,
      required this.HintText,
      this.icons,
      this.ontap,
      this.TextController,
      required this.readonly,
      this.keyboardtype,
      this.inputformatter,
      this.Validator,
      this.labeltext,
      this.onSaved,
      this.initial})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child: TextFormField(
        initialValue: initial,
        onSaved: onSaved,
        validator: Validator,
        readOnly: readonly,
        keyboardType: keyboardtype,
        controller: TextController,
        inputFormatters: inputformatter,
        decoration: InputDecoration(
            labelText: labeltext,
            hintText: HintText,
            suffixIcon: IconButton(onPressed: ontap, icon: Icon(icons))),
      ),
    );
  }
}
