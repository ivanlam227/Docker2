import 'dart:io';

import 'package:conduit/conduit.dart';

import 'package:dart_backend/dart_backend.dart';

void main(List<String> arguments) async{
  print('Hello World');
  final port = int.parse(Platform.environment["PORT"] ?? '8081');

  final service = Application<AppService>()..options.port = port;

  await service.start(numberOfInstances: 3, consoleLogging: true);
  print('Hello World 2');
  print(port.toString());
}
