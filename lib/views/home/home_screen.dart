import 'package:flutter/material.dart';
import 'package:notepad/views/home/navbar/custom_nav_bar.dart';
import 'package:notepad/views/utlis/colors.dart';
import 'package:notepad/views/utlis/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: const HeadingTwo(data: 'NotePad',color: Colors.white,),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: HeadingThree(data: 'Title : $index'),
                subtitle: HeadingFour(data: 'Description'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,)),
                leading: CircleAvatar(child: HeadingTwo(data: 'T',color: Colors.white,),backgroundColor: AppColors.primaryColor,),
              ),
            ),
          );
        },
      ),
    );
  }
}
