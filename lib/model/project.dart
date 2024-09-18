class Project {
  Project({
    required this.title,
    required this.projectFolder,
    required this.imagesLocations,
    required this.technologyIcons,
    required this.description,
    required this.url,
  });

  final String title;
  final String projectFolder;
  final List<String> imagesLocations;
  final List<String> technologyIcons;
  final String description;
  final String url;
}
