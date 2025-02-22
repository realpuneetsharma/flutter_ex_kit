part of '../flutter_ex_kit.dart';

/// An extension on [String] to easily load network images with proper handling.
///
/// This extension provides a method to load network images with built-in
/// loading indicators, error handling, and optional support for SVG images.
extension NetworkImageExt on String? {
  /// Loads a network image with a progress indicator and error handling.
  ///
  /// If the string is a valid image URL, it loads the image using [Image.network].
  /// It also shows a circular progress indicator while loading and an error widget
  /// in case of failure.
  ///
  /// If the string is an SVG image (determined by its `.svg` extension),
  /// it returns the provided [svgImage] widget.
  ///
  /// If the string is null or not a valid image URL, it returns an empty [SizedBox].
  ///
  /// ### Parameters:
  /// - [fit]: Specifies how the image should be inscribed into the space. Default is [BoxFit.contain].
  /// - [errorWidget]: The widget to show if the image fails to load.
  /// - [progressIndicatorSize]: The stroke width of the progress indicator. Default is `4.0`.
  /// - [height]: The height of the image.
  /// - [width]: The width of the image.
  /// - [indicatorHeight]: The height of the loading indicator.
  /// - [indicatorWidth]: The width of the loading indicator.
  /// - [svgImage]: A widget to display if the image is an SVG format.
  ///
  /// ### Returns:
  /// A [Widget] that displays the network image, an error widget, or an SVG image.
  Widget networkImage({
    BoxFit fit = BoxFit.contain,
    Widget? errorWidget,
    double? progressIndicatorSize,
    double? height,
    double? width,
    double? indicatorHeight,
    double? indicatorWidth,
    Widget? svgImage,
  }) {
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
                  Icons.broken_image,
                  color: exKit.imageLoader,
                ),
          );
        },
      );
    } else if (this != null &&
        this?.isNotEmpty == true &&
        this!.endsWith('.${FileTypeForImageEnum.svg}')) {
      return svgImage ?? const SizedBox.shrink();
    }

    return const SizedBox.shrink();
  }
}

/// Checks if a given string represents a valid image file format.
///
/// This function verifies if the file name ends with one of the supported image formats
/// (PNG, JPG, JPEG, WEBP, GIF).
///
/// ### Parameters:
/// - [image]: The file name or URL to be checked.
///
/// ### Returns:
/// `true` if the file is an image format, otherwise `false`.
bool allImages(String image) =>
    image.endsWith('.${FileTypeForImageEnum.png}') ||
    image.endsWith('.${FileTypeForImageEnum.jpg}') ||
    image.endsWith('.${FileTypeForImageEnum.jpeg}') ||
    image.endsWith('.${FileTypeForImageEnum.webp}') ||
    image.endsWith('.${FileTypeForImageEnum.gif}');
