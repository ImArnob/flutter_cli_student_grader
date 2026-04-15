import 'dart:io';

void main() {
  List<String> subjects = ["Math", "Science", "English", "History"];
  Map<String, dynamic> student = {
    "name": {"Nehal"},
    "subjects": {...subjects},
    "scores": [],
    "Bonus": [],
    "Comment": {},
  };
  List<Map<String, dynamic>> students = [student];

  student["subjects"] = student["subjects"].toList();
  student["name"] = student["name"].toList();
  int input;
  const title = "====== Student Grader v1.0 ======";
  do {
    print('''$title
1. Add Student
2. Record Score
3. Add Bonus Points
4. Add Comment
5. View All Students
6. View Report Card
7. Class Summary
8. Exit
Enter your choice: ''');
    input = int.parse(stdin.readLineSync()!);

    if (input == 8) {
      break;
    } else {
      switch (input) {
        case 1:
          stdout.write("Enter student name: ");
          student["name"].add(stdin.readLineSync());
          print("New student added successfully.");
          break;



        case 2:
          for (int i = 0; i < student["name"].length; i++) {
            print("${i + 1}. ${student["name"][i]}");
          }
          stdout.write("Select the student number to record score: ");
          int studentIndex = int.parse(stdin.readLineSync()!) - 1;

            for (int i = 0; i < student["subjects"].length; i++) {
              stdout.write("Enter score for ${student["subjects"][i]}: ");
              student["scores"].add(int.parse(stdin.readLineSync()!));
            }

          print(" Scores recorded successfully.");
          print("${student["name"]} score is ${student["scores"]}");
          break;



        case 3:
          stdout.write("Enter bonus points (if any): ");
          student["Bonus"].add(int.parse(stdin.readLineSync() ?? '0'));
          break;


        case 4:
          stdout.write("Enter comment (if any): ");
          student["Comment"].add(stdin.readLineSync() ?? '');
          break;

          
        case 5:
          print("All Students:");
          for (int i = 0; i < student["name"].length; i++) {
            print("${i + 1}. ${student["name"][i]}");
          }
          break;
      }
    }
  } while (input != 8);
}
