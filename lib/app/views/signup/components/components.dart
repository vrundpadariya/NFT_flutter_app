import '../../../../header.dart';

TextEditingController signupEmailController = TextEditingController();
TextEditingController signuppasswordController = TextEditingController();
TextEditingController signupconfirmpasswordController = TextEditingController();

 TextStyle robotoBold(double height) {
return GoogleFonts.roboto(
fontSize: height / 30,
fontWeight: FontWeight.w400,
);
}