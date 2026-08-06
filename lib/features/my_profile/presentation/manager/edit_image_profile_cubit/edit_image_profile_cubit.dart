import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wajed/features/my_profile/presentation/manager/edit_image_profile_cubit/edit_image_profile_state.dart';

class EditImageProfileCubit extends Cubit<EditImageProfileState> {
  EditImageProfileCubit() : super(EditImageProfileInitial());
  File? file;
  final ImagePicker _picker = ImagePicker();
  editImage(ImageSource source)async {
    final XFile? imageFile = await _picker.pickImage(source: source);
    if (imageFile != null) {
      file = File(imageFile!.path);
    }
    emit(EditImageProfileInitial());
  }
}
