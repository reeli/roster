import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const OutlineButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return OutlinedButton(
      // style: ElevatedButton.styleFrom(
      //     primary: Color.fromRGBO(255, 0, 0, 1)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(text),
      ),
    );
  }
}
