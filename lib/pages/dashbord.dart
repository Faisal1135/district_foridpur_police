import 'package:district_foridpur_police/helper.dart';
import 'package:district_foridpur_police/pages/message_person.dart';
import 'package:district_foridpur_police/pages/notice_page.dart';
import 'package:district_foridpur_police/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

class DashBordPage extends StatelessWidget {
  const DashBordPage({Key? key}) : super(key: key);
  static const String routeName = '/dashbord';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBorad'),
      ),
      body: <Widget>[
        <Widget>[
          Styled.icon(
            Icons.people_rounded,
            size: 40,
          )
              .padding(all: 10)
              .decorated(shape: BoxShape.circle, color: Colors.orange.shade300),
          const SizedBox(height: 10),
          Styled.text(
            "Md. Sajehur Rahman",
            style: const TextStyle(fontSize: 20),
          ),
        ]
            .toColumn(mainAxisAlignment: MainAxisAlignment.center)
            .aspectRatio(aspectRatio: 1 / 0.5)
            .card(margin: const EdgeInsets.all(20))
            .center()
            .gestures(onTap: () {
          Navigator.pushNamed(context, ProfilePage.routeName);
        }),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  HelperUtils.cardItemOnDashBoard(
                      icon: Icons.notification_add,
                      color: Colors.pink,
                      onTap: () {
                        Navigator.pushNamed(context, NoticePage.routeName);
                      },
                      txt: "Notice"),
                  HelperUtils.cardItemOnDashBoard(
                      icon: Icons.edit,
                      color: Colors.lime,
                      txt: "Leave Application"),
                  HelperUtils.cardItemOnDashBoard(
                      onTap: () {
                        Navigator.pushNamed(
                            context, MessagePersonPage.routeName);
                      },
                      icon: Icons.message,
                      color: Colors.green,
                      txt: "Message"),
                  HelperUtils.cardItemOnDashBoard(
                      icon: Icons.logout, color: Colors.orange, txt: "Log out"),
                ]),
          ),
        ),
      ].toColumn(),
    );
  }
}
