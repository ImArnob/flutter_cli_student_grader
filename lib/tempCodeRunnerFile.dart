switch (input = 1) {
      case 1:
        stdout.write("Enter student name: ");
        student["name"] = stdin.readLineSync();
        break;
      case 2:
        for(int i = 0; i <student["subjects"].length; i++){
          stdout.write("Enter score for ${student["subjects"][i]}: ");
          student["scores"].add(int.parse(stdin.readLineSync()!));
        }
      default:
    }