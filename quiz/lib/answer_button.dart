import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // by default it is optional to pass values to a constructor, this makes it non-optional
  const AnswerButton({
    super.key,
    required this.optionText,
    required this.onSelect,
  });

  final String optionText;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 46, 11, 217),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          )),
      onPressed: onSelect,
      child: Text(
        optionText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
