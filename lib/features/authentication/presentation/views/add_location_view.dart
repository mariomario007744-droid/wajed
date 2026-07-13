import 'package:flutter/material.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/add_location_view_body.dart';
class AddLocationView extends StatelessWidget {
  const AddLocationView({super.key});
  static const String routeName = '/add_location_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset("assets/images/Location confirmation.png")),
            AddLocationViewBody(),
          ],
        ),
      ),
    );
  }
}

