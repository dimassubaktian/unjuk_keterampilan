import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String ayat;
  final String latin;
  final String meaning;
  const DetailPage({
    super.key,
    required this.title,
    required this.ayat,
    required this.meaning,
    required this.latin,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Custom AppBar
              Row(
                children: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(LineIcons.angleLeft),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Color(0xff1a5c48),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    splashRadius: 0.1,
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.angleLeft,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.1),
                        spreadRadius: 0.1,
                        blurRadius: 7,
                        offset: const Offset(0, 0),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'بِسْمِ اللّهِ الرَّحْمَنِ الرَّحِيْ',
                        style: TextStyle(
                          color: Color(0xff1a5c48),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color(0xff1a5c48),
                      ),
                      Text(
                        ayat,
                        style: const TextStyle(
                          color: Color(0xff1a5c48),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        latin,
                        style: const TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        meaning,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
