part of spidy;

class TextInput extends StatefulWidget {
  final bool autoFocus;
  final bool isEnabled;
  final bool isExpands;
  final bool isFilled;
  final bool isClassic;
  final bool noBorder;
  final TextInputType inputType;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isObscured;
  //overall division
  final double width;
  final double height;
  final List<double> margin;
  final List<double> padding;
  //content
  final String labelText;
  final String prefixText;
  final String suffixText;
  final String hintText;
  final String helperText;
  final String counterText;
  final String errorText;
  final Widget prefix;
  final Widget suffix;
  final Widget counter;
  final Color color;
  final Color errorColor;
  final Color hintColor;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  //content style
  final List<double> contentPadding;
  //icon Style
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final IconData prefixIcon;
  final double prefixIconSize;
  final Color prefixIconColor;
  final IconData suffixIcon;
  final double suffixIconSize;
  final Color suffixIconColor;
  //border style
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderWidth;
  final double radius;
  //validation
  final int minLine;
  final int maxLine;
  final int maxLength;
  final int minLength;
  final String lengthErrorText;
  final String emptyErrorText;
  final String patternErrorText;
  final RegExp regExp;
  //alignment
  final TextAlignVertical textAlignVertical;
  final TextAlign textAlign;
  //methods
  final ValueChanged<String> onChanged;

  TextInput({
    this.autoFocus = false,
    this.isEnabled = true,
    this.isExpands = false,
    this.inputType,
    this.controller,
    this.focusNode,
    this.isObscured = false,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.isFilled = true,
    this.isClassic = false,
    this.noBorder = false,
    this.labelText,
    this.prefixText,
    this.suffixText,
    this.hintText,
    this.helperText,
    this.counterText,
    this.errorText,
    this.prefix,
    this.suffix,
    this.counter,
    this.contentPadding = const [10,15],
    this.color,
    this.errorColor,
    this.hintColor,
    this.labelColor,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixIconSize,
    this.suffixIconSize,
    this.enabledBorderColor,
    this.enabledBorderWidth=1,
    this.focusedBorderColor,
    this.focusedBorderWidth=1,
    this.radius,
    this.minLine=1,
    this.maxLine=1,
    this.minLength,
    this.maxLength,
    this.lengthErrorText,
    this.emptyErrorText,
    this.patternErrorText,
    this.regExp,
    this.textAlignVertical,
    this.textAlign,
    this.onChanged
  });

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width??double.infinity,
      height: widget.height,
      padding: widget.padding!=null?Spidy.getEdge(widget.padding):Spidy.getEdge([]),
      margin: widget.margin!=null?Spidy.getEdge(widget.margin):Spidy.getEdge([]),
      child: TextFormField(
        onChanged: widget.onChanged,
        autofocus: widget.autoFocus,
        enabled: widget.isEnabled,
        focusNode: widget.focusNode,
        controller: widget.controller,
        obscureText: widget.isObscured,
        textAlignVertical: widget.textAlignVertical,
        textAlign: widget.textAlign,
        keyboardType: widget.inputType,
        maxLines: widget.isExpands?null:widget.maxLine,
        minLines: widget.isExpands?null:widget.minLine,
        expands: widget.isExpands,
        validator: (String val) {
          if (val.isEmpty) {
            return widget.emptyErrorText ?? 'The field Should not be empty';
          } else {
            if (widget.regExp != null) {
              if (!widget.regExp.hasMatch(val))
                return widget.patternErrorText ??
                    'The Email Id is not valid';
            }
            if (widget.minLength != null) {
              if (widget.minLength > val.length)
                return widget.lengthErrorText ??
                    'The field Should not be empty';
            }
            if (widget.maxLength != null) {
              if (widget.maxLength < val.length)
                return widget.lengthErrorText ??
                    'The field Should not be empty';
            }
            return null;
          }
        },
        style: TextStyle(
            fontFamily: widget.fontFamily,
            fontSize: 18,
            fontWeight: widget.fontWeight,
            color: widget.color??Colors.black),
        decoration: InputDecoration(
          isDense: true,
          filled: widget.isFilled,
          isCollapsed: false,
          fillColor: Colors.blue.shade100,
          prefix: widget.prefix,
          suffix: widget.suffix,
          labelText: widget.labelText,
          hintText: widget.hintText,
          helperText: widget.helperText,
          counterText: widget.counterText,
          errorText: widget.errorText,
          prefixText: widget.prefixText,
          suffixText: widget.suffixText,
          labelStyle: TextStyle(
              fontFamily: widget.fontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: widget.labelColor??Colors.red),
          errorStyle: TextStyle(
              fontFamily: widget.fontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: widget.errorColor??Colors.red),
          hintStyle: TextStyle(
              fontFamily: widget.fontFamily,
              fontSize: 18,
              fontWeight: widget.fontWeight,
              color: widget.hintColor??Colors.grey),
          counter: widget.counter,
          contentPadding: Spidy.getEdge(widget.contentPadding),
          icon: widget.icon!=null
              ?Icon(widget.icon,size: widget.iconSize??16,color: widget.iconColor,)
              :null,
          prefixIcon: widget.prefixIcon!=null
              ?Icon(widget.prefixIcon,size: widget.prefixIconSize??16,color: widget.prefixIconColor,)
              :null,
          suffixIcon: widget.suffixIcon!=null
              ?Icon(widget.suffixIcon,size: widget.suffixIconSize??16,color: widget.suffixIconColor,)
              :null,
          errorBorder:  widget.noBorder? InputBorder.none:
          widget.isClassic ?UnderlineInputBorder()
              :OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: widget.focusedBorderWidth),
            borderRadius: BorderRadius.circular(widget.radius ?? 0),
          ),
          focusedErrorBorder:  widget.noBorder? InputBorder.none:
          widget.isClassic ?UnderlineInputBorder()
              :OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: widget.focusedBorderWidth),
            borderRadius: BorderRadius.circular(widget.radius ?? 0),
          ),
          focusedBorder:  widget.noBorder? InputBorder.none:
          widget.isClassic ?UnderlineInputBorder()
              :OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.focusedBorderColor??Colors.deepPurple,
                width: widget.focusedBorderWidth),
            borderRadius: BorderRadius.circular(widget.radius ?? 0),
          ),
          enabledBorder:  widget.noBorder? InputBorder.none:
          widget.isClassic ?UnderlineInputBorder()
              :OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.enabledBorderColor??Colors.indigoAccent,
                width: widget.enabledBorderWidth),
            borderRadius: BorderRadius.circular(widget.radius ?? 0),
          ),
          border: widget.noBorder? InputBorder.none:
          widget.isClassic ?UnderlineInputBorder()
              :OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius ?? 0),
              borderSide:
              const BorderSide(color: Colors.black, width: 5.0)),
        ),
      ),
    );
  }
}