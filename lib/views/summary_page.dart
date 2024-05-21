import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:http/http.dart' as http;

class SummaryPage extends StatefulWidget {
  final File imageFile;

  const SummaryPage(this.imageFile, {super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  late TextRecognizer textRecognizer;
  String apiKey =
      'sk-proj-UpVx6dNFQUoeCR7vzk4kT3BlbkFJkdAiAnLF98VbeJAFE81w';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

    doTextRecognition();
  }

  String results = "";
  String summary = '';

  Future<void> doTextRecognition() async {
    setState(() {
      _isLoading = true; // Progress barı göster
    });

    InputImage inputImage = InputImage.fromFilePath(widget.imageFile.path);

    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);

    results = recognizedText.text;
    print(results);

    await fetchSummary(results);

    setState(() {
      _isLoading = false; // Progress barı gizle
    });
  }

  String combineTextBlocks(List<TextBlock> blocks) {
    String combinedText = '';
    for (TextBlock block in blocks) {
      combinedText += '${block.text} ';
    }
    return combinedText.trim();
  }

  Future<void> fetchSummary(String message) async {
    const apiUrl = 'https://api.openai.com/v1/chat/completions';
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    // Türkçe karakterleri doğru kodlamak için Utf8Codec kullanalım
    const utf8codec = Utf8Codec();

    final requestBody = jsonEncode({
      "model": "gpt-3.5-turbo-0125",
      "messages": [
        {
          "role": "user",
          "content":
              "Bu metni kendi cümlelerinle 3 - 4 cümle olacak şekilde kısa ve net biçimde özetle: $message"
        }
      ],
      "temperature": 1.26
    });

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body:
          utf8.encode(requestBody), // String'i utf8 olarak encode ediyoruz
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(utf8codec.decode(response
          .bodyBytes)); // Response body'i utf8 olarak decode edelim
      final summaryText = responseData['choices'][0]['message']['content'];
      setState(() {
        summary = summaryText;
      });
    } else {
      setState(() {
        summary = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Özet Sayfası')),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.file(widget.imageFile),
                  const SizedBox(height: 20),
                  const Text(
                    "Özet",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                  if (summary.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        color: Colors.grey[400],
                        child: Column(
                          children: [
                            Text(
                              summary,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if (_isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black54,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
