import 'package:flutter/material.dart';
import 'package:flutter_app/shared/AppColors.dart';

class OrWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      child: Row(
        children: [
          divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(
                color: AppColors.gray
              ),
            ),
          ),
          divider()
        ],
      ),
    );
  }
}

Expanded divider() {
  return Expanded(
    child: Divider(
      color: Colors.grey,
      height: 1.5,
    ),
  );
}