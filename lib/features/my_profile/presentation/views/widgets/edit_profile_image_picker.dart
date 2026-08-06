import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/my_profile/presentation/manager/edit_image_profile_cubit/edit_image_profile_cubit.dart';
import 'package:wajed/features/my_profile/presentation/manager/edit_image_profile_cubit/edit_image_profile_state.dart';

class EditProfileImagePicker extends StatelessWidget {
  const EditProfileImagePicker({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditImageProfileCubit(),
      child: BlocBuilder<EditImageProfileCubit, EditImageProfileState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => imageSelectButtomSheet(context),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:BlocProvider.of<EditImageProfileCubit>(context).file!=null ? Image.file(
                    BlocProvider.of<EditImageProfileCubit>(context).file!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ) : Image.asset(
                    image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -16,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  imageSelectButtomSheet(BuildContext context) {
    final cubit = BlocProvider.of<EditImageProfileCubit>(context);
    return showBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('Take a photo'),
              onTap: () {
                Navigator.pop(context);
                cubit.editImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.image_outlined),
              title: const Text('Choose from gallery'),
              onTap: () {
                Navigator.pop(context);
                cubit.editImage(ImageSource.gallery);
              },
            ),
          ],
        );
      },
    );
  }
}
