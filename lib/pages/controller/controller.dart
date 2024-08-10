import 'package:get/get.dart';
import 'package:xapprika/pages/model/model.dart';

import 'package:xapprika/utils/data.dart';

class AppController extends SuperController<bool> {
  var questions = <Question>[].obs;
  var currentStepIndex = 0.obs;
  var totalScore = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadQuestions();
  }

  void loadQuestions() {
    final List<Map<String, dynamic>> questionsArray = questionsData;
    questions.value = questionsArray.map((q) => Question.fromJson(q)).toList();
  }

  void selectResponse(int stepIndex, int responseIndex) {
    var currentQuestion = questions[currentStepIndex.value];
    var response = currentQuestion.steps[stepIndex].responses[responseIndex];
    response.isSelected.value = !response.isSelected.value;
    calculateScore();
  }

  void calculateScore() {}

  void nextStep() {
    if (currentStepIndex.value < questions.length - 1) {
      currentStepIndex.value++;
    }
  }

  void previousStep() {
    if (currentStepIndex.value > 0) {
      currentStepIndex.value--;
    }
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
