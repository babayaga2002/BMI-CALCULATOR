import 'package:flutter/material.dart';

Color activeCardColor = Color(0xFF191931);

class RoundButton extends StatelessWidget {
  const RoundButton({required this.icon, required this.onTap});
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap(),
      child: Icon(
        icon,
      ),
      shape: CircleBorder(),
      fillColor: activeCardColor,
    );
  }
}
