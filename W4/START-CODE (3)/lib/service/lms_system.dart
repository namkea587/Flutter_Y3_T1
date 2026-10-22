
import '../model/student.dart';

class LmsSystem {
  final List<Student> students = [];

  void addStudent({
    required String studentId,
    required String studentName,
  }) {
    final student = _findStudentOrNull(studentId);

    if (student != null) {
      throw Exception('Student $studentId already exists');
    }

    students.add(
      Student(id: studentId, name: studentName),
    );
  }

  void removeStudent({required String studentId}) {
    final student = _findStudentOrNull(studentId);

    if (student == null) {
      throw Exception('Student $studentId not found');
    }

    students.remove(student);
  }

  Student? _findStudentOrNull(String studentId) {
    for (final student in students) {
      if (student.id == studentId) {
        return student;
      }
    }

    return null; 
  }
}
