void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  List<int> count = scores.where((score) => score > 50).toList();
  int passCount = count.length;
  // Print the scores over 50
  print('$passCount students is passed');
}
