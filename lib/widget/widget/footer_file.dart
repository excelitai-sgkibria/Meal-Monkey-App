part of widgets;

class Footer_class extends StatelessWidget {
  final String question;
  final String  actiontext;
  const Footer_class({
   required this.actiontext,
   required this.question,


    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: question,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(color: primaryColor),
   children: [
     TextSpan(
       text: actiontext,
       style: TextStyle(
         fontWeight: FontWeight.bold,
           color:mainColor )
       )

   ] ),
    );
  }
}
