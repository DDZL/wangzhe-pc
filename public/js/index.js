/*专门支持index.html页面中轮播所有功能的js文件*/
$(function(){
    $.ajax({
        url:"http://localhost:3000/index",
        type:"get",
        dataType:"json",
        success: function(products) {
            var lunbo1=products[0];
            var html=`<img src="${lunbo1.img}"/>`
            $("#demo1").html(html);

            var lunbo2=products[1];
            var html=`<img src="${lunbo2.img}"/>`
            $("#demo2").html(html);

            var lunbo3=products[2];
            var html=`<img src="${lunbo3.img}"/>`
            $("#demo3").html(html);
        }
    })
})