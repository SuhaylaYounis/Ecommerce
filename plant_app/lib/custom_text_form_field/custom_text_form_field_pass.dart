import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

class CustomTextFormFieldPass extends StatefulWidget {
  final String? hintText;
  var validator;
  var onSaved;
  // final bool isPassword
  var keyboardType;
  final String? helperText;
  final String initialValue;
  var onEditingComplete;
  var textInputAction;
  //initially password is obscure
  bool obscureText;

  CustomTextFormFieldPass(
      {this.hintText,
      this.validator,
      this.onSaved,
      this.keyboardType,
      this.helperText,
      this.initialValue = "",
      this.onEditingComplete,
      this.textInputAction,
      this.obscureText = true});

  @override
  _CustomTextFormFieldPassState createState() =>
      _CustomTextFormFieldPassState();
}

class _CustomTextFormFieldPassState extends State<CustomTextFormFieldPass> {
  //to show and not show the password
  void _toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: widget.validator,
        keyboardType: TextInputType.visiblePassword,
        onSaved: widget.onSaved,
        obscureText: widget.obscureText,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          isDense: true,
          suffixIcon: FlatButton(
            onPressed: _toggle,
            child: widget.obscureText
                ? Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.black12,
                  )
                : Icon(
                    Icons.remove_red_eye,
                    color: Colors.black12,
                  ),
          ),
          fillColor:grey,
          filled: true,
          hintText: widget.hintText,

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
