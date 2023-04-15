import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  int result = 0;
  Result(this.result);

  String get getResult {
    String msg = "";
    if (result < 10) {
      msg = 'A';
    } else if (result < 20) {
      msg = "B";
    } else {
      msg = "Default";
    }
    return msg + " $result";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(getResult),
    );
  }
}



