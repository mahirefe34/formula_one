import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  const NormalButton({super.key, this.child, this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, style: style, child: child);
  }
}
