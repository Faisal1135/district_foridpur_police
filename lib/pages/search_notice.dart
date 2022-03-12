import 'package:district_foridpur_police/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:styled_widget/styled_widget.dart';

class SearchNotice extends StatelessWidget {
  const SearchNotice({Key? key}) : super(key: key);

  static const routeName = '/SearchNotice';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchNotice'),
      ),
      body: <Widget>[
        FormBuilderDropdown(
          decoration: const InputDecoration(
              labelText: 'Select a Unit',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              )),
          initialValue: 'Unit 1',
          name: "Unit",
          items: List.generate(
            5,
            (index) => DropdownMenuItem(
              child: Text('Unit $index'),
              value: 'Unit $index',
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        FormBuilderDateRangePicker(
          name: "daterange",
          decoration: const InputDecoration(labelText: "Date Range"),
          firstDate: DateTime.now().subtract(
            const Duration(days: 365),
          ),
          lastDate: DateTime.now(),
        ),
        const SizedBox(
          height: 20.0,
        ),
        HelperUtils.textToLargeButton("Search", () => null),
      ].toColumn().parent(HelperUtils.makeScrollPage),
    );
  }
}
