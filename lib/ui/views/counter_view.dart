import 'package:flutter/material.dart';

import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  final String base;

  const CounterView({super.key, required this.base});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 5;

  @override
  void initState() {
    // TODO: implement initState
    if (int.tryParse(widget.base) != null) {
      _counter = int.parse(widget.base);
    } else {
      _counter = 55;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          'Stateful Count',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Count: $_counter',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              buttonText: 'Increment',
              onPressed: () => setState((() => _counter++)),
            ),
            CustomFlatButton(
              buttonText: 'Decrement',
              onPressed: () => setState((() => _counter--)),
            )
          ],
        ),
        Spacer()
      ],
    );
  }
}
