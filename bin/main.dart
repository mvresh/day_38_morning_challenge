// Challenge: Find all permutations
// Given a collection of *distinct* integers, return all possible permutations.
/// Example:
//  Input: [1,2,3]
//  Output:
//  [
//    [1,2,3],
//    [1,3,2],
//    [2,1,3],
//    [2,3,1],
//    [3,1,2],
//    [3,2,1]
//  ]

List<List<int>> permutations(List<int> numbers){
  List<List<int>> permutationsList = [];
  void doPermutations(List<int> list, int current) {

    if (current == list.length) {
      //terminating case
      print(list);
      permutationsList.add(list);
      return;
    }

    for (int i = current; i < list.length; i++) {
      List<int> permutation = List.from(list);
      permutation[current] = list[i];
      permutation[i] = list[current];
      doPermutations(permutation, current + 1);
    }
  }
  doPermutations(numbers, 0);
  return permutationsList;
}


main() {
  print(permutations([1,2,3,4,5,6]));
}
