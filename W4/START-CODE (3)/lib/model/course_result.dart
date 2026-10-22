class CourseResult {
  final String id;
  final String studentId;
  final String courseId;
  final int score;

  CourseResult({
    required this.id,
    required this.studentId,
    required this.courseId,
    required this.score,
  });

  @override
  String toString() =>
      'CourseResult(id: $id, student: $studentId, course: $courseId, score: $score)';
}
