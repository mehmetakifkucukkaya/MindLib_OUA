import 'package:flutter/material.dart';

import '../models/book_model.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kitap Resmi
            Image.network(
              book.imageUrl,
              height: 400,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' ${book.author}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),

                //* FAVORİ BUTONUU
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.favorite_outlined,
                    size: 31,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Tür: ${book.genre}',
              style: const TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Text(
              'Özet:\n${book.summary}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
