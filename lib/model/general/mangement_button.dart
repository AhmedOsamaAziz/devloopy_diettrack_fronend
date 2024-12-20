class MangementButton {
  final String textbutton;

  const MangementButton({
    required this.textbutton,
  });

  static List<MangementButton> managmentButtons = [
    const MangementButton(textbutton: " Management Team "),
    const MangementButton(
      textbutton: " Nutritionists and Dietitians ",
    ),
    const MangementButton(textbutton: 'textbutton'),
    const MangementButton(
      textbutton: "Marketing and Communications",
    ),
    const MangementButton(
      textbutton: "Technology and Development",
    ),
  ];
}
