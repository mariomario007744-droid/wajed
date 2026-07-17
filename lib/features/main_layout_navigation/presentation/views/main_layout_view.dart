import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/main_layout_navigation/presentation/maneger/nav_bar_cubit/cubit/nav_bar_cubit.dart';
import 'package:wajed/features/main_layout_navigation/presentation/maneger/nav_bar_cubit/cubit/nav_bar_state.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/widgets/custom_nav_bar.dart';

class MainLayoutView extends StatelessWidget {
  static const String routeName = '/main_layout_view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocConsumer<NavBarCubit, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(child: state.item!.body),
            bottomNavigationBar: CustomNavBar(),
          );
        },
      ),
    );
  }
}

