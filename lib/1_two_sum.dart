class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Go through each number in the list
    for (int i = 0; i < nums.length; i++) {
      // For each number, check the next numbers one by one
      for (int j = i + 1; j < nums.length; j++) {
        // Add the two numbers
        int sum = nums[i] + nums[j];

        // If the sum is equal to the target, return their positions
        if (sum == target) {
          return [i, j];
        }
      }
    }

    // If no pair is found, return an empty list
    return [];
  }
}