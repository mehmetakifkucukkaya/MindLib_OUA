import 'dart:io';

import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  final File imageFile;

  const SummaryPage(this.imageFile, {super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary Page'),
      ),
      body: Center(
        child: widget.imageFile != null
            ? Image.file(widget.imageFile)
            : const Text('No image selected'),
      ),
    );
  }
}
