import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/authentication/presentation/widgets/custom_search_field.dart';
import 'package:wajed/features/authentication/presentation/widgets/subtitle_view.dart';
import 'package:wajed/features/authentication/presentation/widgets/title_view.dart';

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
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleView(text: 'Add Location'),
                    const SizedBox(height: 8),
                    const SubtitleView(
                      text: 'Add the place where you lost your property.',
                    ),
                    const SizedBox(height: 16),
                    const CustomSearchField(),
                    Spacer(flex: 1),
                    CustomButton(text: 'Confirm Location', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
