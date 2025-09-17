// following has first wrong method and then correct method use of single responsibility principle

class StudentReport {
  final String id;
  final String fullName;
  final int age;
  final double score;

  StudentReport({
    required this.id,
    required this.fullName,
    required this.age,
    required this.score,
  });

  // wrong method
  bool isStudentPassed() {
    if (score >= 33) {
      return true;
    } else {
      return false;
    }
  }

  double getStudentTotalScore() => score;
}

// correct method
/// separate class for separate responsibility
class Student {
  final String id;
  final String fullName;
  final int age;
  final double score;

  Student({
    required this.id,
    required this.fullName,
    required this.age,
    required this.score,
  });
}

// separate class for separate responsibility
class StudentReportCard {
  final Student student;

  StudentReportCard({required this.student});

  bool isStudentPassed() {
    if (student.score >= 33) {
      return true;
    } else {
      return false;
    }
  }

  double getStudentTotalScore() => student.score;
}
// here we have two classes with single responsibility
// Student class only for student data
// StudentReportCard class only for report card related functionality like isStudentPassed and getStudentTotalScore methods