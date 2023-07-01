import 'package:flutter/material.dart';

class DoaListCard extends StatelessWidget {
  final String id;
  final String title;
  const DoaListCard({
    super.key,
    required this.id,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
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
        child: Row(
          children: [
            // number
            Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF26a680),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  id,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(width: 15),
            // doa name
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xff1a5c48),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
