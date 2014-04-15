$(document).ready(function(){
  $(".tab-control a").click(function(){
    var curTab = $(this).attr('rel');
    
    $(".tab-control a").removeClass("current");
    $(this).addClass("current");
    
    $("#tab .tab-item").removeClass("current");
    $("#tab").find("#"+curTab).addClass("current");
    return false;
  });
});