import 'package:flutter/material.dart';
class ReUsableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;
  const ReUsableCard({
    Key key,
    @required this.color,
    this.onPress,

    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),

        ),
        child: child,
      ),
    );
  }
}