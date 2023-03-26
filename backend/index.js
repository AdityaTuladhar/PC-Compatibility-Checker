const express = require("express")
const mysql = require("mysql")
const cors = require("cors")
var axios = require('axios');
const app = express()

app.use(express.json())
app.use(cors())
app.use(function(req,res,next){
    res.header("Content-Range","posts 0-20/20")
    next()
})

const db = mysql.createConnection({
    user:"root",
    host:"localhost",
    password:"",
    database:"zozo_hub",
})

app.get("/all_component", (req, res)=>{
    return_val = [];
    db.query("SELECT * FROM cpu", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":1}};
            }
            Array.prototype.push.apply(return_val,result);
            
        }
    })
    db.query("SELECT * FROM cpu_cooler", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":2}};
            }
            Array.prototype.push.apply(return_val,result);
        }
    })
    db.query("SELECT * FROM graphics_card", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":3}};
            }
            Array.prototype.push.apply(return_val,result);
        }
    })
    db.query("SELECT * FROM memory", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":4}};
            }
            Array.prototype.push.apply(return_val,result);
        }
    })
    db.query("SELECT * FROM motherboard", (err,result) => {
        if(err){
            
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":5}};
            }
            Array.prototype.push.apply(return_val,result);
        }
    })
    db.query("SELECT * FROM pc_case", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":6}};
            }
            Array.prototype.push.apply(return_val,result);
        }
    })
    db.query("SELECT * FROM psu", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":7}};
            }
            Array.prototype.push.apply(return_val,result);
        }
    })
    db.query("SELECT * FROM storage", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            for(var i=0;i<result.length;i++){
                result[i] = {...result[i],...{"comp_id":8}};
            }
            Array.prototype.push.apply(return_val,result);
            return_val = return_val.sort(() => Math.random() - 0.5)
            res.send(return_val);
        }
    }) 
    
})

app.post("/cpu",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO cpu (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/cpu_cooler",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO cpu_cooler (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/graphics_card",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO graphics_card (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/memory",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO memory (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/motherboard",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO motherboard (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/pc_case",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO pc_case (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/psu",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO psu (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/storage",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details

    db.query("INSERT INTO storage (image, name, price, details) VALUES(?,?,?,?)", [image, name, price, details],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/cpu",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE cpu SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/cpu_cooler",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE cpu_cooler SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/graphics_card",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE graphics_card SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/memory",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE memory SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/motherboard",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE motherboard SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/pc_case",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE pc_case SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/psu",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE psu SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/storage",(req, res)=>{
    const image = req.body.image
    const name = req.body.name
    const price = req.body.price
    const details = req.body.details
    const id = req.body.id

    db.query("UPDATE storage SET image=?,name=?,price=?,details=? WHERE id=?",[image,name,price,details,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/cpu/:id", (req, res)=>{
    db.query("DELETE FROM cpu WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/cpu_cooler/:id", (req, res)=>{
    db.query("DELETE FROM cpu_cooler WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/graphics_card/:id", (req, res)=>{
    db.query("DELETE FROM graphics_card WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/memory/:id", (req, res)=>{
    db.query("DELETE FROM memory WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/motherboard/:id", (req, res)=>{
    db.query("DELETE FROM motherboard WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/pc_case/:id", (req, res)=>{
    db.query("DELETE FROM pc_case WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/psu/:id", (req, res)=>{
    db.query("DELETE FROM psu WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/storage/:id", (req, res)=>{
    db.query("DELETE FROM storage WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/cpu", (req, res)=>{
    db.query("SELECT * FROM cpu", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/cpu_cooler", (req, res)=>{
    db.query("SELECT * FROM cpu_cooler", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/graphics_card", (req, res)=>{
    db.query("SELECT * FROM graphics_card", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/memory", (req, res)=>{
    db.query("SELECT * FROM memory", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/motherboard", (req, res)=>{
    db.query("SELECT * FROM motherboard", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/pc_case", (req, res)=>{
    db.query("SELECT * FROM pc_case", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/psu", (req, res)=>{
    db.query("SELECT * FROM psu", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/storage", (req, res)=>{
    db.query("SELECT * FROM storage", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/cpu/:id", (req, res)=>{
    
    db.query("SELECT * FROM cpu WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err: "Nothing here"})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/orders", (req, res)=>{
    db.query("SELECT * FROM orders", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            var id=[];
            var quantity=[];
            var ind_id=[];
            var name=[];
            var comp_name=[];
            var ind_name=[];
            var status = [];
            var price = [];
            var date = [];
            var return_val=[];
            for(var i=0;i<result.length;i++){
                id.push(result[i].id);
                ind_id.push(result[i].ind_id);
                quantity.push(result[i].quantity);
                date.push(result[i].date);
                if(result[i].order_status==1){
                    status.push("Processing");
                }
                else if(result[i].order_status==2){
                    status.push("Completed");
                }
                
                price.push(result[i].price);
                db.query("SELECT first_name,last_name FROM login_info WHERE id="+result[i].u_id,(err1,result1)=>{name.push(result1[0].first_name+" "+result1[0].last_name)});
                db.query("SELECT comp_name FROM component_id WHERE comp_id="+result[i].comp_id,(err2,result2)=>{
                    comp_name.push(result2[0].comp_name);
                    db.query("SELECT name FROM "+comp_name[comp_name.length-1]+" WHERE id="+ind_id[comp_name.length-1],(err3,result3)=>{
                        ind_name.push(result3[0].name);
                        if(ind_name.length == id.length){
                            for(j=0;j<id.length;j++){
                                return_val.push({"id":id[j],"u_id":name[j],"comp_id":comp_name[j],"ind_id":ind_name[j],"order_status":status[j],"price":price[j],"quantity":quantity[j],"date":date[j]});
                            }
                            res.send(return_val);
                        }
                    });
                });
                
            }

            
        }
    });
})

app.delete("/orders/:id", (req, res)=>{
    db.query("DELETE FROM orders WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.patch("/orders",(req, res)=>{
    const status = req.body.order_status=="Processing"?1:2;
    const id = req.body.id;

    db.query("UPDATE orders SET order_status=? WHERE id=?",[status,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/orders",(req, res)=>{
    db.query("SELECT first_name,last_name FROM login_info WHERE id="+req.body[0].u_id,(err,result)=>{
        axios.post('https://api.engagespot.co/v3/notifications',{
        "notification": {"title": "New order request by "+result[0].first_name+" "+result[0].last_name},
        "recipients": ["Admin"]},{
        headers:{
        'X-ENGAGESPOT-API-KEY':'kt3zg7bdcb8l8f5ys3d2n',
        'X-ENGAGESPOT-API-SECRET':'hdgmkc7s6r65566g1aaad5jeb8gcd8ji948h5ib8e0e35ig',
        }})
    });

    for(var i=0;i<req.body.length;i++){
        const u_id = req.body[i].u_id
        const comp_id = req.body[i].comp_id
        const ind_id = req.body[i].id
        const order_status = 1;
        const price = req.body[i].price
        const quantity = req.body[i].quantity
        const date = new Date()

        db.query("INSERT INTO orders (u_id, comp_id, ind_id, order_status, price, quantity, date) VALUES(?,?,?,?,?,?,?)", [u_id, comp_id, ind_id, order_status, price, quantity,date],(err, result) => {})
    }
    res.send("Ok");
    
})

app.patch("/customerInfo",(req, res)=>{
    const firstName = req.body.first_name
    const lastName = req.body.last_name
    const email = req.body.email
    const password = req.body.password
    const id = req.body.id
    const phone= req.body.phone

    db.query("UPDATE login_info SET first_name=?,last_name=?,phone=?,email=?,password=? WHERE id=?",[firstName,lastName,phone,email,password,id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/customerInfo",(req, res)=>{
    const firstName = req.body.first_name
    const lastName = req.body.last_name
    const email = req.body.email
    const password = req.body.password

    db.query("INSERT INTO login_info (first_name, last_name,phone, email, password) VALUES(?,?,?,?)", [firstName, lastName,phone, email, password],(err, result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.delete("/customerInfo/:id", (req, res)=>{
    db.query("DELETE FROM login_info WHERE id=?",[req.params.id], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/customerInfo", (req, res)=>{
    db.query("SELECT * FROM login_info", (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.get("/validEmail/:email", (req,res)=>{
    db.query("SELECT * FROM login_info WHERE email=?",[req.params.email], (err,result) => {
        if(err){
            res.send({err:err})
        }
        else{
            res.send(result)
        }
    })
})

app.post("/register", (req, res) => {
    const firstName = req.body.firstName
    const lastName = req.body.lastName
    const phone = req.body.phoneNumber
    const email = req.body.email
    const password = req.body.password

    db.query("INSERT INTO login_info (first_name, last_name,phone, email, password) VALUES(?,?,?,?,?)", [firstName, lastName, phone, email, password],(err, result) => {
        if (err) throw err
        res.send(true)
    })
})

app.post("/login",(req, res) => {
    const email = req.body.email
    const password = req.body.password

    db.query("SELECT * FROM login_info WHERE email=? and password=?",
    [email, password],
    (err,result) => {
        if(err){
            res.send({err:err})
        }
        if(result.length > 0){
            res.send(result)
        }
        else{
            res.send("Wrong email or password.")
        }
    })
})

app.listen(3001, () => {
    console.log("running server")
})
