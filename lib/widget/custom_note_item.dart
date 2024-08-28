import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffFFCC80),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'Build your career with Yoda',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 16),
              child: Text(
                'may21,2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
