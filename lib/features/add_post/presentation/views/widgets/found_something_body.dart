import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/core/widgets/custom_text_form_field.dart';
import 'package:wajed/features/add_post/presentation/views/add_location_view_in_add_post.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_image_section.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/title_section.dart';

class FoundSomethingBody extends StatelessWidget {
  const FoundSomethingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          TitleSection(text: 'Photos'),
          AddImageSection(),
          TitleSection(text: 'Description'),
          CustomTextFormField(hintText: 'Enter description...', maxLines: 6),
          TitleSection(text: 'Location'),
          ElevatedButton(
            onPressed: () {
              navigateToAddLocation(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset(AssetsData.locationIcon),
                  Text('Downtown Metro Station', style: Styles.fontSize14),
                  Spacer(flex: 1),
                  Icon(Icons.chevron_right, size: 24),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }

  navigateToAddLocation(BuildContext context) {
    context.push(AddLocationViewInAddPost.routeName);
  }
}
