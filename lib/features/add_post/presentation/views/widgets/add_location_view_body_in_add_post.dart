import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/custom_search_location_field_in_add_post.dart';
import 'package:wajed/core/widgets/widgets/subtitle_view.dart';
import 'package:wajed/core/widgets/widgets/title_view.dart';

class AddLocationViewBodyInAddPost extends StatelessWidget {
  const AddLocationViewBodyInAddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Column(
        children: [
          Container(
            color: ThemeData().scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: const ArrowBackIcon(),
                ),
                const TitleView(text: 'Add Location'),
                const SizedBox(height: 8),
                const SubtitleView(
                  text: 'Add the place where you lost your property.',
                ),
                const SizedBox(height: 16),
                const CustomSearchLocationFieldInAddPost(),
              ],
            ),
          ),
          Spacer(flex: 1),
          CustomButton(
            text: 'Confirm Location',
            onPressed: () => navigateToConfirmOTPCode(context),
          ),
        ],
      ),
    );
  }

  navigateToConfirmOTPCode(BuildContext context) {

  }
}
