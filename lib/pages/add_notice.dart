import 'package:district_foridpur_police/helper.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddNoticePage extends StatelessWidget {
  AddNoticePage({Key? key}) : super(key: key);

  static const routeName = '/AddNoticePage';

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text('Notice Add'),
        ),
        body: FormBuilder(
          key: _formKey,
          child: <Widget>[
            const SizedBox(
              height: 20,
            ),
            FormBuilderFilterChip(
              name: 'select_unit',
              elevation: 2,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Please select a unit';
                }
                return null;
              },
              runAlignment: WrapAlignment.start,
              runSpacing: 10.0,
              decoration: const InputDecoration(
                labelText: 'Select Unit options',
                border: OutlineInputBorder(),
              ),
              options: List.generate(
                  10,
                  (i) =>
                      FormBuilderFieldOption(value: i, child: Text("Unit $i"))),
            ),
            const SizedBox(
              height: 20,
            ),
            FormBuilderTextField(
              name: 'notice_title',
              validator: (val) {
                if (val != null && val.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Title',
                hintText: "Type Notice Here",
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ).card(),
            const SizedBox(
              height: 20,
            ),
            FormBuilderTextField(
              name: 'notice_description',
              validator: (val) {
                if (val != null && val.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Notice',
                hintText: "Type Notice Here",
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ).decorated(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            HelperUtils.textToLargeButton("Insert", () {
              final isValid = _formKey.currentState?.saveAndValidate() ?? false;

              if (isValid) {
                final values = _formKey.currentState?.value ?? {};
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Form is valid: ${values.toString()}'),
                  ),
                );
                debugPrint(values.toString());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('please fill all fields')));
              }
            })
          ].toColumn().padding(all: 10).scrollable(),
        ));
  }
}
