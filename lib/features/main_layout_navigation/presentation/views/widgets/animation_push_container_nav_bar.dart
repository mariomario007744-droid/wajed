import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/main_layout_navigation/presentation/maneger/nav_bar_cubit/cubit/nav_bar_cubit.dart';

class AnimationPushContainerNavBar extends StatelessWidget {
  const AnimationPushContainerNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: AnimatedSize(
        curve: Curves.bounceInOut,
        duration: Duration(milliseconds: 1000),
        child: SizedBox(
          height: 70,
          width:
              (MediaQuery.of(context).size.width / 5) *
              (BlocProvider.of<NavBarCubit>(context).isSelected > 1
                  ? BlocProvider.of<NavBarCubit>(context).isSelected +
                        1
                  : BlocProvider.of<NavBarCubit>(context).isSelected),
        ),
      ),
    );
  }
}

