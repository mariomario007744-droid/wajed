import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_cubit.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_post_app_bar.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_post_body.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({super.key});
  static const String routeName = '/add_post_view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddPostTypeCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
            child: Column(children: [AddPostAppBar(), AddPostBody()]),
          ),
        ),
      ),
    );
  }
}
