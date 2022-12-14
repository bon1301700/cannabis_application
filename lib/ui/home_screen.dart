/* import 'package:cannabis_aplication/app/app_resources.dart';
import 'package:cannabis_aplication/ui/camera_screen.dart';

import 'package:cannabis_aplication/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.black,
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [],
        backgroundColor: AppColors.yellow,
        title: Text(
          AppStrings.title,
          style: AppTextStyles.boldTextStyle(
              color: AppColors.black, fontSize: AppFontSizes.large),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.yellow.withOpacity(0.4),
            border: Border.all(color: AppColors.yellow, width: 5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.illustrator, height: 250),
            SizedBox(
              height: 30,
            ),
            ButtonWidget(
                type: ButtonType.MATERIAL,
                onClickListener: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CameraScreen()));
                },
                width: 200,
                color: AppColors.green,
                borderRadius: BorderRadius.circular(15),
                borderWidth: 3.0,
                borderColor: AppColors.white,
                colorSelected: AppColors.green,
                text: AppStrings.liveCamera,
                textStyle:
                    AppTextStyles.regularTextStyle(color: AppColors.white)),
          ],
        ),
      ),
    );
  }
}
 */