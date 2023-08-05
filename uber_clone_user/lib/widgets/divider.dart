import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 16),
      child: const Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey,
      ),
    );
  }
}