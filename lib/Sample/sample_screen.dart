import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'This is the teams screen.',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
