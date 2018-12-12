import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // このウィジェットはアプリケーションのルートです。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // これはアプリケーションのテーマです。
        //
        // "flutter run"でアプリケーションを起動してみましょう。青いツールバーを持ったアプリが開きます。
        // それから、アプリを終了することなく、下記のprimarySwatchをColors.greenに変更してみると、
        // "hot reload"が呼び出されます（"flutter run"を起動したコンソールで"r"を押すか、
        // Flutter IDE内の"hot reload"に対して変更を保存するかだけでもOKです）。
        // カウンターはゼロにリセットされていないということに注目してください。
        // アプリケーションは再起動されていません。
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // このウィジェットはアプリケーションのホームページです。ステートフルであり、
  // （以下で定義されている）Stateオブジェクトを持っていることを意味しています。
  // このStateオブジェクトには、見た目に影響を及ぼすフィールドを含んでいます。

  // このクラスはstateのための設定を行います。親によって提供され（今回のケースではtitle）、
  // Stateのbuildメソッドによって使われる（今回のケースではApp widget）値を保持します。
  // Widgetサブクラスのフィールドは常に"final"でマークされます。
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // このsetStateの呼び出しは、FlutterフレームワークにこのStateの中で何かが変更されたということを伝えます。
      // これにより、以下のbuildメソッドがreturnされ、更新された値が反映されます。
      // もし、setState()を呼び出さずに、_counterを変更したとしたら、
      // buildメソッドは再び呼ばれることはなく、何も起こらないでしょう。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    // このメソッドはsetStateが呼ばれるたびにreturnされます。
    // たとえば、上記の_incrementCounterメソッドによってreturnされるように。
    //
    // Flutterフレームワークはbuildメソッドが速くreturnするように最適化してきました。
    // そのためWidgetのインスタンスを個別に変更する必要はなく、更新が必要なものだけを再buildできます。
    return Scaffold(
      appBar: AppBar(
        // ここではApp.buildメソッドによって作成されたMyHomePageオブジェクトから値を取得し、
        // appbarのtitleを設定するために使用します。
        title: Text(widget.title),
      ),
      body: Center(
        // Centerはレイアウト用のwidgetです。単一の子を取り、親の中央に配置します。
        child: Column(
          // Columnもまたレイアウト用のwidgetです。子のリストを取り、それらを垂直に並べます。
          // デフォルトでは、子のサイズに合わせてサイズが変更され、親の高さになります。
          //
          // 各ウィジェットのワイヤフレームを表示するために"debug painting"を起動します。
          //（コンソールで"p"を押すか、
          // Android StudioであればFlutterインスペクターから"Toggle Debug Paint"アクションを選択するか、
          // Visual Studio Codeであれば"Toggle Debug Paint"コマンドを実行します。）
          //
          // Columnは、自分自身の大きさや子の配置方法を制御するためのさまざまなプロパティを持ちます。
          // ここでは、子を垂直方向にセンタリングするためにmainAxisAlignmentを使用しています。
          // ここでの主軸は垂直軸となります。それは列が垂直（交差軸は水平）であるからです。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // この末尾のカンマは、buildメソッドのための自動フォーマットをより良くします。
    );
  }
}
