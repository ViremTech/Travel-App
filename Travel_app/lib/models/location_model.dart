class LocationModel {
  final String imagePath;
  final String locationName;
  final String locationPrice;
  final String rating;
  final String address;
  final String description;
  final String detailedDescription;

  LocationModel({
    required this.detailedDescription,
    required this.description,
    required this.imagePath,
    required this.locationName,
    required this.locationPrice,
    required this.rating,
    required this.address,
  });
}
