import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/add_location_view_body.dart';
class AddLocationView extends StatelessWidget {
  const AddLocationView({super.key});
  static const String routeName = '/add_location_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: const ArrowBackIcon(),
            ),
            Expanded(
              child: AddLocationViewBody(),
            ),
          ],
        ),
      ),
    );
  }
}

