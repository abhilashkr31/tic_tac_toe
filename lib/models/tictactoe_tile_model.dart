class TicTacToeTile {
  String value = "";
  final int boardRowNumber;
  final int boardColumnNumber;
  final int rowNumber;
  final int columnNumber;
  bool clickable = true;

  TicTacToeTile(
    this.boardRowNumber,
    this.boardColumnNumber,
    this.rowNumber,
    this.columnNumber,
  );

  setValue(String newValue) {
    this.value = newValue;
    this.clickable = false;
  }

  bool getClickStatus() {
    return this.clickable;
  }
}