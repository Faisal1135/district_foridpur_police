import 'package:district_foridpur_police/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:styled_widget/styled_widget.dart';

const rankData = {
  "Rank Name": "Si Tootol",
  "Unit Name": "Si Tootol",
  "Request Date": "Si Tootol",
  "Requested Day": "Si Tootol",
  "Comment": "officia deserunt exercitation ut do magna.",
  "Status": "Approved",
  "Approved Day": "01",
  "Approved Date": "10-01-2020"
};

class LeaveHistory extends StatelessWidget {
  LeaveHistory({Key? key}) : super(key: key);

  static const routeName = '/LeaveHistory';
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeaveHistory'),
      ),
      body: FormBuilder(
        key: _fbKey,
        child: <Widget>[
          <Widget>[
            FormBuilderTextField(
              name: "year",
              decoration: const InputDecoration(labelText: "Year"),
            ).expanded(),
            const SizedBox(width: 10),
            const Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )
                .padding(all: 10)
                .decorated(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                )
                .elevation(3),
          ].toRow(),
          const SizedBox(height: 20),
          rankData.keys
              .map(
                (k) => <Widget>[
                  <Widget>[
                    const Spacer(),
                    Text(
                      '$k : ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${rankData[k]}',
                      style: TextStyle(color: Colors.grey.shade600),
                    ).expanded(flex: 5),
                    const Spacer(),
                  ].toRow(),
                  const Divider()
                ].toColumn(),
              )
              .toList()
              .toColumn(mainAxisAlignment: MainAxisAlignment.spaceBetween)
              .padding(all: 10)
              .card(),
        ].toColumn().height(MediaQuery.of(context).size.height * 0.8),
      ).parent(HelperUtils.makeScrollPage),
    );
  }
}
