import 'dart:io';

void main() {
  Map<String, dynamic> student = {
    "name": "",
    "scores": [],
    "subjects": {"Match", "Science", "English", "History"},
    "Bonus": [],
    "Comment": {},
  };

  int input;

  stdout.write("Choose an option: ");
  input = stdin.readByteSync();
  do {
    const title = "====== Student Grader v1.0 ======";
    print(title);
    print("1. Add Student");
    print("2. Record Score");
    print("3. Add Bonus Points");
    print("4. Add Comment");
    print("5. View All Students");
    print("6. View Report Card");
    print("7. Class Summary");
    print("8. Exit");

    switch (input = 1) {
      case 1:
        stdout.write("Enter student name: ");
        student["name"] = stdin.readLineSync();
        break;
      default:
    }

  } while (1 <= input &&input <= 7);
}
