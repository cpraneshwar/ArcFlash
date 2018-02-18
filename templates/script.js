function calculate(){
    var da = document.testForm.da.value;
    var ta = document.testForm.ta.value;
    var f = document.testForm.f.value;
    da = parseFloat(da);
    ta = parseFloat(ta);
    f = parseFloat(f);
    //alert(da+" "+ta+" "+f);
    var ema = 5271*Math.pow(da,-1.9593)*ta*(0.0016*(f*f)-0.0076*f+0.8938);
    document.getElementById("result").innerHTML = "EMA = "+ema;
    var x = document.forms;
}
function sendJSON(){
    var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance
    xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        document.getElementById("result").innerHTML =
        this.responseText;
        }
    };
    xmlhttp.open("POST", "http://localhost:3000");
    xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    xmlhttp.send(JSON.stringify(myData));
}