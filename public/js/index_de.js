/*专门支持index.html页面中商品所有功能的js文件*/
$(function(products){
    $.ajax({
        url:"http://localhost:3000/index_details",
        type:"get",
        dataType:"json",
        success: function(products) {
            //1F-商品1
            var p1=products[0];
            var html=`<img src="${p1.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p1.title}</p>
                 <p class="text-center text-danger">￥${p1.price}</p>`
            $("#details1>ul>li:first-child").html(html);
            //1F-商品2
            var p2=products[1];
            var html=`<img src="${p2.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p2.title}</p>
                 <p class="text-center text-danger">￥${p2.price}</p>`
            $("#details1>ul>li:nth-child(2)").html(html);
            //1F-商品3
            var p3=products[2];
            var html=`<img src="${p3.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p3.title}</p>
                 <p class="text-center text-danger">￥${p3.price}</p>`
            $("#details1>ul>li:nth-child(3)").html(html);
             //1F-商品4
             var p4=products[3];
             var html=`<img src="${p4.pic}" class="w-100"/>
                  <p class="text-center font-14 text-dark">${p4.title}</p>
                  <p class="text-center text-danger">￥${p4.price}</p>`
             $("#details1>ul>li:last-child").html(html);
             //2F-商品1
            var p5=products[4];
            var html=`<img src="${p5.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p5.title}</p>
                 <p class="text-center text-danger">￥${p5.price}</p>`
            $("#details2>ul>li:first-child").html(html);
            //2F-商品2
            var p6=products[5];
            var html=`<img src="${p6.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p6.title}</p>
                 <p class="text-center text-danger">￥${p6.price}</p>`
             $("#details2>ul>li:nth-child(2)").html(html);
            //2F-商品3
            var p7=products[6];
            var html=`<img src="${p7.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p7.title}</p>
                 <p class="text-center text-danger">￥${p7.price}</p>`
            $("#details2>ul>li:nth-child(3)").html(html);
             //2F-商品4
             var p8=products[7];
             var html=`<img src="${p8.pic}" class="w-100"/>
                  <p class="text-center font-14 text-dark">${p8.title}</p>
                  <p class="text-center text-danger">￥${p8.price}</p>`
            $("#details2>ul>li:last-child").html(html);
            //3F-商品1
            var p9=products[8];
            var html=`<img src="${p9.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p9.title}</p>
                 <p class="text-center text-danger">￥${p9.price}</p>`
            $("#details3>ul>li:first-child").html(html);
            //3F-商品2
            var p10=products[9];
            var html=`<img src="${p10.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p10.title}</p>
                 <p class="text-center text-danger">￥${p10.price}</p>`
             $("#details3>ul>li:nth-child(2)").html(html);
            //3F-商品3
            var p11=products[10];
            var html=`<img src="${p11.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p11.title}</p>
                 <p class="text-center text-danger">￥${p11.price}</p>`
            $("#details3>ul>li:nth-child(3)").html(html);
             //3F-商品4
             var p12=products[11];
             var html=`<img src="${p12.pic}" class="w-100"/>
                  <p class="text-center font-14 text-dark">${p12.title}</p>
                  <p class="text-center text-danger">￥${p12.price}</p>`
            $("#details3>ul>li:last-child").html(html);
            //4F-商品1
            var p13=products[12];
            var html=`<img src="${p13.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p13.title}</p>
                 <p class="text-center text-danger">￥${p13.price}</p>`
            $("#details4>ul>li:first-child").html(html);
            //4F-商品2
            var p14=products[13];
            var html=`<img src="${p14.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p14.title}</p>
                 <p class="text-center text-danger">￥${p14.price}</p>`
             $("#details4>ul>li:nth-child(2)").html(html);
            //4F-商品3
            var p15=products[14];
            var html=`<img src="${p15.pic}" class="w-100"/>
                 <p class="text-center font-14 text-dark">${p15.title}</p>
                 <p class="text-center text-danger">￥${p15.price}</p>`
            $("#details4>ul>li:nth-child(3)").html(html);
             //4F-商品4
             var p16=products[15];
             var html=`<img src="${p16.pic}" class="w-100"/>
                  <p class="text-center font-14 text-dark">${p16.title}</p>
                  <p class="text-center text-danger">￥${p16.price}</p>`
            $("#details4>ul>li:last-child").html(html);
        }
    })
})