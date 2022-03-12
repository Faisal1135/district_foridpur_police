import 'package:district_foridpur_police/helper.dart';
import 'package:district_foridpur_police/pages/add_notice.dart';
import 'package:district_foridpur_police/pages/leave_application.dart';
import 'package:district_foridpur_police/pages/leave_history.dart';
import 'package:district_foridpur_police/pages/search_notice.dart';
import 'package:district_foridpur_police/pages/search_notice_page.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  static const routeName = '/NoticePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notice'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SearchNotice.routeName);
                },
                icon: const Icon(Icons.search))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, AddNoticePage.routeName);
          },
          child: const Icon(Icons.add),
        ),
        body: <Widget>[
          const Text(
            'Leave History',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
              .padding(all: 20)
              .center()
              .card(
                margin: const EdgeInsets.all(10),
              )
              .gestures(onTap: () {
            Navigator.pushNamed(context, LeaveHistory.routeName);
          }),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Search Notice',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
              .padding(all: 20)
              .center()
              .card(
                margin: const EdgeInsets.all(10),
              )
              .gestures(onTap: () {
            Navigator.pushNamed(context, SearchNoticePage.routeName);
          }),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Leave Application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
              .padding(all: 20)
              .center()
              .card(
                margin: const EdgeInsets.all(10),
              )
              .gestures(onTap: () {
            Navigator.pushNamed(context, LeaveApplicationPage.routeName);
          }),
        ].toColumn().parent(HelperUtils.makeScrollPage));
  }
}
