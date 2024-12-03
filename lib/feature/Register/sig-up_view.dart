import 'package:flutter/material.dart';

import '../../core/configuration/items_routes_names.dart';
import '../home/home_view.dart';
import '../widget/custom_MaterialButton.dart';
import '../widget/custom_TextFormField.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isVisibil = false;
  bool isVisibil1 = false;

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
                SizedBox(height: mediaQuery.height * 0.36),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.02),
                  child: Text(
                    "Create Account",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: const Color(0xff2871a3),
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                CustomTextFormField(
                  controller: emailController,
                  label: "Create Email",
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
                SizedBox(height: mediaQuery.height * 0.02),
                CustomTextFormField(
                    controller: confirmPasswordController,
                    label: "Create-password",
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
                      var regExp = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
                      if (!regExp.hasMatch(value)) {
                        return "please enter a valid password";
                      }
                      return null;
                    }),
                SizedBox(height: mediaQuery.height * 0.02),
                CustomTextFormField(
                    controller: passwordController,
                    label: "Confirm-Password",
                    obscureText: isVisibil1,
                    iconData: GestureDetector(
                        onTap: () {
                          setState(() {});
                          isVisibil1 = !isVisibil1;
                        },
                        child: Icon(
                          isVisibil1 == true
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
                      var regExp = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
                      if (!regExp.hasMatch(value)) {
                        return "please enter a valid password";
                      }
                      return null;
                    }),
                SizedBox(height: mediaQuery.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.04),
                  child: Text(
                    "I agree with privacy policy",
                    style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onSecondary, fontSize: 15),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.08),
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
                  title: "Sign-Up",
                  iconsData: Icons.login_sharp,
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "you already have an account?",
                      style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.onSecondary, fontSize: 12),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, ItemsRouteName.loginView);
                      },
                      child: Text(
                        " Log-in",
                        style: theme.textTheme.titleLarge?.copyWith(
                            color: const Color(0xff2871a3), fontSize: 15),
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
