part of pages;

class EnterEmailPage extends StatelessWidget {
  const EnterEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),

    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Login_Header(title: "Reset password",
                subtitle: "Please enter your email to receive\n"
                "otp to create new password"),


            SizedBox(height: kVerticalPadding*2,),

            const CustomTextFormField(
              labelText: "Your Email",
            ),

            SizedBox(height: kVerticalPadding/2,),

            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, kRouteRooteEnterOtp);},
              child: const Text("Next"),
              style: ElevatedButton.styleFrom(
                  primary: mainColor),
            )
          ],
        ),
      ),
    ),
    );
  }
}
