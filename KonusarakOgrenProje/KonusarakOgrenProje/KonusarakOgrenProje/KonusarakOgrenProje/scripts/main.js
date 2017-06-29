var responseArray = [];
var questionIdsArray = [];

$('.btn-response').click(function () {
    var responseId = $(this).attr('id');
    var questionId = $('#' + responseId).closest('table').attr('id');
    var response = $('#' + responseId).val();
    var isResponseBefore = false;

    if (responseArray.length > 0 && questionIdsArray.length > 0) {

        for (var i = 0; i < questionIdsArray.length; i++) {
            if (questionIdsArray[i] == questionId) {
                isResponseBefore = true;
                break;
            }
        }
    }

    if (!isResponseBefore) {
        questionIdsArray.push(questionId);
        responseArray.push(response);
    }
})

$('#btnTamamla').click(function () {
    if (questionIdsArray.length == 4) {
        var jsonReturn = {};
        $.each(questionIdsArray, function (i, v) {
            jsonReturn[v] = responseArray[i];
        });
        var rs = GetResponse();

        for (var i = 0; i < questionIdsArray.length; i++) {
            if (responseArray[i] != rs[i]) {
                var wrong = $('#'+questionIdsArray[i]+' tr:eq(2) td').closest('td');
                //;
                wrong.css('background-color', 'red');
            } else {
                wrong.css('background-color','green');
            }
        }

    } else {
        alert("Henüz tüm soruları çözümlemediniz.");
    }




    //Cevap Kontrol

})