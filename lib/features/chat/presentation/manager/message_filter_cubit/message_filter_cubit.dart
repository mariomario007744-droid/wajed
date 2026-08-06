import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/chat/presentation/manager/message_filter_cubit/message_filter_state.dart';

class MessageFilterCubit extends Cubit<MessageFilterState> {
  MessageFilterCubit() : super(MessageFilterInitial());
    bool unread = true;

void filterMessages({required bool type}) {
    unread = type;
    switch (unread) {
      case true:
        emit(MessageFilterUnread());
        break;
      case false:
        emit(MessageFilterInitial());
        break;
    }
  }
}