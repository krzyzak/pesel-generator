$(document).ready(function(){
  $("input[type=submit]").attr("disabled", "disabled");
  $("#date").datepicker({
      changeMonth: true,
      changeYear: true,
      dateFormat: "yy-mm-dd"
    });
  $("#date").change(function(){
    if(Date.parse($(this).val())){
      $("input[type=submit]").removeAttr("disabled");
    }
    else{
      $("input[type=submit]").attr("disabled", "disabled");
    }
  });
});