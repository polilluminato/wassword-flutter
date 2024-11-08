enum DividerEnum {
  comma(",", "Comma (,)"),
  period(".", "Period (.)"),
  space(" ", "Space ( )"),
  colon(":", "Colon (:)"),
  semicolon(";", "Semicolon (;)"),
  hyphen("-", "Hyphen (-)"),
  underscore("_", "Underscore (_)"),
  pipe("|", "Pipe (|)");

  const DividerEnum(this.divider, this.name);
  final String divider;
  final String name;
}
