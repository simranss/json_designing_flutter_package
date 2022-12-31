<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Write json file with widgets use this to convert it to flutter designs

## Features

This package helps convert json file to flutter code
[Note: The package is under active development]

## Getting started

Start by adding the package to your `pubspec.yaml` file
```yaml
dependencies:
  flutter:
    sdk: flutter
  json_designing_flutter:
```


## Usage

You should have a `Map<String, dynamic>` or `List<Map<String, dynamic>>` object converted from the json string

```dart
var data = json.decode(dataString);
dataMap = Map<String, dynamic>.from(data);
```

or

```dart
var data = json.decode(dataString);
dataList = List<Map<String, dynamic>>.from(data);
```
Wherever you want to use place the widget write this
`JsonConverter.getWidget(dataMap)` or `JsonConverter.getWidgetList(dataList)`

```dart
return Container(
    child: JsonConverter.getWidget(dataMap),
);
```
or


```dart
return Column(
    children: JsonConverter.getWidgetList(dataList),
);
```

## Additional information

The github link is https://github.com/simranss/json_designing_flutter_package
You can go on contribute to the project on this github repository
