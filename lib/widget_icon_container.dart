import "package:flutter/material.dart";

class WidgetIconContainer extends StatelessWidget {
  double    size;
  Color     color;
  IconData  icon;

  WidgetIconContainer(this.icon, {this.color = Colors.white, this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}