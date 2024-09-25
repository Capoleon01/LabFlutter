import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final Color? colorLabeltext;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final Color? colorIcons;
  final Color? colorBorde;
  // final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String mensajeIf;
  final dynamic tipoVariable;
  final ValueChanged<dynamic> onValueChanged;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.colorIcons,
    this.colorBorde,
    this.keyboardType,
    this.obscureText = false,
    required this.tipoVariable,
    required this.mensajeIf,
    required this.onValueChanged,
    this.colorLabeltext,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: '',
      textCapitalization: TextCapitalization.sentences,
      keyboardType: widget.keyboardType,
      autocorrect: false,
      obscureText: widget.obscureText,
      onChanged: (valor) {
        setState(() {
          dynamic convertedValue;
          if (widget.tipoVariable is String) {
            convertedValue = valor;
          } else if (widget.tipoVariable is int) {
            convertedValue = int.tryParse(valor) ?? 0;
          } else if (widget.tipoVariable is double) {
            convertedValue = double.tryParse(valor) ?? 0.0;
          }
          widget.onValueChanged.call(convertedValue);
        });
      },
      // onChanged: (value) => widget.formValues[widget.formProperty] = value,
      validator: (valor) {
        if (valor == null) return 'Este campo es requerido';
        return valor.length <= 1 ? widget.mensajeIf : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyle(color: widget.colorBorde),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: widget.colorBorde != null
              ? BorderSide(color: widget.colorBorde!)
              : const BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: widget.colorBorde != null
              ? BorderSide(color: widget.colorBorde!)
              : const BorderSide(),
        ),
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: TextStyle(color: widget.colorLabeltext),
        icon: widget.icon == null
            ? null
            : Icon(widget.icon, color: widget.colorIcons),
      ),
    );
  }
}
