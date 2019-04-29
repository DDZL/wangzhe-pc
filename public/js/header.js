/**
 * Created by web on 2019/3/26.
 */
 $(function(){
     $.ajax({
         url:"header.html",
         type:"get",
         success: function(header) {
             $(header).replaceAll("header")
             $(`<link rel=stylesheet href="../css/header.css">`).appendTo("head")
             $(`<link rel="stylesheet" href="../img/i/style.css">`).appendTo("head")
             $(`<link rel="stylesheet" href="../css/bootstrap.css"/>`).appendTo("head")
         }
     })
 });