/**
 * Created by web on 2019/3/26.
 */
$(function(){
    $.ajax({
        url:"footer.html",
        type:"get",
        success: function(footer) {
            $(footer).replaceAll("footer")
            $(`<link rel=stylesheet href="../css/header.css">`).appendTo("foot")
        }
    })
});