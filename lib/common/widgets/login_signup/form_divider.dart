import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
            child: Divider(
                color: dark ? TColors.darkGrey : TColors.grey,
                thickness: 3.0,
                indent: 60,
                endIndent: 5)),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
                color: dark ? TColors.darkGrey : TColors.grey,
                thickness: 3.0,
                indent: 5,
                endIndent: 60))
      ],
    );
  }
}