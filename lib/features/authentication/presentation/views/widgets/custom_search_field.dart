import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/utils/text_style.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
                AssetsData.mapsSearchIcon,
                height: 3,
              ),
        ),
        hint: const Text('Search for a place', style: Styles.fontSize12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
    );
  }
}
