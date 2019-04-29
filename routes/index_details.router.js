const express =require("express")
const router = express.Router();
const pool=require("../pool")

//index_de.js
router.get("/",(req,res)=>{
    var sql1=`select * from wangzhe_index_product`;
    console.log('12012012012')
    pool.query(sql1,(err,result)=>{
      if(err) throw err;
      res.send(result);
    })
  })

  module.exports=router;  