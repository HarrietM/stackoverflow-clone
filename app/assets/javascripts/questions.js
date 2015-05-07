function Questions(selector){
  this.selector = selector;
}

Questions.prototype.load = function(loadQuestions){
  $.ajax({
      url: "questions",
      type: 'get',
      success: function(data, status) {
        $.each(data, function (key, data) {
          loadQuestions(data);
          });
        },
      error: function(status) {
        console.log("Something has gone wrong:" + status);
      }
    });
}

Questions.prototype.selectQuestion = function(selectQuestion){
  this.selector.on("click", ".question", function(e){
    e.preventDefault();
    var url = $(e.target).parent().attr('href');
    $.ajax({
        url: url+"/answers/",
        type: 'get',
        success: function(data, status) {
          $.each(data, function (key, data) {
            var target = $(e.target)
            selectQuestion(data, target);
            });
          },
        error: function(status) {
          console.log("Something has gone wrong:" + status);
        }
      });
  });
}