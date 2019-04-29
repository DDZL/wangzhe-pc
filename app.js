//使用express构建web服务器
const mysql =require("mysql");
const express = require('express');
const bodyParser = require('body-parser');
var cors =require('cors')
/*引入路由模块*/
const Index=require("./routes/index.router")
const Index_details=require("./routes/index_details.router")


var app = express();
var server = app.listen(3000);
//启用cors跨域，只允许http://127.0.0.1:5500去请求访问该服务器
app.use(cors({"origin":"*"}))
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
app.use("/index",Index);
app.use("/index_details",Index_details);

