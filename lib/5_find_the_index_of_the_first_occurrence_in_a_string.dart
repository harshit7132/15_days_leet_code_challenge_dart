int strStr(String haystack, String needle) {
  // If the needle is an empty string, return 0 (as per problem definition)
  if (needle.isEmpty) return 0;

  // Loop through haystack, stopping where the remaining substring is shorter than needle
  for (int i = 0; i <= haystack.length - needle.length; i++) {
    // Extract substring from current index with the same length as needle
    String sub = haystack.substring(i, i + needle.length);

    // Compare the substring with the needle
    if (sub == needle) {
      // If they match, return the current index
      return i;
    }
  }

  // If no match found, return -1
  return -1;
}
