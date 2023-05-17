import 'package:flutter/material.dart';
import 'package:food_me/config/appColor.dart';

import '../../../widgets/customBtn.dart';
import '../../../widgets/customInput.dart';
import '../../../widgets/customText.dart';
import '../profile/profilePage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({ Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
              child: Icon(Icons.arrow_back,color: Colors.black,)),
          title: Center(
            child: const Text(
              "Account",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ),
        body:SingleChildScrollView(

            child: Column(

              children: [
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Update your account",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Tajawal',
                          color: AppColor.primaryYellow,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInput(
                  hint: "Name",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                CustomInput(
                  hint: "Afef",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                CustomInput(
                  hint: "Afef",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                CustomInput(
                  hint: "98112314",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                // CustomInputLogin(
                //   color: Colors.white,
                //   icon: Icons.email,
                //   hint: "afef@gmail.com",
                //   hight: 60,
                //
                //   //   validator: controller.validator.validateEmail,
                //   // textEditingController: controller.emailController,
                // ),
                // SizedBox(
                //   height: 18,
                // ),
                // // GetBuilder<LoginController>(builder: (logic) {
                // CustomInputLogin(
                //   color: Colors.white,
                //   icon: Icons.home,
                //   hint: "kasserine ",
                //   hight: 60,
                //   //  obscureText: logic.isVisiblePassword,
                //   //    validator: controller.validator.validatePassword,
                //   // textEditingController: controller.passwordController,
                //   //  suffixIcon: IconButton(
                //   //    onPressed: logic.showHidePassword,
                //   //    icon: Icon(
                //   //      color: Colors.white,
                //   //    //  logic.isVisiblePassword
                //   //          ? Icons.visibility_off
                //   //          : Icons.visibility,
                //   //    ),
                //   //  ),
                // ),
                // SizedBox(
                //   height: 18,
                // ),
                Center(
                  child:
                  CustomBtn(
                    backColor: AppColor.primaryYellow,
                    raduis: 3,
                    function: () {},
                    text: CustomText(
                      color: Colors.white,
                      fontSize: 16,
                      title: 'Update changes',
                    ),
                  ),
                  // CustomButton2(
                  //   text: 'continue',
                  //   color: Colors.deepOrangeAccent,
                  //   width: MediaQuery.of(context).size.width * .8,
                  //   hight: 50,
                  //   onClick: () {
                  //     // controller.resetPassword();
                  //     // Get.offAll(LoginPage());
                  //   },
                  // ),
                ),
              ],
            )
        )
    );
  }
}

