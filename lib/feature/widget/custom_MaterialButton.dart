import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;
  final IconData? iconsData;
  final Function()? onPressed;

  const CustomMaterialButton(
      {super.key,
      required this.title,
       this.iconsData,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.sizeOf(context);
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.06),
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: mediaQuery.height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: theme.colorScheme.secondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.titleLarge
                    ?.copyWith(color: Colors.white, fontSize: 18),
              ),
              Icon(iconsData, size: 25, color: Colors.white),
            ],
          ),
        ));
  }
}
