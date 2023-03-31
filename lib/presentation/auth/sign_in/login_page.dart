import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:untitled2/di/router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showClear = true;
  bool disable = false;
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  final TextEditingController _controllerAcc = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateAcc(String? value) {
    if ((value == null || value.trim() == "")) {
      return "Mật khẩu là bắt buộc";
    } else if (_controllerAcc.text != "" && _controllerAcc.text.length < 6) {
      return "Tài khoản phải có ít nhất 6 ký tự";
    }
    return null;
  }

  String? validatePass(String? value) {
    if ((value == null || value.trim() == "")) {
      return "Mật khẩu là bắt buộc";
    } else if (_controllerPass.text != "" && _controllerPass.text.length < 6) {
      return "Mật khẩu phải có ít nhất 6 ký tự";
    }
    return null;
  }

  late FocusNode focus;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: context.surfaceColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Image.asset("assets/images/login.png", fit: BoxFit.cover),
           Center(
             child: Text("Welcome", style: context.titleLarge?.bold,),
           ),
            AppSpacing.large,
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _controllerAcc,
                      enabled: !(disable == true),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (disable == true) {
                          return null;
                        } else {
                          return validateAcc(value);
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter user name",
                          labelText: "User name",
                          suffixIcon: AnimatedBuilder(
                            animation: _controllerAcc,
                            builder:(_, __) => Visibility(
                              visible: _controllerAcc.text.isNotEmpty,
                              child: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  _controllerAcc.clear();
                                },
                              ),
                            ),
                          )
                      ),
                    ),
                  ),
                  AppSpacing.normal,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:  TextFormField(
                      controller: _controllerPass,
                      obscureText: showClear,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return validatePass(value);
                      },
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              showClear = !showClear;
                            });
                          }, icon: Icon(showClear ? Icons.visibility_off : Icons.visibility))
                      ),
                    ),
                  ),
                ],
              )
            ),

            AppSpacing.large,
            ElevatedButton(onPressed: () {
              FocusScope.of(context).unfocus();
              if (_formKey.currentState?.validate() == true) {
                if (mounted) {
                  Navigator.pushNamed(context, AppRouters.home);
                }
              }
            }, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
