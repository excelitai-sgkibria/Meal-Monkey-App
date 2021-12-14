part of pages;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          height:MediaQuery.of(context).size.height,
          child: Column(
             children: [
               Header_File(title: "Login", subtitle: "Add details to login"),
          //     SizedBox(height: kVerticalPadding*3),
          //
          //     Text('Login',
          //       style: Theme.of(context).textTheme.headline3!.
          //       copyWith(color: primaryColor),),
          //     SizedBox(height: kVerticalPadding/2),
          //
          //     Text("Add your details to login",
          //       style: Theme.of(context).textTheme.bodyText2!.
          //       copyWith(color: primaryColor),),
              SizedBox(height: kVerticalPadding*2),


              CustomTextFormField(
               labelText:"Your Email",),
              SizedBox(height: kVerticalPadding ),
              CustomTextFormField(
                  labelText:"password"
              ),
              SizedBox(height: kVerticalPadding/2),
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(primary: mainColor
                ),
                  child: Text("Login"),
                  ),
              SizedBox(height: kVerticalPadding/2),


              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, kRouteRooteEnterEmail);
                },
                child: Text("Forget Your Password?",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(color: primaryColor),
                ),
              ),
              SizedBox(height: kVerticalPadding*2),

              Text("Or Login With",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: primaryColor),),
              SizedBox(height: kVerticalPadding,),
              ElevatedButton.icon(onPressed: (){},
                  style: ElevatedButton.styleFrom(primary: Color(0xff3b5998)),
                  icon: const Icon(FontAwesomeIcons.facebookF,) ,
                  label: const Text("  Login with Facebook")),
              SizedBox(height: kVerticalPadding*1.5 ),
              ElevatedButton.icon(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffDD4B39),


                  ),

                  icon: const Icon(FontAwesomeIcons.googlePlusG) ,

                  label: const Text("  Login with Google")),


              const Expanded(child: SizedBox.shrink()),
              Footer_class(
                  actiontext: "Sign up" ,
                  question: "Don't have an account?", action: () {Navigator.pushReplacementNamed(context, kRouteRegister);  }),

               SizedBox(height: 20.h,),


            ],
          ),
        ),
      ),
    );
  }
}

