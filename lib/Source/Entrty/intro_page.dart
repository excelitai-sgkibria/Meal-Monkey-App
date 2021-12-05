part of pages;


class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),(){
     Navigator.pushReplacementNamed(context, '/intro');
    // Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondIntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
       Image.asset(
          'assets/splash101.jpg',fit:BoxFit.fill ,
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png',fit: BoxFit.fill,
              width: 300.w,),
              Text.rich(TextSpan(text: "Meal ",
              style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold,color: mainColor),
              children:const [TextSpan(text: "Monkey",style:TextStyle(color: primaryColor) )]
              ),),
              SizedBox(height: 25.h,),
              Text('Food Delivery',
                style: Theme.of(context).
                textTheme.bodyText1!.
                copyWith(color:primaryColor,letterSpacing: 8.w ,fontWeight: FontWeight.bold),)
            ],
          )
          
    ],   ),




    );
  }
}
