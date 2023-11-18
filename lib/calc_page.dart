import 'package:basic_calc_flutterando/controllers/calc_controller.dart';
import 'package:basic_calc_flutterando/widgets/button_hub.dart';
import 'package:basic_calc_flutterando/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final controller = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(child: Display(value: controller.display)),
          Expanded(
            flex: 3,
            child: ButtonHub(
              onButtonClick: controller.onButtonClick,
            ),
          ),
        ],
      ),
    );
  }
}
