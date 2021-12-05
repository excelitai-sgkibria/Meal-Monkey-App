part of models;

class IntroModel {

  final String? imagepath;
  final String? title;
  final String? desc;

  IntroModel({this.imagepath,this.title,this.desc});
  static List<IntroModel> data =[
    IntroModel(imagepath:'assets/intro1.png',
    title:'Find Food You Love',
    desc: 'Discover the best foods from 1,000\nrestaurants and fast delivery to your\ndoorstep'
    ),


    IntroModel(imagepath:'assets/intro2.png',
    title: 'Fast Delivery',
    desc: 'Fast food dekivery to your home, office\nwherever you are'),
    IntroModel(imagepath:'assets/intro3.png',
    title: 'Live Tracking',
    desc: 'Realtime tracking of your food on the app\nonce you places the order '),


  ];

}