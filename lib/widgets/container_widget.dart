import 'package:flutter/material.dart';
import 'package:json_designing_flutter/json_converter.dart';
import '../services/color_service.dart';

class ContainerWidget {
  final Map<String, dynamic> _props;
  ContainerWidget(this._props);

  Container getWidget() {
    Widget? child;
    Color? color;
    double? height;
    if (_props.containsKey('child')) {
      child = JsonConverter.getWidget(_props['child'] as Map<String, dynamic>);
    }
    if (_props.containsKey('color')) {
      color = ColorService.toColor(_props['color']);
    }
    if (_props.containsKey('height')) {
      height = double.parse(_props['height'].toString());
    }
    print(
        'Container{ color: ${color?.toString()}, height: $height, child: ${child?.toStringShort()}}');
    return Container(
      color: color ?? Colors.green,
      height: height ?? 0,
      child: child,
    );
  }
}
