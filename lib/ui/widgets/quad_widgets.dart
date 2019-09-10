import 'package:flutter/material.dart';

class QuadWidgets extends StatelessWidget {
  final IconData icon;
  final String name;
  final Widget link;

  QuadWidgets(this.icon, this.name, this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 6),
              blurRadius: 20.0,
            )
          ]),
      child: GestureDetector(
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 50,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => link));
        },
      ),
    );
  }
}
