import 'package:flutter/material.dart';

class ButtonHub extends StatelessWidget {
  const ButtonHub({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.onPrimary;
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        Button(value: '%', color: primaryColor),
        Button(value: 'CE', color: primaryColor),
        Button(value: 'C', color: primaryColor),
        const Button(value: '', color: Colors.transparent),
        const Button(value: '7'),
        const Button(value: '8'),
        const Button(value: '9'),
        Button(value: '/', color: primaryColor),
        const Button(value: '4'),
        const Button(value: '5'),
        const Button(value: '6'),
        Button(value: '*', color: primaryColor),
        const Button(value: '1'),
        const Button(value: '2'),
        const Button(value: '3'),
        Button(value: '+', color: primaryColor),
        Button(value: '+/-', color: primaryColor),
        const Button(value: '0'),
        Button(value: '.', color: primaryColor),
        const Button(value: '=', color: Color.fromARGB(255, 215, 94, 1)),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return InkWell(
      // trigger callback function when tap the button, passing the button's value to the callback
      // if no callback is passed do nothing
      onTap: onTap == null ? null : () => onTap!(value),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        color: color,
        child: Text(
          value,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
