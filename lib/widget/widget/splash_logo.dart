part of widgets;

class Splash_logo extends StatelessWidget {
  const Splash_logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}


