import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCD7B),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text(
            "Flutter Tips",
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              "Build Your Career With Tharwat Samy",
              style: TextStyle(color: Color(0xff9A7747), fontSize: 19),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
             
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 16,top: 16),
          child: Text(
            "May,22 2023",
            style: TextStyle(
              color: Color(0xff9A7747),
              fontSize: 16
            ),
          ),
        )
      ]),
    );
  }
}
