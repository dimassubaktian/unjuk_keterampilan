import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/utils/api.dart';
import 'package:unjuk_keterampilan/widgets/custome_appbar.dart';
// import 'package:line_icons/line_icons.dart';
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
          backgroundColor: const Color(0xFFFFFFFF),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const CustomAppBar(),
                const LastReadCard(),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      for (var item in _doaData)
                        DoaListCard(
                          id: item['id'],
                          title: item['doa'],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
