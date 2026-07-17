import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/main_layout_navigation/presentation/maneger/nav_bar_cubit/cubit/nav_bar_cubit.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/custom_add_button.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/item_nav_bar.dart';

class ListItemNavBar extends StatelessWidget {
  const ListItemNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 8),
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(5, (indexGenerator) {
            return indexGenerator == 2
                ? CustomAddButton()
                : ItemNavBar(
                    index: indexGenerator > 2
                        ? indexGenerator - 1
                        : indexGenerator,
                    isSelected:
                        (BlocProvider.of<NavBarCubit>(context).isSelected ==
                        (indexGenerator > 2
                            ? indexGenerator - 1
                            : indexGenerator)),
                    onTap: () {
                      BlocProvider.of<NavBarCubit>(context).selectTab(
                        index: indexGenerator > 2
                            ? indexGenerator - 1
                            : indexGenerator,
                      );
                    },
                  );
          }),
        ),
      ),
    );
  }
}


