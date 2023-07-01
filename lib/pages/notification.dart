import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(LineIcons.angleLeft),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: const Center(
                child: Text('No Notification'),
              ),
            )
          ],
        ),
      )),
    );
  }
}
