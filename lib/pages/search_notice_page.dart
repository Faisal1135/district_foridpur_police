import 'package:district_foridpur_police/helper.dart';
import 'package:district_foridpur_police/pages/leave_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:styled_widget/styled_widget.dart';

class SearchNoticePage extends StatelessWidget {
  const SearchNoticePage({Key? key}) : super(key: key);

  static const routeName = '/SearchNoticePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: const InputDecoration.collapsed(
            hintText: "Type here",
          ),
        ),
      ),
      body: <Widget>[
        FormBuilderDropdown(
          name: "dropdown",
          decoration: const InputDecoration(
              labelText: "Dropdown", border: InputBorder.none),
          items: List.generate(
            4,
            (index) => DropdownMenuItem(
                child: Text('Sodor Traffic Foridpur $index'), value: '$index'),
          ),
        ).padding(horizontal: 20).center().card(),
        const SizedBox(
          height: 20.0,
        ),
        List.generate(4, (index) => rankData)
            .toList()
            .map((rank) => HelperUtils.resultCard(rank))
            .toList()
            .toColumn()
      ].toColumn().parent(HelperUtils.makeScrollPage),
    );
  }
}
