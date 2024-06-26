import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/pages/pages.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/widgets/widgets.dart';

import 'check_box_widget.dart';

class SelectionFormFieldWidget extends StatefulWidget {
  final String? hintText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final void Function(String?)? onChanged;
  final String text;
  final String text1;

  const SelectionFormFieldWidget({
    super.key,
    this.hintText,
    this.onSaved,
    this.validator,
    this.onChanged,
    required this.text,
    required this.text1,
    required TextStyle hinttextStyle,
  });

  @override
  State<SelectionFormFieldWidget> createState() =>
      _SelectionFormFieldWidgetState();
}

class _SelectionFormFieldWidgetState extends State<SelectionFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showModalBottomSheet(context);
      },
      child: DropdownButtonFormField<String>(
        value: null,
        onChanged: (value) {},
        items: const [],
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            constraints: const BoxConstraints(
              maxHeight: 46,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            fillColor: AppColors.lightGrey,
            filled: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )),
        onSaved: widget.onSaved,
        validator: widget.validator,
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 17.0, vertical: 17.0),
            child: SizedBox(
              height: 170,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Категория",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.close_outlined,
                        size: 12,
                      ),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _handleSelection("1");
                          },
                          child: Row(
                            children: [
                              const CustomCheckbox(),
                              const SizedBox(width: 10),
                              Text(
                                widget.text,
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Divider(),
                        ),
                        GestureDetector(
                          onTap: () {
                            _handleSelection("1");
                          },
                          child: Row(
                            children: [
                              const CustomCheckbox(),
                              const SizedBox(width: 10),
                              Text(
                                widget.text1,
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Divider(),
                        ),
                        CustomElevatedButtonWidget(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateaCommunityPage())),
                          text: "Создать категорию",
                          backgraundColor: AppColors.purple,
                          textColor: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _handleSelection(String value) {
    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
    Navigator.pop(context);
  }
}
