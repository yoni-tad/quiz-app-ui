import 'package:flutter/material.dart';
import 'package:quiz_app_ui/utilities/color.dart';

class ChooseList extends StatelessWidget {
  final bool isAnswer;
  final String text;
  const ChooseList({super.key, required this.isAnswer, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: isAnswer ? AppColor.black.withOpacity(0.1) : AppColor.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 22,
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
