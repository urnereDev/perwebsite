import 'package:flutter/material.dart';
import 'package:instagram_mention/instagram_mention.dart';
import 'package:random_text_reveal/random_text_reveal.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xffB4A5A5),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InstagramMention(
            text: "Barış Manço Özdemir",
            textStyle:
                TextStyle(color: Color(0xffB4A5A5), fontSize: 40, height: 1.7),
          ),
          SizedBox(height: 20),
          RandomTextReveal(
            text:
                "asdas adas dsadasdas dasdas sdasdas \nasdas dasd asd asd asd asdsadasd asd",
            duration: Duration(seconds: 2),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(
              color: Color(0xff222832),
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
