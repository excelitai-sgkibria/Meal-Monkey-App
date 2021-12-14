part of widgets;

class Login_Header extends StatelessWidget {
  final String title;
  final String subtitle;
  const Login_Header({
   required this.title,required this.subtitle ,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Center(
        child: Column(
            children: [
              SizedBox(height: kVerticalPadding*3),

              Text('$title',
                style: Theme.of(context).textTheme.headline4!.
                copyWith(color: primaryColor,
                fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center
              ),
              SizedBox(height: kVerticalPadding/2),

              Text("$subtitle",
                style: Theme.of(context).textTheme.subtitle2!.
                copyWith(color: placeholdColor,

              ),
                  textAlign: TextAlign.center

              ),
            ]
        ),
      ),
    );
  }
}
