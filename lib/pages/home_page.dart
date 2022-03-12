import 'package:district_foridpur_police/helper.dart';
import 'package:district_foridpur_police/pages/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: <Widget>[
          const Text(
            "Log In",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ).center(),
          const SizedBox(height: 20),
          const Icon(
            Icons.people,
            size: 50,
          ).padding(all: 20).decorated(color: Colors.white),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: "Bp No",
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ).padding(horizontal: 20),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: "Password",
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ).padding(horizontal: 20),
          const SizedBox(height: 20),
          HelperUtils.textToLargeButton("Login", () {
            Navigator.pushNamed(context, DashBordPage.routeName);
          }, Colors.greenAccent)
        ]
            .toColumn(mainAxisAlignment: MainAxisAlignment.center)
            .constrained(height: MediaQuery.of(context).size.height * 0.9)
            .scrollable()
            .parent(HelperUtils.getPage));
  }
}
