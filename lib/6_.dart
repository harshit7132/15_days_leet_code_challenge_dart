int lengthOfLongestSubstring(String s) {
  Map<String, int> charIndexMap = {};
  int maxLength = 0;
  int start = 0;

  for (int i = 0; i < s.length; i++) {
    String currentChar = s[i];

    // If the character was seen and is within the current window
    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= start) {
      start = charIndexMap[currentChar]! + 1; // Move start right after the previous index
    }

    charIndexMap[currentChar] = i; // Update latest index of the character
    maxLength = maxLength > (i - start + 1) ? maxLength : (i - start + 1); // Update max length
  }

  return maxLength;
}
