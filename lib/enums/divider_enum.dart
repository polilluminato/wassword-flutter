enum DividerEnum {
  comma(",", "Comma (,)"), //passphraseGeneratorDividerOptionComma
  period(".", "Period (.)"), //passphraseGeneratorDividerOptionPeriod
  space(" ", "Space ( )"), //passphraseGeneratorDividerOptionSpace
  colon(":", "Colon (:)"), //passphraseGeneratorDividerOptionColon
  semicolon(";", "Semicolon (;)"), //passphraseGeneratorDividerOptionSemicolon
  hyphen("-", "Hyphen (-)"), //passphraseGeneratorDividerOptionHyphen
  underscore(
      "_", "Underscore (_)"), //passphraseGeneratorDividerOptionUnderscore
  pipe("|", "Pipe (|)"); //passphraseGeneratorDividerOptionPipe

  const DividerEnum(this.divider, this.name);
  final String divider;
  final String name;
}
