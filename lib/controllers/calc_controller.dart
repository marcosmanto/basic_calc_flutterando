import 'package:basic_calc_flutterando/widgets/button_hub.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  // state starts with an empty string
  var display = '0';

  void onButtonClick(ButtonClick click) {
    if (display == '0') {
      display = '';
    }

    if (click is CommonButtonClick) {
      display += click.value;
    } else if (click is ClearButtonClick) {
      display = '';
    } else if (click is ClearEntryButtonClick) {
      display = '';
    } else if (click is EqualsButtonClick) {
      display = '${display.interpret()}';
    }
    notifyListeners();
  }
}
