import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/custom_text_form_field/custom_text_form_field.dart';
import 'package:plant_app/custom_text_form_field/custom_text_form_field_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text("Login"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          //TO link the two text fields (whe there is error etc..)
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 12),
              CustomTextFormField(
                validator: (value) {
                  if (!(value.contains('@')) ||
                      !(value.contains('.com')) ||
                      value.isEmpty) {
                    return "please enter correct email";
                  } else {
                    return null;
                  }
                },
                keyboardtype: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value;
                },
                hint: 'Email',
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              CustomTextFormFieldPass(
                validator: (value) {
                  if (value.isEmpty) {
                    return "please enter Email";
                  } else {
                    if (value.length < 3) {
                      return "must be more than 2 characters";
                    } else {
                      return null;
                    }
                  }
                },
                onSaved: (value) {
                  password = value;
                },
                hintText: 'Password',
               // obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              MaterialButton(onPressed: (){
                _formKey.currentState!.save();
                if(_formKey.currentState!.validate()){
                  LoginApi(email!,password!);
                }
              },
              color: Colors.red,
              child: Text("login"),),
            ],
          ),
        ),
      ),
    );
  }

  void LoginApi(String email,String password) {

  }
}
