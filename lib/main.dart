import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_bloc/bloc/image_picker/image_picker_bloc.dart';
import 'package:image_bloc/image_practice.dart';
import 'package:image_bloc/utils/image_picker_utils.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerBloc(ImagePickerUtils()),
      child: MaterialApp(
        title: 'Image_bloc',
        home: ImagePractice(),
      ),
    );
  }
}
