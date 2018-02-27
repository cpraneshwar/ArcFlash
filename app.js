var express = require('express');
var path = require('path');
var app = express();
var bodyParser = require('body-parser');
var mysql = require('mysql');
var sqlstring = require('sqlstring');
var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "Open Sesame"
});
con.query("USE ArcFlash",function(err,result){
		if(err) throw err;
		else console.log("DATABASE SELECTED");
	});

app.set('view engine', 'ejs');

// Binding express app to port 3000
app.listen(3000,function(){
    console.log('Node server running @ http://localhost:3000');
});

app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, 'style')));
app.get('/',function(req,res){
    res.sendFile('home.html',{'root': __dirname + '/templates'});
})

app.post("/result", function (req, res) {
    
    var dept = req.body.deptName;
    var room = req.body.roomNo;
    var equip = req.body.equipId;
    var type = req.body.equipType;
    var da = req.body.da;
    var ta = req.body.ta;
    var f = req.body.f;
    da = parseFloat(da);
    ta = parseFloat(ta);
    f = parseFloat(f);
    //alert(da+" "+ta+" "+f);
    if(type=="SF"){
        var ema = 1038.7*Math.pow(da,-1.4738)*ta*(0.0093*(f*f)-(0.3453*f)+5.9675);

    }
    else{
        var ema = 5271*Math.pow(da,-1.9593)*ta*(0.0016*(f*f)-(0.0076*f)+0.8938);
    }
    //document.getElementById("result").innerHTML = "EMA = "+ema;
    console.log("Result: "+ema);
    var date = new Date();
    //var queryString = "INSERT into Entries values ('"+dept+"','"+room+"','"+equip+"','"+type+"',"+da+","+ta+","+f+","+ema+",'"+date+"')";
    var queryString = sqlstring.format('INSERT into Entries values (?,?,?,?,?,?,?,?,?)',[dept,room,equip,type,da,ta,f,ema,date]);
    con.query(queryString,function(err,result){
		if(err) throw err;
		else console.log(result);
	});  
});

app.get('/viewAll',function(req,res){
    var queryString = "SELECT * FROM Entries ORDER BY date";
    con.query(queryString,function(err,result){
		if(err) throw err;
		else {
            console.log(result);
            res.render('viewAll.ejs', { result: result });  
        }
	});  
})

