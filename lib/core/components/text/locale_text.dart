import 'package:flutter/material.dart';

import '../../extensions/string_extension.dart';

class LocaleText extends StatelessWidget {
  final String value;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  const LocaleText(
      {super.key, required this.value, this.textStyle, this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(value.locale, style: textStyle, textAlign: textAlign);
  }
}
