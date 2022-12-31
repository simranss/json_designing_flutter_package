import 'package:flutter/material.dart';

import '../services/color_service.dart';

class TextWidget {
  final Map<String, dynamic> _props;
  TextWidget(this._props);

  Text getWidget() {
    var data = '';
    var fontSize = 0;
    Color? color;
    if (_props.containsKey('data')) {
      data = _props['data'];
    }
    if (_props.containsKey('font_size')) {
      fontSize = _props['font_size'];
    }
    if (_props.containsKey('color')) {
      color = ColorService.toColor(_props['color']);
    }
    print(
        'Text{ data: $data, fontSize: $fontSize, color: ${color.toString()}}');
    return Text(
      data,
      style: TextStyle(
        fontSize: ((fontSize == 0) ? 18 : fontSize).toDouble(),
        color: color ?? Colors.black,
      ),
    );
  }
}
