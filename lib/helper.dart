import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class HelperUtils {
  static Widget getPage({required Widget child}) =>
      Styled.widget(child: child).padding(vertical: 30, horizontal: 20);

  static Widget makeScrollPage({required Widget child}) =>
      Styled.widget(child: child)
          .padding(vertical: 30, horizontal: 20)
          .scrollable()
          .safeArea();

  static Widget resultCard(Map<String, dynamic> rank) {
    return rank.keys
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
                '${rank[k]}',
                style: TextStyle(color: Colors.grey.shade600),
              ).expanded(flex: 5),
              if (k == rank.keys.first)
                const Icon(Icons.more_vert)
              else
                const Spacer(),
            ].toRow(),
            const Divider()
          ].toColumn(),
        )
        .toList()
        .toColumn(mainAxisAlignment: MainAxisAlignment.spaceBetween)
        .padding(all: 10)
        .card();
  }

  static cardItemOnDashBoard(
      {required IconData icon,
      required color,
      required String txt,
      Function()? onTap}) {
    return <Widget>[
      Icon(
        icon,
        size: 40,
        color: Colors.white,
      ).padding(all: 10).decorated(shape: BoxShape.circle, color: color),
      const SizedBox(height: 10),
      Styled.text(txt)
    ]
        .toColumn(mainAxisAlignment: MainAxisAlignment.center)
        .card()
        .gestures(onTap: onTap);
  }

  static textToLargeButton(String btnTxt, Function()? onTap,
      [Color? color, double? size]) {
    return Styled.text(
      btnTxt,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    )
        .center()
        .padding(vertical: 10, horizontal: 20)
        .decorated(
          color: color ?? Colors.purple,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        )
        .padding(vertical: 10, horizontal: 20)
        .gestures(onTap: onTap);
  }

  static profileItem({required String title, required String desc}) {
    return <Widget>[
      Styled.text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Styled.text(
          desc,
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    ]
        .toRow()
        .padding(all: 10)
        .decorated(color: Colors.white, borderRadius: BorderRadius.circular(10))
        .card()
        .padding(horizontal: 10);
  }
}
