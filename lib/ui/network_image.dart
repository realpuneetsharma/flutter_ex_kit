part of '../flutter_ex_kit.dart';

extension NetworkImageExt on String? {
  Widget networkImage(
      {BoxFit fit = BoxFit.contain,
      Widget? errorWidget,
      double? progressIndicatorSize,
      double? height,
      double? width,
      double? indicatorHeight,
      double? indicatorWidth,
      Widget? svgImage}) {
    FlutterExKit exKit = FlutterExKit();
    if (this != null && this?.isNotEmpty == true && allImages(this ?? '')) {
      return Image.network(
        this ?? '',
        fit: fit,
        height: height,
        width: width,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: SizedBox(
              height: indicatorHeight,
              width: indicatorWidth,
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
                strokeWidth: progressIndicatorSize ?? 4.0,
                color: exKit.imageLoader,
              ),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return SizedBox(
              height: indicatorHeight,
              width: indicatorWidth,
              child: errorWidget ??
                  Icon(
                    Icons.error,
                    color: exKit.imageLoader,
                  ));
        },
      );
    } else if (this != null &&
        this?.isNotEmpty == true &&
        this!.endsWith('.${FileTypeEnum.svg}')) {
      return svgImage ?? const SizedBox.shrink();
    }

    return const SizedBox.shrink();
  }
}

bool allImages(String image) =>
    image.endsWith('.${FileTypeEnum.png}') ||
    image.endsWith('.${FileTypeEnum.jpg}') ||
    image.endsWith('.${FileTypeEnum.jpeg}') ||
    image.endsWith('.${FileTypeEnum.webp}') ||
    image.endsWith('.${FileTypeEnum.gif}');
