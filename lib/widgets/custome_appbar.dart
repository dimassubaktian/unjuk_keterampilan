import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:unjuk_keterampilan/pages/notification.dart';

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
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationPage(),
              ),
            );
          },
          icon: const Icon(LineIcons.bell),
        )
      ],
    );
  }
}
