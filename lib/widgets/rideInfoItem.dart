import 'package:flutter/material.dart';
import 'package:shutt_app/styles/colors.dart';

class RideInfoItem extends StatelessWidget {
  final String keyText;
  final String valueText;
  final double valueSize;
  final Color valueColor;
  final FontWeight valueWeight;
  const RideInfoItem(
      {super.key,
      required this.keyText,
      required this.valueText,
      this.valueColor = appColors.green,
      this.valueSize = 28,
      this.valueWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          keyText,
          style: const TextStyle(color: appColors.green, fontSize: 14),
        ),
        Text(valueText,
            style: TextStyle(
                color: valueColor,
                fontSize: valueSize,
                fontWeight: valueWeight)),
      ],
    );
  }
}
