import 'package:district_foridpur_police/pages/leave_application.dart';
import 'package:district_foridpur_police/pages/leave_history.dart';
import 'package:district_foridpur_police/pages/message_person.dart';
import 'package:district_foridpur_police/pages/search_notice_page.dart';

import '../pages/add_notice.dart';
import '../pages/dashbord.dart';
import '../pages/notice_page.dart';
import '../pages/profile_page.dart';
import '../pages/search_notice.dart';

import '../pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'District Foridpur Police',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        DashBordPage.routeName: (context) => const DashBordPage(),
        ProfilePage.routeName: ((context) => const ProfilePage()),
        NoticePage.routeName: ((context) => const NoticePage()),
        AddNoticePage.routeName: ((context) => AddNoticePage()),
        SearchNotice.routeName: ((context) => const SearchNotice()),
        SearchNoticePage.routeName: ((context) => const SearchNoticePage()),
        LeaveHistory.routeName: ((context) => LeaveHistory()),
        MessagePersonPage.routeName: ((context) => const MessagePersonPage()),
        LeaveApplicationPage.routeName: ((context) =>
            const LeaveApplicationPage()),
      },
    );
  }
}
