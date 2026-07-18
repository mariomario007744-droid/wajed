import 'package:flutter/material.dart';

class BuildMoreThanFourImages extends StatelessWidget {
  const BuildMoreThanFourImages({
    required this.images,
    required this.remainingCount,
  });
  final List<String> images;
  final int remainingCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  images[0],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
              const SizedBox(width: 2),
              Expanded(
                child: Image.asset(
                  images[1],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 2),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  images[2],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
              const SizedBox(width: 2),
              // الصورة الرابعة ومعاها الطبقة الشفافة + العدد
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(images[3], fit: BoxFit.cover),
                    Container(
                      color: Colors.black.withValues(alpha: 0.5),
                      child: Center(
                        child: Text(
                          '+$remainingCount',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
