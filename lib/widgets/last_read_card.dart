import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

class LastReadCard extends StatelessWidget {
  final String lastRead;

  const LastReadCard({
    super.key,
    required this.lastRead,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: 150,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xff22a06c),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xffd8eee7).withOpacity(1),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 0),
              )
            ],
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff22a06c),
                Color(0xff559E81),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    LineIcons.quran,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    'Terakhir Dibaca',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      lastRead,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Opacity(
              opacity: 0.4,
              child: SvgPicture.asset(
                'assets/images/ilustrasi-doa.svg',
                height: 130,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
