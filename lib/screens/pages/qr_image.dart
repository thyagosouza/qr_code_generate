import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrImage extends StatelessWidget {
  final TextEditingController controller;

  const QrImage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Image'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: QrImageView(
            data: controller.text,
            size: 200,
            embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(
                100,
                100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
