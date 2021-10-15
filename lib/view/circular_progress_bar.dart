part of spidy;

class CircularProgressBar extends StatelessWidget {
  final List<double> margin;
  final List<double> padding;
  final double width;

  final double circularWidth;
  final double circularHeight;
  final double strokeWidth;

  final double value;
  final Color backgroundColor;
  final Color color;
  final Animation<Color> valueColor;
  final String semanticsLabel;
  final String semanticsValue;

  CircularProgressBar({
    this.margin,
    this.padding,
    this.width,
    this.circularHeight,
    this.circularWidth,
    this.strokeWidth,
    this.value,
    this.backgroundColor,
    this.color,
    this.valueColor,
    this.semanticsValue,
    this.semanticsLabel
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??double.infinity,
      height: circularHeight??20,
      alignment: Alignment.center,
      padding: padding!=null?Spidy.getEdge(padding):Spidy.getEdge([]),
      margin: margin!=null?Spidy.getEdge(margin):Spidy.getEdge([]),
      child: SizedBox(
        width: circularWidth??20,
        height: circularHeight??20,
        child: valueColor!=null
            ? CircularProgressIndicator(
              strokeWidth: strokeWidth??3,
              value: value,
              backgroundColor: backgroundColor??Colors.white,
              color: color??Colors.indigo,
              valueColor: valueColor,
              semanticsLabel: semanticsLabel,
              semanticsValue: semanticsValue,
            )
            : CircularProgressIndicator(
          strokeWidth: strokeWidth??3,
          value: value,
          backgroundColor: backgroundColor??Colors.white,
          color: color??Colors.indigo,
          semanticsLabel: semanticsLabel,
          semanticsValue: semanticsValue,
        )
      )
    );
  }
}
