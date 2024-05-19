class Book {
  final String title;
  final String author;
  final String imageUrl;

  Book({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
}

final List<Book> books = [
  Book(
    title: 'Rich Dad Poor Dad',
    author: 'Robert T. Kiyosaki',
    imageUrl:
        'https://m.media-amazon.com/images/I/81BE7eeKzAL._SY425_.jpg',
  ),
  Book(
    title: 'The Alchemist',
    author: 'Paulo Coelho',
    imageUrl:
        'https://m.media-amazon.com/images/I/71pJIgY8ZuL._SY425_.jpg',
  ),
  Book(
    title: 'The Fault in Our Stars',
    author: 'John Green',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Fangirl',
    author: 'Rainbow Rowell',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Divergent',
    author: 'Veronica Roth',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Fallen',
    author: 'Lauren Kate',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Sylvia Day',
    author: 'Sylvia Day',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Darker',
    author: 'E. L. James',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Gone Girl',
    author: 'Gillian Flynn',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Book(
    title: 'Grey',
    author: 'E. L. James',
    imageUrl: 'https://via.placeholder.com/150',
  ),
];
