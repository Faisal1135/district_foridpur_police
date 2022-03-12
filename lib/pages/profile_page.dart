import 'package:district_foridpur_police/helper.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const routeName = '/ProfilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: const Text('ProfilePage'),
      ),
      body: <Widget>[
        <Widget>[
          Styled.icon(Icons.person, size: 50, color: Colors.cyan)
              .padding(all: 10)
              .decorated(shape: BoxShape.circle, color: Colors.white),
          const SizedBox(height: 10),
          Styled.text('Md. Sajedur Rahaman',
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))
              .center(),
        ]
            .toColumn(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            )
            .padding(vertical: 40)
            .decorated(color: const Color.fromARGB(255, 0, 212, 106)),
        <Widget>[
          Styled.text('Bp No ', style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Styled.text("bp8202106350",
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold))
        ]
            .toColumn()
            .card()
            .padding(vertical: 10)
            .constrained(width: double.infinity),
        HelperUtils.profileItem(title: "Unit Name :", desc: "S.A.F Faridurpur"),
        HelperUtils.profileItem(title: "Rank Name :", desc: "ASI(NI)"),
        HelperUtils.profileItem(title: "User Type :", desc: "Admin"),
        HelperUtils.profileItem(title: "Mobile :", desc: "0178456789"),
      ].toColumn(),
    );
  }
}
