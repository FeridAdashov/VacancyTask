import 'package:flutter/material.dart';

class ShowCurrentPageIndicator extends StatelessWidget {
  final bool isActive;
  final double height;
  final Widget widget;

  const ShowCurrentPageIndicator({
    this.isActive = false,
    required this.widget,
    this.height = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: widget,
        height: height,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive ? Colors.black87 : Colors.black26,
        ),
      ),
    );
  }
}
