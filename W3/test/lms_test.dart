import 'package:test/test.dart';
import '../service/lms_sevice.dart';

void main() {
  test('creates a student adn remove it', () {
    // your code
    LmsService service = LmsService();

    service.addStudent(studentId: "S1", studentName: "Namkea");
    expect(service.students.first.id, "S1");

    service.removeStudent(studentId: "S1");
    expect(service.students.isEmpty, true);

  });
}
