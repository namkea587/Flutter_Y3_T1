
class Course {
  final String id;
  final String name;
  final List<String> enrolledStudentIds;

  Course({
    required this.id,
    required this.name,
    List<String>? enrolledStudentIds,
  }) : enrolledStudentIds = enrolledStudentIds ?? [];

  void addStudent(String studentId) {
    if (!enrolledStudentIds.contains(studentId)) {
      enrolledStudentIds.add(studentId);
    }
  }

  void removeStudent(String studentId) {
    enrolledStudentIds.remove(studentId);
  }

  @override
  String toString() =>
      'Course(id: $id, name: $name, students: $enrolledStudentIds)';
}
