changeStarColor = (event) =>{
	if (event.nativeEvent.offsetX > 0 || event.nativeEvent.offsetX > parseInt(event.target.style.width.split("")[0]-3)){
		event.target.style.color = "yellow"
	}else if (event.nativeEvent.offsetX > 0 || event.nativeEvent.offsetX < event.nativeEvent.offsetX + parseInt(event.target.style.width.split("")[0]-3)){
		event.target.style.color = "white"
	}
}

changeStarColor = (event) =>{
	let element = document.getElementById(event.target.id)

	let starId = parseInt(element.id)
	let strId = "" ;
	let i = 1 
	while (i <= starId){
		strId = i.toString()
		let gold = document.getElementById(strId)
		gold.style.color = "gold"
		i++;
	} 
	while (i <=5){
		strId = i.toString()
		let white = document.getElementById(strId)
		white.style.color = "white"
		i++;
	}
	this.countYellowStars()
}
countYellowStars = () =>{
	debugger
	let arr = []
	let stars = document.getElementByClassName("star")
	for(let i = 0; i < stars.length; i++){
		if(stars[i].style.color==="gold"){
			arr.push(stars[i].style.color)
		}
	}
}