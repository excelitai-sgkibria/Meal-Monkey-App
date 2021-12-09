part of widgets;

class CustomTextFormField extends StatelessWidget {
  final String? labelText;

  const CustomTextFormField({
    this.labelText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: fontcolor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: mainColor),
          decoration: InputDecoration(
            labelText:labelText ,
            isCollapsed: true,
          )

        ),
      );
  }
}
