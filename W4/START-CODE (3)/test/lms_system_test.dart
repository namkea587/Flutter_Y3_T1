
import 'package:test/test.dart';

import '../lib/service/lms_system.dart';

void main() {
  test('creates and removes a student', () {
    final lms = LmsSystem();

    // Create a student.
    lms.addStudent(
      studentId: 'S1',
      studentName: 'ronan',
    );

    expect(lms.students.length, 1);
    expect(lms.students.first.name, 'ronan');

    // Remove the student.
    lms.removeStudent(studentId: 'S1');

    expect(lms.students.length, 0);
  });

  test('rejects a duplicate student ID', () {
    final lms = LmsSystem();

    lms.addStudent(studentId: 'S1', studentName: 'ronan');

    expect(
      () => lms.addStudent(
        studentId: 'S1',
        studentName: 'another student',
      ),
      throwsException,
    );
  });

  test('rejects removing a nonexistent student', () {
    final lms = LmsSystem();

    expect(
      () => lms.removeStudent(studentId: 'S99'),
      throwsException,
    );
  });
}
