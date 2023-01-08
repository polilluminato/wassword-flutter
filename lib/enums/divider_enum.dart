enum DividerEnum {
  comma(","),
  period("."),
  colon(":"),
  semicolon(";"),
  hyphen("-"),
  underscore("_"),
  pipe("|");

  const DividerEnum(this.divider);
  final String divider;
}
