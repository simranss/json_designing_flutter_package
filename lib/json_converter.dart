library json_designing_flutter;

import 'package:flutter/material.dart';
import 'package:json_designing_flutter/widgets/container_widget.dart';
import 'package:json_designing_flutter/widgets/padding_widget.dart';
import 'package:json_designing_flutter/widgets/text_widget.dart';
import 'package:json_designing_flutter/widgets/column_widget.dart';

/// A JsonConverter that converts json to widgets.
class JsonConverter {
  static List<Widget> getWidgetList(List<Map<String, dynamic>> source) {
    List<Widget> widgets = [];
    for (var data in source) {
      Widget widget = getWidget(data);
      widgets.add(widget);
    }
    return widgets;
  }

  static Widget getWidget(Map<String, dynamic> data) {
    String? widgetName = data["widget"];
    if (widgetName == null) {
      print('source: $data');
      print('widget null');
      return Container(
        color: Colors.green,
      );
    }
    Map<String, dynamic> props = data['props'];

    switch (widgetName) {
      case "Container":
        final container = ContainerWidget(props);
        return container.getWidget();
      case 'Text':
        final text = TextWidget(props);
        return text.getWidget();
      case 'Column':
        final column = ColumnWidget(props);
        return column.getWidget();
      case 'Padding':
        final padding = PaddingWidget(props);
        return padding.getWidget();
      default:
        return Container(
          color: Colors.green,
        );
    }
  }
}
