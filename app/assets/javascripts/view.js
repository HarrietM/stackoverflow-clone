function View(selector) {
  this.selector = selector
}

View.prototype.addQuestionSubmission = function(){

  var customerForm = "<div><form class='add-question' action='/questions' method='post'><input type='text' name='question[content]'><input type='submit' value='Bam!'></form></div>"

  this.selector.prepend(customerForm)
}

View.prototype.loadQuestions = function(data){

  var template = "<div class='question'><div>"+data.user_id+"</div><a href='/questions/"+data.id+"'><div>"+data.content+"</div></a></div>"

  $("#view").append(template)

}

View.prototype.selectQuestion = function(data, target){

  var template = "<div class='answer'><div>"+data.user_id+"</div><div>"+data.content+"</div></div>"

  $(template).insertAfter(target.parent().parent());
  // $(target).slideToggle('fast');
}

