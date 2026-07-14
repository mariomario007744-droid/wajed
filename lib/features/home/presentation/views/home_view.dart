import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/posts/shared_components/images_container.dart';
import 'package:wajed/features/home/presentation/views/widget/home_app_bar.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/home_view';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
          child: Column(
            children: [
              SizedBox(height: 50, child: HomeAppBar()),
              ImagesContainer(
                images: [
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                  'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
                ],
                count: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
