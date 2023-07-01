import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            LineIcons.bars,
            color: Color(0xff000000),
          ),
        ),
        const Text(
          'DO\'A HARIAN',
          style: TextStyle(
            color: Color(0xff0f543f),
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(LineIcons.bell),
        )
      ],
    );
  }
}
