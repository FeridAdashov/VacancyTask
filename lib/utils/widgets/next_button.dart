import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function tapFunction;

  const NextButton({
    required this.tapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () => tapFunction,
        child: Text(
          'Next',
          style:
              TextStyle(color: Colors.white70, fontSize: 16, letterSpacing: 2),
        ),
      ),
    );
  }
}
