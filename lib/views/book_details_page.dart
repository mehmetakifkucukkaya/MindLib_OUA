import 'package:flutter/material.dart';

import '../models/book_model.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                book.imageUrl,
                height: MediaQuery.of(context).size.height / 1.6,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //* YAZAR
                  Text(
                    ' ${book.author}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  //* FAVORİ BUTONUU
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_outlined,
                      size: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              //* TÜR
              RichText(
                text: TextSpan(
                  style:
                      const TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    const TextSpan(
                      text: 'Tür: ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: book.genre,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              //* ÖZET
              RichText(
                text: TextSpan(
                  style:
                      const TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    const TextSpan(
                      text: 'Kitap Özeti\n',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: book.summary,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
