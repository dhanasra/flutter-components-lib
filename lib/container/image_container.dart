part of spidy;

class ImageContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final Color borderColor;
  final double radius;
  final String url;
  final double width;
  final double height;
  final String asset;
  final bool isShadow;
  final List<double> padding;
  final List<double> margin;

  ImageContainer({
    this.child,
    this.bgColor,
    this.asset,
    this.width,
    this.height,
    this.url,
    this.borderColor,
    this.radius,
    this.isShadow,
    this.margin = const [],
    this.padding = const []
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        width: width,
        height: height,
        padding: padding!=null?Spidy.getEdge(padding):Spidy.getEdge([]),
        margin: margin!=null?Spidy.getEdge(margin):Spidy.getEdge([]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius??0),
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                bgColor??Colors.white, BlendMode.dstATop),
            image: url != null ? NetworkImage(url) : AssetImage('assets/images/'+asset),
            fit: BoxFit.cover,
          ),
        )
    );
  }
}
