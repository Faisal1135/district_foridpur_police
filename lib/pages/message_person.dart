import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class MessagePersonPage extends StatelessWidget {
  const MessagePersonPage({Key? key}) : super(key: key);

  static const routeName = '/MessagePersonPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nurul Islam Sub Inspection'),
      ),
      body: <Widget>[
        const SizedBox()
            .constrained(minHeight: MediaQuery.of(context).size.height * 0.76)
            .expanded(),

        // SizedBox.fromSize(
        //   size: Size.fromHeight(MediaQuery.of(context).size.height * 0.8),
        // ).expanded(),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Type message here ..',
            suffixIcon: const Icon(Icons.send),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ).padding(horizontal: 10),
        const SizedBox(height: 10),
      ].toColumn().safeArea(),
    );
  }
}
