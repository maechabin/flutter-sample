// これは基本的なwidgetのテストです。
//
// テストでウィジェットとのインタラクションを実行するために、
// Flutterが提供するWidgetTesterユーティリティを使用します。
// たとえば、タップとスクロールのジェスチャを送信することなどができます。
// さらに、WidgetTesterを使用して、widgetのツリー内の子widgetを検索し、
// テキストを読み取り、widgetのプロパティの値が正しいことを検証することもできます。

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_sample/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // アプリをbuildしてフレームをトリガーします。
    await tester.pumpWidget(MyApp());

    // カウンターが0からスタートするか検証します。
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // '+'アイコンをタップし、フレームをトリガーします。
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // カウンターが増えるか検証します。
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
