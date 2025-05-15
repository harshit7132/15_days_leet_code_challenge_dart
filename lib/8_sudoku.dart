class Solution {
  bool isValidSudoku(List<List<String>> board) {
    final rows = List.generate(9, (_) => <String>{});
    final cols = List.generate(9, (_) => <String>{});
    final boxes = List.generate(9, (_) => <String>{});

    for (int r = 0; r < 9; r++) {
      for (int c = 0; c < 9; c++) {
        String val = board[r][c];
        if (val == ".") continue;

        int boxIndex = (r ~/ 3) * 3 + (c ~/ 3);

        if (rows[r].contains(val) ||
            cols[c].contains(val) ||
            boxes[boxIndex].contains(val)) {
          return false;
        }

        rows[r].add(val);
        cols[c].add(val);
        boxes[boxIndex].add(val);
      }
    }
    return true;
  }
}
