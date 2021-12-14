
part of pages;

class Enter_Otp extends StatelessWidget {
  const Enter_Otp({Key? key}) : super(key: key);

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
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Login_Header(
                  title: "We have sent an OTP to\n your Mobile",
                  subtitle: "please check your mobile number 017*********30"
                      "\ncontinue to reset your password"),
              SizedBox(height: kVerticalPadding / 2,),

              Row(
                children: [

                  _buildOtpValue(),
                  _buildOtpValue(),
                  _buildOtpValue(),
                  _buildOtpValue(),
                ],
              ),

              SizedBox(height: kVerticalPadding / 2,),


              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: mainColor),
                  onPressed: () {},
                  child: Text("Next")),

              SizedBox(height: kVerticalPadding / 2,),


              Footer_class(
                  actiontext: "Click here",
                  question: "Didn't receive?",
                  action: () {
                    Navigator.pushReplacementNamed(
                        context, kRouteRooteEnterEmail);
                  }

              )


            ],
          ),
        ),
      ),
    );
  }


  Expanded _buildOtpValue() {
    return Expanded(child: TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),

      ),
    )
    );
  }
}