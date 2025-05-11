class Solution {
  int romanToInt(String s) {
    // Convert the input string to uppercase to handle lowercase inputs like 'iv'
    s = s.toUpperCase();

    int sum = 0; // This will store the final result
    int prevValue = 0; // To keep track of the previous Roman value

    // Map of Roman symbols to their integer values
    Map<String, int> value = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    // Loop through each character in the string
    for (int i = 0; i < s.length; i++) {
      // Get the current Roman numeral's value from the map
      int currentValue = value[s[i]]!;

      /*
        If the current value is greater than the previous one,
        it's a subtractive case (e.g., IV = 5 - 1 = 4),
        so subtract 2 * prevValue (because we already added prevValue before).
        Otherwise, just add the current value to the sum.
      */
      sum += (currentValue > prevValue)
          ? (currentValue - 2 * prevValue)
          : currentValue;

      // Update prevValue for the next loop iteration
      prevValue = currentValue;
    }

    // Return the final converted integer value
    return sum;
  }
}
