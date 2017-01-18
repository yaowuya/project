var abc = document.getElementById('lsy1');
var def = document.getElementById('lsy2');
var ghi = document.getElementById('lsy3');
var jkl = document.getElementById('lsy4');
var cdl1 = document.getElementById('pan');
var cdl2 = document.getElementById('pane');
var cdl3 = document.getElementById('panel');

function ifdelete () {
     var asd=confirm("是否删除");
     if(asd==true){
     	alert("删除成功");
     } 
     else
     	alert("请重新进行操作");
}
function ifchange () {
     var asd=confirm("是否修改");
     if(asd==true){
     	alert("修改成功");
     } 
     else
     	alert("请重新进行操作");
}
function see1(){
    abc.style.display = "none";
    def.style.display = "block";
}
function see2(){
    ghi.style.display = "none";
    jkl.style.display = "block";
}
function return1(){
     abc.style.display = "block";
    def.style.display = "none";
}
function return2(){
     ghi.style.display = "block";
    jkl.style.display = "none";
}
function set1 () {
     cdl1.className="tab-pane active";
     cdl2.className="tab-pane";
     cdl3.className="tab-pane";
}
function set2 () {
     cdl1.className="tab-pane";
     cdl2.className="tab-pane active";
     cdl3.className="tab-pane";
}
function set3 () {
     cdl1.className="tab-pane";
     cdl2.className="tab-pane";
     cdl3.className="tab-pane active";
}
function set3dele () {
     var asd=confirm("是否删除");
     if(asd==true){
          alert("删除成功");
     } 
     else
          {
               alert("请重新进行操作");
          }
     cdl1.className="tab-pane";
     cdl2.className="tab-pane";
     cdl3.className="tab-pane active";
}
function set3change () {
     var asd=confirm("是否修改");
     if(asd==true){
          alert("修改成功");
     } 
     else
          alert("请重新进行操作");
     cdl1.className="tab-pane";
     cdl2.className="tab-pane";
     cdl3.className="tab-pane active";
}
function set2change () {
     var asd=confirm("是否修改");
     if(asd==true){
          alert("修改成功");
     } 
     else
          alert("请重新进行操作");
     cdl1.className="tab-pane";
     cdl2.className="tab-pane active";
     cdl3.className="tab-pane";
}
function set4 () {
     cdl1.className="tab-pane";
     cdl2.className="tab-pane active";
}

