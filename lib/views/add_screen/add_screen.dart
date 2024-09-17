import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notepad/views/add_screen/text_filed.dart';
import 'package:notepad/views/utlis/colors.dart';
import 'package:notepad/views/utlis/text_style.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: HeadingTwo(data: 'Add',color: Colors.white,),
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(data: 'Enter Title'),
          SizedBox(height: 10,),
          CustomTextField(data: 'Enter Description'),
          SizedBox(height: 25,),
          SizedBox(

            child: ElevatedButton(onPressed: (){}, child: HeadingTwo(data: 'Save',color: Colors.white,),style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,

            ),),
          )

        ],
      ),
    );
  }
}


