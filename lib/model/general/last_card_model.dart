class LastCardModel {
  final String text;
  final String subTitle;
  final String textbtn;
  final double? fontsize;
  final double? fontsizeSubText;
  final double? heightBtn;
  final double? widthBtn;
  final double? fontsizeBtn;

  LastCardModel({
    required this.text,
    required this.subTitle,
    required this.textbtn,
    this.fontsize = 38,
    this.fontsizeSubText,
    this.heightBtn = 63,
    this.widthBtn = 128,
    this.fontsizeBtn = 18,
  });
}
