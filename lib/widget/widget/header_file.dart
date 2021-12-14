part of widgets;

class Header_File extends StatelessWidget {
 final String title;
 final String subtitle;
  const Header_File({
    required this.title,
    required this.subtitle,

    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
          children: [
          SizedBox(height: kVerticalPadding*3),

        Text('$title',
          style: Theme.of(context).textTheme.headline3!.
          copyWith(color: primaryColor),),
        SizedBox(height: kVerticalPadding/2),

        Text("$subtitle",
          style: Theme.of(context).textTheme.bodyText2!.
          copyWith(color: primaryColor),),
    ]));
  }
}
