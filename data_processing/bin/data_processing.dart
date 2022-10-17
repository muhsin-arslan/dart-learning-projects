import 'dart:io';

import 'package:data_processing/data_processing.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("File path argument is missing. Don't forget to add it.");
    exit(1);
  }

  var filePath = arguments.first;
  final jobList = readFileLines(filePath);

  jobList.forEach((key, value) {
    print("$key: ${value.toStringAsFixed(2)}h spent.");
  });
}
