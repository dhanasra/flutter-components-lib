part of spidy;

class BorderContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final Color borderColor;
  final double width;
  final double height;
  final double radius;
  final bool isShadow;
  final List<double> padding;
  final List<double> margin;
  final Constraints constraints;
  final BoxDecoration decoration;
  final Border border;
  final bool wrap;

  BorderContainer({
    this.child,
    this.bgColor,
    this.borderColor,
    this.radius,
    this.width,
    this.wrap = false,
    this.height,
    this.isShadow,
    this.margin = const [],
    this.padding = const [],
    this.constraints,
    this.decoration,
    this.border
  });

  @override
  Widget build(BuildContext context) {
    return container();
  }

  Widget container(){
    return Container(
        width: wrap?null:width??double.infinity,
        child: child,
        height: height,
        padding: padding!=null?Spidy.getEdge(padding):Spidy.getEdge([]),
        margin: margin!=null?Spidy.getEdge(margin):Spidy.getEdge([]),
        constraints: constraints,
        decoration: decoration?? BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 2),
          image: null,
          color: bgColor != null
              ? bgColor
              : isShadow != null && isShadow
              ? Colors.white
              : Colors.transparent,
          border: border?? Border.all(
              color:
              borderColor != null ? borderColor : Colors.transparent),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              color: isShadow != null && isShadow
                  ? Color(0x19000000)
                  : Colors.transparent,
            ),
          ],
        )
    );
  }
}
