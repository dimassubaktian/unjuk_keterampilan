import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/pages/about.dart';
import 'package:unjuk_keterampilan/pages/detail.dart';
import 'package:unjuk_keterampilan/utils/api.dart';
import 'package:unjuk_keterampilan/widgets/custome_appbar.dart';
import 'package:line_icons/line_icons.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:unjuk_keterampilan/widgets/doa_list_card.dart';
import 'package:unjuk_keterampilan/widgets/last_read_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _doaData = [];
  String lastRead = 'Tidak ada';
  String lastTitle = '';
  String lastAyat = '';
  String lastMeaning = '';
  String lastLatin = '';
  // late Future _fGetData;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(
        Uri.parse('${api}api'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _doaData = data;
        });
      }
    } catch (e) {
      // if (kDebugMode) {
      //   print(e);
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const CustomAppBar(),
              GestureDetector(
                onTap: () {
                  if (lastRead != 'Tidak ada') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: lastTitle,
                          ayat: lastAyat,
                          meaning: lastMeaning,
                          latin: lastLatin,
                        ),
                      ),
                    );
                  }
                },
                child: LastReadCard(
                  lastRead: lastRead,
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    for (var item in _doaData)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lastRead = item['doa'];
                            lastTitle = item['doa'];
                            lastAyat = item['ayat'];
                            lastLatin = item['latin'];
                            lastMeaning = item['artinya'];
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                title: item['doa'],
                                ayat: item['ayat'],
                                latin: item['latin'],
                                meaning: item['artinya'],
                              ),
                            ),
                          );
                        },
                        child: DoaListCard(
                          id: item['id'],
                          title: item['doa'],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ListTile(
                title: Text('Main Menu'),
              ),
              ListTile(
                horizontalTitleGap: 0,
                minLeadingWidth: 30,
                leading: const Icon(LineIcons.info),
                title: const Text('About'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
      ),
    );
  }
}
