import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Center(
                        child: Text(
                          'Developer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Center(
                        child: Text('Dimas Subaktianto'),
                      ),
                      Center(
                        child: Text(
                          'Sumber API',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Center(
                        child: Text('https://doa-doa-api-ahmadramadhan.fly.dev/'),
                      ),
                      Center(
                        child: Text(
                          'Referensi Desain',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'https://dribbble.com/shots/15829632-Quran-Mazid-App-Design-Concept/attachments/7646845?mode=media',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
