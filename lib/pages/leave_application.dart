import 'package:district_foridpur_police/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:styled_widget/styled_widget.dart';

class LeaveApplicationPage extends StatelessWidget {
  const LeaveApplicationPage({Key? key}) : super(key: key);

  static const routeName = '/LeaveApplicationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CL Leave Application '),
      ),
      body: FormBuilder(
        child: <Widget>[
          FormBuilderDateTimePicker(
            decoration: const InputDecoration(
                hintText: "Select Date",
                labelText: 'Date',
                border: InputBorder.none),
            name: "pickedDate",
            firstDate: DateTime.now().subtract(const Duration(days: 365)),
            lastDate: DateTime.now(),
          ).padding(all: 10).card(),
          const SizedBox(height: 10),
          FormBuilderTextField(
            decoration: const InputDecoration(
                hintText: "Enter Number of Days",
                labelText: 'Number of Days',
                border: InputBorder.none),
            name: "num_of_days",
          ).padding(all: 10).card(),
          const SizedBox(height: 10),
          FormBuilderTextField(
            decoration: const InputDecoration(
                hintText: "Type message here ..",
                labelText: 'Comments',
                border: InputBorder.none),
            name: "comments",
            maxLines: 3,
          ).padding(all: 10).card(),
          const SizedBox(height: 10),
          HelperUtils.textToLargeButton("Submit", () => null)
        ].toColumn().parent(HelperUtils.makeScrollPage),
      ),
    );
  }
}
