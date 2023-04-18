 import '../../models/book/book.dart';

List<Book> creatingList(List<dynamic> items) {
     List<Book> books = [];
    for (var item in items) {
      books.add(Book.fromMap(item));
    }
    return books;
  }