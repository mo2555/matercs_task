import 'package:flutter/material.dart';

class AssetImageWidget extends StatefulWidget {
  const AssetImageWidget({
    super.key,
    required this.imageProvider,
    this.fit,
    this.scale,
    this.height,
    this.width,
    this.color,
  });

  final ImageProvider imageProvider;
  final BoxFit? fit;
  final double? scale;
  final double? height;
  final double? width;
  final Color? color;

  @override
  State<AssetImageWidget> createState() => _AssetImageWidgetState();
}

class _AssetImageWidgetState extends State<AssetImageWidget> {
  ImageStream? _imageStream;
  ImageInfo? _imageInfo;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getImage();
  }

  @override
  void didUpdateWidget(AssetImageWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.imageProvider != oldWidget.imageProvider) _getImage();
  }

  void _getImage() {
    final ImageStream? oldImageStream = _imageStream;
    _imageStream =
        widget.imageProvider.resolve(createLocalImageConfiguration(context));
    if (_imageStream?.key != oldImageStream?.key) {
      final ImageStreamListener listener = ImageStreamListener(_updateImage);
      oldImageStream?.removeListener(listener);
      _imageStream?.addListener(listener);
    }
  }

  void _updateImage(ImageInfo imageInfo, bool synchronousCall) {
    setState(() {
      _imageInfo = imageInfo;
    });
  }

  @override
  void dispose() {
    _imageStream?.removeListener(ImageStreamListener(_updateImage));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawImage(
      image: _imageInfo?.image,
      scale: widget.scale ?? _imageInfo?.scale ?? 1.0,
      fit: widget.fit ?? BoxFit.fill,
      height: widget.height,
      width: widget.width,
      color: widget.color,
    );
  }
}
