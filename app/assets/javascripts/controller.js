function Controller(selector) {
  this.selector = $(selector);
  this.view = new View(this.selector);
}

Controller.prototype.run = function(){
  var questions = new Questions(this.selector);
  this.view.addQuestionSubmission();
  questions.load(this.view.loadQuestions);
  questions.selectQuestion(this.view.selectQuestion);
}