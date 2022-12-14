import 'package:flutter/material.dart';

class CostumBotton extends StatelessWidget {
  const CostumBotton({super.key, required this.onpressed});
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: () => onpressed(),
      child: Material(
        color: Colors.teal,
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text("get advice"),
          ),
        ),
      ),
    );
  }
}
