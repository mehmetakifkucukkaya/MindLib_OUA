import 'package:flutter/material.dart';

import '../models/book_model.dart';
import '../widgets/book_card.dart';
import 'book_details_page.dart';

class BookSummariesPage extends StatelessWidget {
  const BookSummariesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: books.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.55,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookDetailsPage(book: books[index]),
                  ),
                );
              },
              child: BookCard(book: books[index]),
            );
          },
        ),
      ),
    );
  }
}
