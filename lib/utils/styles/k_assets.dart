enum KAssetName {
  oil,
  close_bottom,
  foodimage,
  foodimagebg,
  home_active,
  home_inactive,
}

extension AssetsExtention on KAssetName {
  String get imagePath {
    String _rootPath = 'assets';
    String _svgDir = '$_rootPath/svg';
    String _imageDir = '$_rootPath/images';

    switch (this) {
      case KAssetName.foodimage:
        return "$_imageDir/foodimage.png";
      case KAssetName.foodimagebg:
        return "$_imageDir/foodimagebg.png";
      case KAssetName.close_bottom:
        return "$_svgDir/close_bottom.svg";

      case KAssetName.home_active:
        return "$_svgDir/home_active.svg";
      case KAssetName.home_inactive:
        return "$_svgDir/home_inactive.svg";

      default:
        return "";
    }
  }
}
