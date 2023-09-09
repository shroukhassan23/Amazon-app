//console.log("hi")//*****print in terminal**********//
//*******************create API*****************//
//-------------------------------------------------//
///*****like import exeress******/
const express = require("express");//frame work to create data base using java script.
//const { default: mongoose } = require("mongoose");
const PORT=3000;
const app=express();//server//كاني ندهت علي الاكسبريس///**call it */
//app.listen(PORT,"0.0.0.0",function(){console.log("Hi")})
//app.get("/sss",(req,res)=>{res.send("الحاجه اللي عايزاها تظهر في صفحة الويب")});
const authRouter=require("./routes/auth");//علشان لو عايز يتعامل مع ال auth
const mongoose= require("mongoose");//make call to data base
const DB="mongodb+srv://amazon:cck6RvnDjaK57eD6@cluster0.5uqos9n.mongodb.net/?retryWrites=true&w=majority";
//link to data base
app.use(express.json());//to make the app read and send json
app.use(authRouter);

mongoose.connect(DB).then(()=>{///*make connect with data base */
    console.log("connection successful");
}).catch((e)=>{//if the connection failed
console.log(e);
});

app.listen(PORT,"0.0.0.0",function(){//make the api listen
    console.log(`connected to port: ${PORT}`);

});

