import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return page2();
                }));
              },
              child: Text("Open"),
            ),
            FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text("您已經中獎！"),
                        children: [
                          SimpleDialogOption(onPressed: () { Navigator.pop(context); },
                            child: const Text('千萬請您按下按鍵!'),),
                        ],
                        // content: Text("千萬請您按下下面的按鍵!"),
                        // actions: <Widget>[
                        //   FlatButton(onPressed: () {Navigator.of(context, rootNavigator: true).pop();}, child: Text("我要領獎")),
                        //   FlatButton(onPressed: () {Navigator.of(context, rootNavigator: true).pop();}, child: Text("不要")),
                        // ],
                      );
                    });
              },
              child: Text("SimpleDialog"),
            ),
            FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("您已經中獎！"),
                        content: Text("千萬請您按下下面的按鍵!"),
                        actions: <Widget>[
                          FlatButton(onPressed: () {Navigator.of(context, rootNavigator: true).pop();}, child: Text("我要領獎")),
                          FlatButton(onPressed: () {Navigator.of(context, rootNavigator: true).pop();}, child: Text("不要")),
                        ],
                      );
                    });
              },
              child: Text("AlertDialog"),
            ),
          ],
        ),
      ),
    );
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Page"),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("back"))
          ],
        ),
      ),
    );
  }
}
