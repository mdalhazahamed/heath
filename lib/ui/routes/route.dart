import 'package:get/get.dart';
import 'package:heath/ui/views/auth/forget_screen.dart';
import 'package:heath/ui/views/auth/login_screen.dart';
import 'package:heath/ui/views/auth/register_screen.dart';
import 'package:heath/ui/views/auth/update_screen.dart';
import 'package:heath/ui/views/button_navi_controller.dart';
import 'package:heath/ui/views/details/item_list_details.dart';
import 'package:heath/ui/views/splash_screen.dart';

const String splash = '/splash_screen';
const String registration = '/registration_screen';
const String updateScreen = '/update_screen';
const String bottonController = '/botton_Controller';
const String forgetScreen = '/forget_Screen';
const String loginScreen = '/login_screen';
const String itemListDetails = '/itemList_Details';

//contrat our page routes

List<GetPage> getPages = [
 GetPage(name: splash, page: () =>  SplashScreen()),
  GetPage(name: registration, page: () =>  RegisterScreen()),
  GetPage(name: updateScreen, page: () =>  UpdateScreen()),
   GetPage(name: bottonController, page: () =>  BottonNavController()),
    GetPage(name: forgetScreen, page: () =>  ForgetScreen()),
    GetPage(name: loginScreen, page: () =>  LoginScreen()),
     GetPage(name: itemListDetails, page: () =>  ItemListDetails()),
];
