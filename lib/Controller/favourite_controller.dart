import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxList<String> plattersList = [
    'https://media.istockphoto.com/id/114329367/photo/sandwich-tray.jpg?s=612x612&w=0&k=20&c=Ns2QlXZc37unLEabB_VjzGrRv9bUVX_HoKBoiP5PaUI=',
    'https://www.aninas-recipes.com/wp-content/uploads/2016/06/mixed-snack-platter-600x400.jpg',
    'https://img.taste.com.au/NGH-TdgW/taste/2019/11/seafood-platter-taste-156004-2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSErfTaqMN-LcZrpzKZrhyPdkOfxfDgL0-lIA&usqp=CAU',
    'https://cdn.loveandlemons.com/wp-content/uploads/2022/08/mezze-platter-500x375.jpg',
    'https://img.taste.com.au/NGH-TdgW/taste/2019/11/seafood-platter-taste-156004-2.jpg'
  ].obs;
  RxList<String> plattersNames = [
    'Finger food plater',
    'Asparagus tartlets',
    'Greek mezze platter',
    'Cheese platter',
    'Party platter',
    'Sea food platter'
  ].obs;
  RxList tempPlatterList = [].obs;
  RxList<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMvIXZHrxNcWlg12Q-5dMFPYmu_55kHUl0XA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ56O5NlJCFGlDyhUFZXCERaCQh896upSFMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4CegWh_u9q_O0RtjVO7AGD-K4cuE9G_D4yg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUStB5O0qDXrUIC6SImWDrzASc4yAq-8uBtw&usqp=CAU',
  ].obs;
  RxList<String> categoriesImg = [
    'asset/images/food.png',
    'asset/images/food.png',
    'asset/images/food.png',
    'asset/images/food.png',
    'asset/images/food.png',
    'asset/images/food.png',
  ].obs;
  RxList<String> categoryNames = [
    'Starters',
    'Drinks',
    'Rice',
    'Curry',
    'Desi Food',
    'Pizza',
  ].obs;
  RxList<String> startersNames = [
    'Grill Chicken',
    'Mashroom Fry',
    'Veggies Fry',
    'Sandwich',
  ].obs;
  RxList<String> mainCourseNames = [
    'Biryani',
    'Bread',
    'Plain Rice',
    'Sandwich',
  ].obs;
  RxList<String> profileOptions = [
    'Account',
    'Privacy',
    'Notifications',
    'Help',
    'App language',
    'Settings'
  ].obs;
  RxList<String> citiesNames = [
    'Abbottabad'
        'Bahawalnagar'
        'Bahawalpur'
        'Bannu'
        'Chakwal'
        'Chiniot'
        'Dadu'
        'Daska'
        'Dera Ghazi Khan'
        'Faisalabad'
        'Fateh Jang'
        'Ghotki'
        'Gilgit'
        'Gujar Khan'
        'Gujranwala'
        'Gujrat'
        'Hafizabad'
        'Haripur'
        'Hyderabad'
        'Islamabad (Capital city)'
        'Jacobabad'
        'Jhang'
        'Jhelum'
        'Karachi'
        'Kasur'
        'Khairpur'
        'Khanewal'
        'Khuzdar'
        'Kohat'
        'Lahore'
        'Larkana'
        'Mandi Bahauddin'
        'Mardan'
        'Mingora'
        'Mirpur'
        'Mirpur Khas'
        'Multan'
        'Muridke'
        'Muzaffarabad'
        'Nawabshah'
        'Nowshera'
        'Okara'
        'Pakpattan'
        'Peshawar'
        'Quetta'
        'Rahim Yar Khan'
        'Rawalakot'
        'Rawalpindi'
        'Sadiqabad'
        'Sahiwal'
        'Sargodha'
        'Shekhupura'
        'Shikarpur'
        'Sialkot'
        'Sukkur'
        'Swabi'
        'Swat'
        'Tando Adam'
        'Taxila'
        'Vehari'
        'Wah Cantt'
        'Wazirabad'
  ].obs;
  List<Icon> profileIcons = [
    const Icon(Icons.account_balance, color: Colors.deepPurple),
    const Icon(Icons.privacy_tip_sharp, color: Colors.deepPurple),
    const Icon(Icons.notifications, color: Colors.deepPurple),
    const Icon(Icons.help, color: Colors.deepPurple),
    const Icon(Icons.language, color: Colors.deepPurple),
    const Icon(Icons.settings, color: Colors.deepPurple),
  ];
  addToFavourite(String value) {
    tempPlatterList.add(value);
  }

  removeFromFavourite(String value) {
    tempPlatterList.remove(value);
  }

  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
}
