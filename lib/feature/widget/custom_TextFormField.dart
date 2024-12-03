import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Widget? iconData;
  final FormFieldValidator<String>? valid;
  final TextInputType? keyboard;
  bool obscureText;

   CustomTextFormField({super.key,
    required this.controller,
    required this.label,
    this.iconData,
    this.valid,
    this.keyboard,
    this.obscureText = false
    });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery
          .sizeOf(context)
          .width * 0.04),
      child: TextFormField(

        controller: controller,
        validator: valid,
        obscureText:obscureText ,
        cursorColor: theme.colorScheme.onSecondary,
        keyboardType: keyboard,


        style: TextStyle(
            color: theme.colorScheme.onSecondary,
            fontSize: 18,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(

          label: Text(
            label,
            style: const TextStyle(
                color: Color(0xff2871a3),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          suffixIcon: iconData,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff2871a3), width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff2871a3), width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorStyle:const TextStyle(
              color: Colors.red,
              fontSize: 15,
              fontWeight: FontWeight.bold) ,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),

        ),
      ),
    );
  }
}
