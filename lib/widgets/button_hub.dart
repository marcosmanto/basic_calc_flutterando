import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

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
        Button(
          value: '%',
          color: primaryColor,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: 'CE',
          color: primaryColor,
          onTap: (value) => onButtonClick(ClearEntryButtonClick(value)),
        ),
        Button(
          value: 'C',
          color: primaryColor,
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        const Button(value: '', color: Colors.transparent),
        Button(
          value: '7',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '8',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '9',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '/',
          color: primaryColor,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '4',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '5',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '6',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '*',
          color: primaryColor,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '1',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '2',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '3',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '+',
          color: primaryColor,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '+/-',
          color: primaryColor,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '0',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '.',
          color: primaryColor,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '=',
          color: const Color.fromARGB(255, 215, 94, 1),
          onTap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
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
    return Material(
      color: color,
      child: InkWell(
        // trigger callback function when tap the button, passing the button's value to the callback
        // if no callback is passed do nothing
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: Text(
            value,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
