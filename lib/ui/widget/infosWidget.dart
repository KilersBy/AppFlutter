import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Infos extends StatelessWidget {
  const Infos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Xefi Lyon',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            Text(
              '2507 Avenue de l\'Europe',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '69140 Rillieux-la-Pape',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '04 72 83 75 75',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'xefi@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child: Text(
                    'Advenir post multos Scudio Scutarioum tribunus \nvelamento subagrestis ingenii persuasionos opifex \ncallidus. qui eum adulabili sermone seriis.',
                    style: TextStyle(fontSize: 14))),
          ],
        ),
      ),
    );
  }
}
