import 'dart:io';

var jobList = <String, double>{};

Map<String, double> readFileLines(String filePath) {
  final file = File(filePath);

  if (file.lengthSync() > 0 != true) {
    print('File is empty.');
    exit(1);
  }

  var lines = file.readAsLinesSync();

  try {
    for (var line in lines.skip(1)) {
      final columns = line.split(',');
      final duration = double.parse(columns[3].replaceAll('"', ''));
      final tagName =
          columns[5] == '""' ? "Unallocated" : columns[5].replaceAll('"', '');

      _calculateTagsDuration(tagName, duration);
    }
    return _getJobList();
  } catch (e) {
    print('Error: $e');
    exit(1);
  }
}

void _calculateTagsDuration(String tagName, double duration) {
  var isTagExists = jobList.containsKey(tagName);

  if (isTagExists) {
    var currentDuration = jobList[tagName] as double;
    var newTotalDuration = currentDuration + duration;
    jobList[tagName] = newTotalDuration;
  } else {
    jobList[tagName] = duration;
  }
}

Map<String, double> _getJobList() {
  return jobList;
}
