import 'package:basic_calc_flutterando/widgets/button_hub.dart';
import 'package:basic_calc_flutterando/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Expanded(child: Display(value: '100')),
          Expanded(
            flex: 3,
            child: ButtonHub(
              onButtonClick: (click) {
                // ignore: avoid_print
                print(click.value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
