class Solution {
  // Mapping of digits to letters
  final Map<String, String> phoneMap = {
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz',
  };

  // Main function
  List<String> letterCombinations(String digits) {
    // If input is empty, return an empty list
    if (digits.isEmpty) return [];

    List<String> result = [];

    // Backtracking helper function
    void backtrack(int index, String current) {
      // If the current string length is equal to digits length, we have a valid combination
      if (index == digits.length) {
        result.add(current);
        return;
      }

      String digit = digits[index];
      String? letters = phoneMap[digit];

      // If the digit maps to some letters, continue building combinations
      if (letters != null) {
        for (int i = 0; i < letters.length; i++) {
          backtrack(index + 1, current + letters[i]);
        }
      }
    }

    // Start the recursion
    backtrack(0, '');

    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.letterCombinations("23")); // Example output: [ad, ae, af, bd, be, bf, cd, ce, cf]
}
