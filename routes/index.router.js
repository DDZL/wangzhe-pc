const express=require("express")
const router=express.Router();
const pool=require("../pool")
//在app.js里 app.use("/index",Index)来管理路由
router.get("/",(req,res)=>{
  var sql=`select * from wangzhe_index_carousel`;
  console.log('dfalkfjdslfjljlkj')
  pool.query(sql,(err,result)=>{
    if(err) console.log(err);
    res.send(result);
  });
})


module.exports=router;