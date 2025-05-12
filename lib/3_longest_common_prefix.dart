class Solution {
  String longestCommonPrefix(List<String> strs) {
    // If the list is empty, return empty string
    if (strs.isEmpty) return '';

    // Start with the first string as the prefix
    String prefix = strs[0];

    // Loop through all the other strings in the list
    for (int i = 1; i < strs.length; i++) {
      // Keep removing the last character from prefix
      // until the current string starts with the prefix
      while (!strs[i].startsWith(prefix)) {
        prefix = prefix.substring(0, prefix.length - 1);

        // If prefix becomes empty, no common prefix exists
        if (prefix.isEmpty) return '';
      }
    }
    // Longest Common Prefix
    // Return the final common prefix
    return prefix;
  }
}

void main() {
  // Testing the function with some words
  print(Solution().longestCommonPrefix(["flower", "flow", "flight"])); // Output: fl
}
