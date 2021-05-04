import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final bool isActive;
  final String text;
  final Function changeStatus;

  const ChoiceButton({
    this.isActive = false,
    required this.changeStatus,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => changeStatus,
      child: Container(
        height: 40,
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isActive ? Colors.black87 : Colors.black26),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
