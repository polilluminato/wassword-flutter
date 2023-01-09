enum DividerEnum {
  comma(",", "Comma (,)"),
  period(".", "Period (.)"),
  colon(":", "Colon (:)"),
  semicolon(";", "Semicolon (;)"),
  hyphen("-", "Hypen (-)"),
  underscore("_", "Underscore (_)"),
  pipe("|", "Pipe (|)");

  const DividerEnum(this.divider, this.name);
  final String divider;
  final String name;
}
