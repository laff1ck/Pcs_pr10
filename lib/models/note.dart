class Note {
  final int id;
  final String title;
  final String description;
  final String imagePath;
  final double price;
  bool isFav;

  Note({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.price,
    this.isFav = false,
  });


  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['product_id'], // Поле из JSON
      title: json['name'] ?? 'Нет названия', // Защита от null
      description: json['description'] ?? 'Описание отсутствует', // Защита от null
      price: (json['price'] ?? 0).toDouble(), // Защита от null
      imagePath: json['image_url'] ?? '', // Обработка image_url
    );
  }
}