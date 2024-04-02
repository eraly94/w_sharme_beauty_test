import 'package:flutter/material.dart';

class TextFormInputWidget extends StatefulWidget {
  final bool? isPasswordField;
  final Widget? suffixIcon;
  final String labelText;
  final bool isPassword;
  final VoidCallback? onTap;
  final bool? isReadOnly;
  final Widget? prefixIcon;

  const TextFormInputWidget({
    super.key,
    this.isPasswordField,
    this.suffixIcon,
    required this.labelText,
    this.isPassword = false,
    this.onTap,
    this.isReadOnly,
    this.prefixIcon,
  });

  @override
  _TextFormInputWidgetState createState() => _TextFormInputWidgetState();
}

class _TextFormInputWidgetState extends State<TextFormInputWidget> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPasswordField == true ? _obscureText : false,
      decoration: InputDecoration(
        suffixIcon: widget.onTap == null
            ? widget.isPasswordField == true
                ? GestureDetector(
                    onTap: () {
                      _obscureText = !_obscureText;
                      setState(() {});
                    },
                    child: Icon(
                      _obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                : null
            : const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
        labelText: widget.labelText,
        filled: true,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
