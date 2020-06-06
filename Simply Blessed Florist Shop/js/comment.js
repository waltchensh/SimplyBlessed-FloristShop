 var named;
 function delete1(id)
 {
	 localStorage.removeItem(id);
	 this.Storage.writeData();
 }
 function prom() {

	 var name = prompt("請輸入您的名字", "");
	 named = name;
	

	 if (named)

	 {

		 alert("歡迎您：" + name)
		 document.getElementById("shangtian").style.display = "none";
		 document.getElementById("ritian").value = named;

	 }
	 else {
		 document.getElementById("ritian").value = "匿名";
	 }

 }
var Storage =
{
  saveData:function()
  {

		  var data = document.querySelector("#post textarea");
	  if(data.value != "" || count != 0)
	  {
		  var time = new Date().getTime() + Math.random() * 5;
		  
		  if (named) {
			  localStorage.setItem(time, data.value +"<p>評價: <label class='text-primary'>" + count + "</label></p>"+ "|" + "<h3>"+ named +"</h3>"+ "|" + this.getDateTime());
		  }
		  else
		  {
			  localStorage.setItem(time, data.value +"<p>評價: <label class='text-primary'>" + count + "</label></p>"+ "|" + "<h3>匿名</h3>" + "|" + this.getDateTime());
		  }

		  data.value = "";
		  this.writeData();
	  }
	  else
	  {
		  alert("請填寫您的留言！");
	 }
  },
  writeData:function()
  {
	 var dataHtml = "", data = "";
	  for(var i = localStorage.length-1; i >= 0; i--)
	  {
		  data = localStorage.getItem(localStorage.key(i)).split("|");

			  //dataHtml += "<p><span class=\"msg\">" + data[0] + "</span><span class=\"datetime\">" + data[1] + "</span><span>" + data[2]+"</span></p>";
		  dataHtml += "<span >" + data[1] + "<span>" + data[2] + "</span><p><span class=\"msg\">" + data[0] ;
	  }
	  document.getElementById("comment").innerHTML = dataHtml;
  },
  clearData:function()
  {
	  if(localStorage.length > 0)
	  {
		  if(window.confirm("清空後不可回復，是否確認清空？"))
		  {
			  localStorage.clear();
			  this.writeData();
		  }
	  }
	  else
	 {
		 alert("沒有數據需要清空！");
	  }
  },
  getDateTime:function()
  {
	  var isZero = function(num)
	  {
		  if(num < 10)
		 {
			  num = "0" + num;
		  }
		  return num;
	  }
	  
	  var d = new Date();
	  return d.getFullYear() + "-" + isZero(d.getMonth() + 1) + "-" + isZero(d.getDate()) + " " + isZero(d.getHours()) + ":" + isZero(d.getMinutes()) + ":" + isZero(d.getSeconds());
  }            
}

var count = 0;

function startRating(item){
	count=item.id[0];
	sessionStorage.star = count;
	for(var i=0;i<5;i++){
		if(i<count){
			document.getElementById((i+1)).style.color="yellow";
		}
		else{
			document.getElementById((i+1)).style.color="black";
		}
	}
}

window.onload = function()
{
  Storage.writeData();
  document.getElementById("postBt").onclick = function(){Storage.saveData();}
  document.getElementById("clearBt").onclick = function(){Storage.clearData();}
}

