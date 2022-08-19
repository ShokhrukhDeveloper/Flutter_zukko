import 'dart:async';

import 'package:flutter/material.dart';
import '../../domain/common/time_ext.dart';

class Counter extends StatefulWidget {
  final TextStyle style;
  final ValueChanged<bool> isDisabled;
  const Counter({Key? key, required this.style, required this.isDisabled})
      : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            widget.isDisabled(true);
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _start.timeFormat,
      style: widget.style,
    );
  }
}
