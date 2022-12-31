import 'package:flutter/material.dart';

import '../json_converter.dart';

class PaddingWidget {
  final Map<String, dynamic> _props;
  PaddingWidget(this._props);

  Padding getWidget() {
    var left = 0.0, right = 0.0, top = 0.0, bottom = 0.0;
    Widget? child;
    if (_props.containsKey('left')) {
      left = double.parse(_props['left'].toString());
    }
    if (_props.containsKey('right')) {
      right = double.parse(_props['right'].toString());
    }
    if (_props.containsKey('top')) {
      top = double.parse(_props['top'].toString());
    }
    if (_props.containsKey('bottom')) {
      bottom = double.parse(_props['bottom'].toString());
    }
    if (_props.containsKey('child')) {
      child = JsonConverter.getWidget(_props['child'] as Map<String, dynamic>);
    }
    print(
        'Padding{ padding: {left: $left, right: $right, top: $top, bottom: $bottom}, child: ${child?.toStringShort()}}');
    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: child,
    );
  }
}
