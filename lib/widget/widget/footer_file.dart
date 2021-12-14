part of widgets;

class Footer_class extends StatelessWidget {
  final String question;
  final String  actiontext;
  final GestureTapCallback action;
  const Footer_class({
   required this.actiontext,
   required this.question,
    required this.action,


    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: question,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: placeholdColor,fontSize: 16),
   children: [
     TextSpan(
       text: actiontext,
       style: TextStyle(
         fontWeight: FontWeight.bold,
           color:mainColor ),
       recognizer: TapGestureRecognizer()..onTap = action,
       )

   ] ),
    );
  }
}
