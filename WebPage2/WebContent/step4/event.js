//<body onload="kaja();"> //웹페이지가 로딩될 때.. 이러면 여기에 html이 들어감. 역할을 분리하는 mvc 모델에 어긋난다.
window.onload = function(){ //객체.속성 = 값 --> 객체.이벤트 = 이벤트처리함수. 웹페이지가 로딩될 때 해당 함수가 수행된다.
	//tag 사용 없이 load
	var kong = document.getElementById('kong'); //아이디 id="kong"인 버튼에 접근을 한다.(찾아가보니 그렇다.)
	//객체를 만들었다.
	if(kong!=null){ //객체가 만들어졌으면-> id가 kong인 것을 찾아서 만들었다면
		//평강공주 러브라인 버튼을 누르면 --> JJIK 처리하러간다.
		if(kong.addEventListener) //동적 메소드 . 표준형이다
			kong.addEventListener('click',Kaja.JJIK,false); //클릭하면 이 함수로 간다. event-catpure의 기능은 없다. false니까.
		else //표준형이 아니라면 
			kong.attachEvent('onclick',Kaja.JJIK); //ie
	}	
}
//var kaja1 = 30; --> 기억창고, 변수
//{} 중괄호? 객체.
var Kaja ={		
		JJIK: function(event){ //메소드 
			if(document.getElementById('kaja1')!=null
					&& document.getElementById('kaja2')!=null){
				document.getElementById('kaja1').innerHTML="babo" //div 태그에 있는 아이디. from loveline.html
					//innerHTML속성에 babo를 넣는다.
				document.getElementById('kaja2').innerHTML ="ondal"
			}
		}
	}