import 'package:flutter/material.dart';

class ReusableTile extends StatelessWidget {
  ReusableTile({required this.color, this.tileChild, this.onTapFunction});
  final Color color;
  final tileChild;
  final VoidCallback? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        child: tileChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
