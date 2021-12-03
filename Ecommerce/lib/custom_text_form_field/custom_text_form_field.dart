import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  var validator;
  var keyboardtype;
  var onSaved;
  String? hint;
  CustomTextFormField({
    required this.validator,
    required this.keyboardtype,
    required this.onSaved,
    this.hint
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator,
        keyboardType: keyboardtype,
        onSaved: onSaved,
        decoration: InputDecoration(
          fillColor: grey,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.all(20.0),
          //when you open the app to the login screen and click on the text field
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          //when there is no action on the textfield
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          //when you finished writing in the text field and start in the next one
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
