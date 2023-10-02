// ignore_for_file: file_names

enum WindowSizeEnum {
  mobilePortrait(400, 890, "Mobile Portrait"),
  mobileLandscape(890, 400, "Mobile Landscape"),
  tabletPortrait(607, 874, "Tablet Portrait"),
  tabletLandscape(874, 607, "Tablet Landscape"),
  desktop(1440, 900, "Desktop");

  const WindowSizeEnum(this.width, this.height, this.description);
  final double width;
  final double height;
  final String description;
}
