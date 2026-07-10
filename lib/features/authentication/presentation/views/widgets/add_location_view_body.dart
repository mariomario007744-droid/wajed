import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/authentication/presentation/views/widgets/custom_search_field.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/subtitle_view.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/title_view.dart';

class AddLocationViewBody extends StatelessWidget {
  const AddLocationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
