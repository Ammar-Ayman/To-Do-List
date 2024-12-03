import 'package:flutter/material.dart';
import 'package:to_do_list/core/configuration/items_routes_names.dart';
import 'package:to_do_list/feature/widget/custom_MaterialButton.dart';
import 'package:to_do_list/feature/widget/custom_TextFormField.dart';

import '../home/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisibil = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        image: const DecorationImage(
            image: AssetImage("Assets/images/background_log in.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: mediaQuery.height * 0.4),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.02),
                  child: Text(
                    "Welcome! Log-in",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: const Color(0xff2871a3),
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.04),
                CustomTextFormField(
                  controller: emailController,
                  label: "Email",
                  iconData: const Icon(
                    Icons.email,
                    size: 30,
                    color: Color(0xff2871a3),
                  ),
                  keyboard: TextInputType.emailAddress,
                  valid: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter email";
                    }
                    var regExp = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                    if (!regExp.hasMatch(value)) {
                      return "please enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: mediaQuery.height * 0.04),
                CustomTextFormField (
                    controller: passwordController,
                    label: "password",
                    obscureText: isVisibil,
                    iconData: GestureDetector(
                        onTap: () {
                          setState(() {});
                          isVisibil = !isVisibil;
                        },
                        child: Icon(
                          isVisibil == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 30,
                          color: const Color(0xff2871a3),
                        )),
                    keyboard: TextInputType.visiblePassword,
                    valid: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter password";
                      }
                      return null;
                    }),
                SizedBox(height: mediaQuery.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.04),
                  child: Text(
                    "Forget Password ?",
                    style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onSecondary, fontSize: 15),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.12),
                CustomMaterialButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
                    }
                  },
                  title: "Log-in",
                  iconsData: Icons.login_sharp,
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      "Don’t have an account?",
                      style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.onSecondary, fontSize: 12),
                    ),
                     InkWell(
                       onTap: () {
                         Navigator.pushReplacementNamed(context, ItemsRouteName.signUpView);
                       },
                       child: Text(
                         " Sign-Up",
                         style: theme.textTheme.titleLarge?.copyWith(
                             color:const Color(0xff2871a3), fontSize: 15),
                       ),
                     )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
