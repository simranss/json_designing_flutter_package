import 'package:flutter/material.dart';
import 'package:json_designing_flutter/json_converter.dart';

class ColumnWidget {
  final Map<String, dynamic> _props;
  ColumnWidget(this._props);

  Column getWidget() {
    List<Widget> children = [];
    if (_props.containsKey('children')) {
      var childrenData = List<Map<String, dynamic>>.from(_props['children']);
      children = JsonConverter.getWidgetList(childrenData);
    }
    print('Column{');
    print('children: [');
    children.forEach((element) => print(element.toStringShort()));
    print(']');
    print('}');
    return Column(
      children: children,
    );
  }
}
