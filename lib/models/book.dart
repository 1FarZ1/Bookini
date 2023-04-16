// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Book {
  String name;
  String author;
  String description;
  String image;
  double price;
  Book({
    required this.name,
    required this.author,
    required this.description,
    required this.image,
    required this.price,
  });

  Book copyWith({
    String? name,
    String? author,
    String? description,
    String? image,
    double? price,
  }) {
    return Book(
      name: name ?? this.name,
      author: author ?? this.author,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'author': author,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      name: map['name'] as String,
      author: map['author'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      price: map['price'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Book(name: $name, author: $author, description: $description, image: $image, price: $price)';
  }

  @override
  bool operator ==(covariant Book other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.author == author &&
      other.description == description &&
      other.image == image &&
      other.price == price;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      author.hashCode ^
      description.hashCode ^
      image.hashCode ^
      price.hashCode;
  }
}
