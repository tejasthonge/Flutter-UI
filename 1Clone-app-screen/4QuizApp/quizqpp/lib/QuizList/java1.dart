class QuizListClass {
  final String Quition;
  final String Ans;
  const QuizListClass(this.Quition, this.Ans);
}

class SetQuaition {
  List<String> QuiLi = [
    "What is the main purpose of the static keyword in Java?",
    "Which of the following is not a primitive data type in Java?",
    "What is the purpose of the super keyword in Java?",
    "Which collection class in Java is synchronized?",
  ];

  // ignore: non_constant_identifier_names
  List<String> AnsLi = [
    "To create a static method.",
    " string",
    "To call the superclass constructor.",
    "Vector",
  ];

  List<List> ShowAnsList = [
    [
      "A. To make a variable constant.",
      "B. To create a static method.",
      "C. To allow the class to be instantiated.",
      "D. To specify the access level of a class."
    ],
    [
      "A. int",
      "B. float",
      "C. boolean",
      "D. string",
    ],
    [
      "A. To call the superclass constructor.",
      "B. To access the superclass methods.",
      "C. To reference the current object.",
      "D. To indicate the end of a method.",
    ],
    [
      "A. ArrayList",
      "B. HashMap",
      "C. Vector",
      "D. LinkedList",
    ],
  ];

  bool chekAns(int Qindex, String seAns) {
    if (AnsLi[Qindex] == seAns)
      return true;
    else
      return false;
  }
}
