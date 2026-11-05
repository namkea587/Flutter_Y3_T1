double computeAverage(List<int> scores) {
  var total = 0;
  for (var score in scores) {
    total += score;
  }
  return total / scores.length;
}

void main() {
  final students = [
    {"name": "Dara", "Dart": 70, "Flutter": 80, "Database": 60},
    {"name": "Sokha", "Dart": 50, "Flutter": 90, "Database": 70},
    {"name": "Lina", "Dart": 80, "Flutter": 70, "Database": 90},
  ];
  final courses = ["Dart", "Flutter", "Database"];
  for (var course in courses) {
    final scores = <int>[];
    for (var student in students) {
      scores.add(student[course] as int);
    }
    final average = computeAverage(scores);
    print("$course: ${average.toStringAsFixed(1)}");
  }
}
