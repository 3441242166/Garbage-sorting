import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  int viewId = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(InputFrom())..add(ResultList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24),
        child: list[viewId],
    );
  }
}

class InputFrom extends StatefulWidget {
  @override
  _InputFromState createState() => _InputFromState();
}

class _InputFromState extends State<InputFrom> {

  DataContext data;

  @override
  void initState() {
    data = DataContext();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
                text: '你是什么  ',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,

                ),
                children: [
                  TextSpan(
                    text: '垃圾?',
                    style: TextStyle(
                      fontSize: 48,

                    ),
                  )
                ]
            ),
          ),
          SizedBox(height: 24),
          NameInput(),
          SizedBox(height: 24),
          Container(
            height: 48,
            child: RaisedButton(
              textColor: Colors.white,
              color: Theme
                  .of(context)
                  .accentColor,
              child: Text('查询'),
              onPressed: () {

              },
            ),
          )
        ],
      ),
    );
  }
}

class NameInput extends StatefulWidget {
  @override
  _NameInputState createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  @override
  Widget build(BuildContext context) {
    final key = context.inheritFromWidgetOfExactType(DataContext);

    return TextField(
      decoration: InputDecoration(
        hintText: '输入垃圾名称',
        border: OutlineInputBorder(),
      ),
      onChanged: (val) {
        debugPrint('$val');
      },
    );
  }
}

class ResultList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Result'),);
  }
}

class ResultModel<T> extends ChangeNotifier {
  int code;
  String msg;
  T data;
}

class DataContext extends InheritedWidget {

  ResultModel model;
  String word;

  void search() {

  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}