// ignore_for_file: unnecessary_null_comparison, avoid_print, unused_local_variable

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class SummaryPage extends StatefulWidget {
  final File imageFile;

  const SummaryPage(this.imageFile, {super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  late TextRecognizer textRecognizer;

  @override
  void initState() {
    super.initState();
    textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

    doTextRecognition();
  }

  String results = "";

  Future<void> doTextRecognition() async {
    InputImage inputImage = InputImage.fromFilePath(widget.imageFile.path);

    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);

    results = recognizedText.text;
    print(results);

    setState(() {
      results;
    });

    for (TextBlock block in recognizedText.blocks) {
      final Rect rect = block.boundingBox;
      final List<Point<int>> cornerPoints = block.cornerPoints;
      final String text = block.text;
      final List<String> languages = block.recognizedLanguages;

      for (TextLine line in block.lines) {
        // Same getters as TextBlock
        for (TextElement element in line.elements) {
          // Same getters as TextBlock
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Özet Sayfası')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.file(widget.imageFile),
            Card(
              margin: const EdgeInsets.all(8),
              color: Colors.grey[300],
              child: Text(results),
            ),
          ],
        ),
      ),
    );
  }
}
