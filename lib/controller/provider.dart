import 'package:calendar_expense_app/controller/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../model/list.dart';
import '../view/home.dart';

class MyClass with ChangeNotifier {
  int currentDateSelectedIndex = 0;
  reason1() async {
    await getreason1(DateFormat("yyyy-MM-dd").format(selectedDate).toString())
        .then((value) {
      reason = value!;
    });
    notifyListeners();
  }
  amount1() async {
    await getamount2('${DateFormat("yyyy-MM-dd").format(selectedDate)}Amount')
        .then((value1) {
      amount = value1!;
    });
    notifyListeners();
  }
  time1() async {
    await gettime3('${DateFormat("yyyy-MM-dd").format(selectedDate)}Time')
        .then((value2) {
      time = value2!;
    });
    notifyListeners();
  }
}
class MyClass1 extends ChangeNotifier{
int buttonindex = -1;
  void updateButtonIndex(int index) {
    buttonindex = index;
    notifyListeners();
  }
}