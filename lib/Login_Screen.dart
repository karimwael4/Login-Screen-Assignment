import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login Screen App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),)
        ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height:
              20,),
            Text("CodePlayon",
              style: TextStyle(
              color: Colors.blue,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height:
            20,),
            CustomTextFieldWidget(
              autoFocus: true,
              borderColor: Colors.grey,
              borderRadiusValue: 0,
              height: 48 ,
              width: 348,
              hint: 'User Name',
            ),
            SizedBox(height:
            20,),
            CustomTextFieldWidget(
              autoFocus: true,
              borderColor: Colors.grey,
              borderRadiusValue: 0,
              height: 48 ,
              width: 348,
              hint: 'Password',
            ),
            SizedBox(height:
            20,),
            Text("Forgot Password",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height:
            20,),
            CustomButtonWidget(
              width: 348,
              height: 48,
              title: 'Login',


            ),
            SizedBox(height:
            20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don\'t have account ?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                ),),
              SizedBox(width: 12,),
              Text("Sign in",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
            ],)
          ],
        ),
      ),
    );
  }
}
class CustomTextFieldWidget extends StatelessWidget {
  static int get _companyDecimalNumber => 3;



  final TextEditingController? controller;
  final bool? obscure;
  final bool? readOnly;
  final String? hint;
  final String? label;
  final Color? backGroundColor, focusedBorderColor;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final int? maxLine, minLines;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final bool? isDense;
  final Color? borderColor;
  final bool disableBorder;
  final FocusNode? focusNode;
  final double? borderRadiusValue, width, height;
  final void Function(String?)? onSave;
  final Widget? prefixIcon, suffixIcon;
  final void Function(String)? onchange;
  final Function()? onSuffixTap;
  final TextInputAction? textInputAction;
  final bool? expands;
  final bool enable, isClickable, autoFocus, cancelDisableBackground, disableLabel;
  final TextDirection? textDirection;
  final TextAlign? textAlign;

  const CustomTextFieldWidget({
    Key? key,
    this.isDense,
    this.style,
    this.onchange,
    this.label,
    this.validator,
    this.maxLine,
    this.hint,
    this.backGroundColor,
    this.controller,
    this.obscure = false,
    this.enable = true,
    this.textDirection,
    this.readOnly = false,
    this.disableLabel = false,
    this.textInputType = TextInputType.text,
    this.borderColor,
    this.borderRadiusValue,
    this.prefixIcon,
    this.width,
    this.hintStyle,
    this.suffixIcon,
    this.onSuffixTap,
    this.height,
    this.focusNode,
    this.focusedBorderColor,
    this.onSave,
    this.minLines,
    this.disableBorder = false,
    this.textInputAction,
    this.expands,
    this.isClickable = false,
    this.autoFocus = false,
    this.cancelDisableBackground = false,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  InputBorder? getBorder(BuildContext context, {double? radius, Color? color}) {
    if (disableBorder) return null;
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 16),
      borderSide: BorderSide(
        color: color ?? Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 328,
      height: height ?? 48,
      child: TextFormField(
        textDirection: textDirection,
        textAlign: textAlign ?? TextAlign.start,
        autofocus: autoFocus,
        mouseCursor: isClickable ? SystemMouseCursors.click : null,
        textInputAction: textInputAction ?? (onSave != null ? null : TextInputAction.next),
        onFieldSubmitted: onSave,
        focusNode: focusNode,
        readOnly: readOnly ?? false,
        textAlignVertical: TextAlignVertical.center,
        validator: validator,
        enabled: enable,
        obscureText: obscure ?? false,
        controller: controller,
        expands: expands ?? false,
        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0, fontSize: 0),
          labelText: disableLabel ? null : label ?? hint,
          enabledBorder: getBorder(context, radius: borderRadiusValue, color: borderColor),
          disabledBorder: getBorder(context, radius: borderRadiusValue, color: borderColor),
          focusedBorder: getBorder(context, radius: borderRadiusValue, color: Colors.grey),
          border: getBorder(context, radius: borderRadiusValue, color: Colors.grey),
          isDense: isDense ?? false,
          prefixIconConstraints: BoxConstraints(
            minWidth: prefixIcon == null ? 0 : 35,
            minHeight: 48,
            maxHeight: 48,
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: suffixIcon == null ? 0 : 45,
            minHeight: 48,
            maxHeight: 48,
          ),
          constraints: BoxConstraints(
            minHeight: height ?? 48,
            maxHeight: height ?? 48,
            minWidth: width ?? 320,
            maxWidth: width ?? 320,
          ),
          fillColor: enable
              ? (backGroundColor ?? Colors.white)
              : cancelDisableBackground
              ? (backGroundColor ?? Colors.white)
              : Colors.grey,
          filled: true,
          hintText: (label == null && !disableLabel) ? null : hint,

          hintStyle: hintStyle ?? const TextStyle(
              color: Colors.blue,
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
        onChanged: onchange,
        textCapitalization: TextCapitalization.words,
        maxLines: maxLine ?? 1,
        minLines: minLines ?? 1,
        keyboardType: textInputType,
        style: style?.copyWith(height: 1) ?? const TextStyle(
            color: Colors.blue,
            fontSize: 40,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  final Widget? child;
  final String? title;
  final double? width, height;
  final Function()? onTap;

  BorderRadius get _borderRadius => BorderRadius.circular(16);


  const CustomButtonWidget({super.key, this.width, this.height, this.title, this.onTap, this.child}) ;







  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: _borderRadius,
      hoverColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            color: Colors.blue,
            child: child ??
                Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
          ),
        ],
      ),
    );
  }




}
