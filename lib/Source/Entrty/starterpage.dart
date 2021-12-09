 part of pages;

class StarterPAge extends StatefulWidget {
  const StarterPAge({Key? key}) : super(key: key);

  @override
  _StarterPAgeState createState() => _StarterPAgeState();
}

class _StarterPAgeState extends State<StarterPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children:  [
          const Splashpainter(),
         // cnst StarterPainter(),

          const Splash_logo(),

          Padding(padding: EdgeInsets.all(60.w), ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Text('Discover the best foods from 1,000\nrestaurants and fast delivery to your\ndoorstep',
              style:Theme.of(context).textTheme.bodyText1!.copyWith(
                color: secondarycolor,
                height: 4.h,

              ),
                textAlign: TextAlign.center,

              ),
              SizedBox(height: 125.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, kRouteLogin);
                },
                    style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      minimumSize: const Size(double.infinity,50),
                      padding:const EdgeInsets.all(16),
                    ),

                    child: Text("Log In")
                ),
              ),
              SizedBox(height: 20.h),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: mainColor),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    minimumSize: const Size(double.infinity,50),
                    padding:const EdgeInsets.all(16),
                  ),
                child: Text('Create An Account',style: TextStyle(
                  color: mainColor,
                ),),
                ),
              ),

            ],
          )


         ],
      ),
    );

  }
}
