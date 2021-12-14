part of pages;

class Register_Page extends StatelessWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: kVerticalPadding*3,),
              Text("Sign Up",
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.headline4!
                  .copyWith(color: secondarycolor,
              )),
              SizedBox(height: kVerticalPadding/4,),
              Text('Add your details to sign up',
                style: Theme.of(context).textTheme.subtitle2!.
                copyWith(color: primaryColor),),
              SizedBox(height: kVerticalPadding*3,),

              CustomTextFormField(
                labelText:"Your Email",),
              SizedBox(height: kVerticalPadding ),
              CustomTextFormField(
                labelText:"Mobile No",),
              SizedBox(height: kVerticalPadding ),
              CustomTextFormField(
                labelText:"Address",),
              SizedBox(height: kVerticalPadding ),
              CustomTextFormField(
                labelText:"Password",),
              SizedBox(height: kVerticalPadding ),
              CustomTextFormField(
                labelText:"Confirm Password",),
              SizedBox(height: kVerticalPadding ),

              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(primary: mainColor
                ),
                child: Text("Login"),
              ),

              const Expanded(child: SizedBox.shrink()),
              Footer_class(
                  actiontext: "Login" ,
                  question: "Already have an account?", action: () {Navigator.pushReplacementNamed(context, kRouteLogin);  }),

              SizedBox(height: 20.h,),


            ],
          ),
        )
      ),

    );
  }
}
