import 'package:get/get.dart';

import 'package:get/get.dart';

class Response {
  final String responseTitle;
  RxBool isSelected;

  Response({
    required this.responseTitle,
    bool isSelected = false,
  }) : isSelected = isSelected.obs;

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      responseTitle: json['responseTitle'],
      isSelected: json['isSelected'] ?? false,
    );
  }

  Response copyWith({bool? isSelected}) {
    return Response(
      responseTitle: responseTitle,
      isSelected: isSelected ?? this.isSelected.value,
    );
  }
}

class Step {
  final String stepId;
  final String stepTitle;
  final String stepTitleAr;
  final String iconPath;
  final List<Response> responses;

  Step({
    required this.stepId,
    required this.stepTitle,
    required this.stepTitleAr,
    required this.iconPath,
    required this.responses,
  });

  factory Step.fromJson(Map<String, dynamic> json) {
    return Step(
      stepId: json['stepId'],
      stepTitle: json['stepTitle'],
      stepTitleAr: json['stepTitleAr'],
      iconPath: json['iconPath'],
      responses: (json['responses'] as List)
          .map((response) => Response.fromJson(response))
          .toList(),
    );
  }
}


class Question {
  final String questionId;
  final String questionValue;
  final double question1StarScore;
  final double question2StarsScore;
  final double question3StarsScore;
  final double totalScore;
  final double starRating;
  final List<Step> steps;

  Question({
    required this.questionId,
    required this.questionValue,
    required this.question1StarScore,
    required this.question2StarsScore,
    required this.question3StarsScore,
    required this.totalScore,
    required this.starRating,
    required this.steps,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      questionId: json['questionId'],
      questionValue: json['questionValue'],
      question1StarScore: json['question1StarScore'],
      question2StarsScore: json['question2StarsScore'],
      question3StarsScore: json['question3StarsScore'],
      totalScore: json['totalScore'],
      starRating: json['starRating'],
      steps: (json['steps'] as List)
          .map((step) => Step.fromJson(step))
          .toList(),
    );
  }
}
