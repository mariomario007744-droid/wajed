import 'package:flutter/material.dart';
import 'package:wajed/features/chat/presentation/views/widgets/chatting_view_app_bar.dart';

class ChattingView extends StatelessWidget {
  const ChattingView({super.key});
  static const String routeName = '/chatting_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ChattingViewAppBar(avatarUrl: 'assets/images/6140fad6d9bdd7f9a2e23fb608060567b7c77a06.png', name: 'Marvin McKinney', status: 'Online',),
          ],
        ),
      ),
    );
  }
}