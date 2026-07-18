import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/posts/financial_reward_container.dart';
import 'package:wajed/features/home/presentation/views/widget/list_post_action_buttons_in_home.dart';
import 'package:wajed/features/home/presentation/views/widget/lost_post_card/widgets/lost_post_header_in_home.dart';
import 'package:wajed/core/widgets/posts/post_body/images_container.dart';
import 'package:wajed/core/widgets/posts/post_body/post_description.dart';

class LostPostCardInHome extends StatelessWidget {
  final String userName = "Brooklyn Simmons";
  final String avatar =
      'assets/images/6140fad6d9bdd7f9a2e23fb608060567b7c77a06.png';
  final String timeAgo = '2 days ago';
  final String description =
      'I lost a black leather wallet with a few cards and my ID inside. Last seen near Downtown Metro Station on Sunday evening.';
  final String? rewardAmount =
      ' MARIO'; // اختياري: يمرر فقط في حالة Lost إذا وجد
  final List<String> images = [
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
    'assets/images/63a91105f3feec0fc46a90b24284bccb93613803.png',
  ];
  final int count = 7;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          LostPostHeaderInHome(
            avatar: avatar,
            userName: userName,
            timeAgo: timeAgo,
          ),

          PostDescription(description: description),
          const SizedBox(height: 12),
          ImagesContainer(images: images, count: count),
          const SizedBox(height: 8),
          FinancialRewardContainer(),
          const SizedBox(height: 8),
          ListPostActionButtonsInHome(),
        ],
      ),
    );
  }
}
