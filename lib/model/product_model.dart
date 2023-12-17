class Products {
  final String name;
  final String description;
  final String? brandName;
  final String? image;
  final double rating;
  final double price;
  final List<String>imageDetails;

  Products(
      {required this.name,
      required this.description,
        required this.brandName,
        required this.image,
      required this.rating,
      required this.price,
      required this.imageDetails});
}
