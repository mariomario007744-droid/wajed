import 'package:flutter/material.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/toggle_button.dart';

class RowToggleButtons extends StatelessWidget {
  const RowToggleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ToggleButton(
              text: 'I lost something',
              onPressed: () => {},
              isSelected: false,
            ),
          ),
          Expanded(
            child: ToggleButton(
              text: 'I found something',
              onPressed: () => {},
              isSelected: true,
            ),
          ),
        ],
      ),
    );
  }
}
