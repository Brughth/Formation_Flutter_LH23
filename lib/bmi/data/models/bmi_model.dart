import 'package:demo/bmi/data/models/bmi_result_model.dart';

class BmiModel {
  final String gender;
  final double height;
  final double weight;
  final int age;

  BmiModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  double get heightInMeter => height / 100;

  double get bmi => weight / (heightInMeter * heightInMeter);

  BmiResultModel calculateBmiIndex() {
    if (bmi < 18.5) {
      return BmiResultModel(
          bmi: bmi,
          status: "Insuffisance pondérale",
          description:
              "Vous êtes trop mince. Consultez un médecin pour déterminer la cause de votre perte de poids et obtenir des conseils sur une alimentation saine.",
          advice: "Mangez plus d'aliments riches en calories et en nutriments.",
          image: "assets/images/underweight.png");
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return BmiResultModel(
        bmi: bmi,
        status: "Poids normal",
        description:
            "Vous avez un poids normal. Continuez à manger sainement et à faire de l'exercice régulièrement pour maintenir votre poids.",
        advice:
            "Maintenez une alimentation saine et équilibrée et pratiquez une activité physique régulière.",
        image: "assets/images/normalweight.png",
      );
    } else if (bmi >= 25 && bmi <= 29.9) {
      return BmiResultModel(
        bmi: bmi,
        status: "Surpoids",
        description:
            "Vous êtes en surpoids. Perdre quelques kilos peut améliorer votre santé et réduire votre risque de maladies chroniques.",
        advice:
            "Parlez à votre médecin de la meilleure façon de perdre du poids.",
        image: "assets/images/overweight.png",
      );
    } else if (bmi >= 30 && bmi <= 34.9) {
      return BmiResultModel(
        bmi: bmi,
        status: "Obésité modérée",
        description:
            "Vous êtes obèse. Perdre du poids est important pour améliorer votre santé et réduire votre risque de maladies chroniques.",
        advice:
            "Consultez un médecin pour un programme de perte de poids personnalisé.",
        image: "assets/images/obesity1.png",
      );
    } else {
      return BmiResultModel(
        bmi: bmi,
        status: "Obésité sévère",
        description:
            "Vous êtes gravement obèse. Perdre du poids est crucial pour améliorer votre santé et réduire votre risque de maladies chroniques.",
        advice:
            "Envisagez une intervention chirurgicale bariatrique en plus d'un régime alimentaire et d'une activité physique.",
        image: "assets/images/obesity2.png",
      );
    }
  }
}
