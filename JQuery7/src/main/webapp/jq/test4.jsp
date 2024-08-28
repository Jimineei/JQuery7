<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery 반드시 라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // 요소의 내용을 수정 (가져오기) - html() text()
        var hValue = $('h2').html();
        // alert(hValue); // head-0 (해당 요소 중 첫 번째 요소의 값)
        var tValue = $('h2').text();
        // alert(tValue); // head-0head-1head-2 (해당 요소 모두 요소 값)
        
        // h2태그에 내용 변경
        $('h2:last').html('아이티윌');
        $('h2').text('부산');
        
        // h2태그에 내용 변경 (tag)
        $('h2').html("<h2>아이티윌</h2>");
        // => 실제 태그를 적용해서 내용을 변경
        //$('h2').text("<h2>아이티윌</h2>");
        // => 실제 태그를 적용X, 내용(문자) 그대로 변경
        
        // "아이티윌 부산교육센터" - h2 태그 내용 변경
        // $('h2').html("<h2>아이티윌 부산교육센터</h2>");
        $('h2').html(function(idx, oldHTML) {
            // alert(a+"/"+b);
            // return oldHTML+"부산교육센터";
            return "<h2>아이티윌 부산교육센터</h2>";
        });
        
        // 요소의 내용 추가 - append(), prepend()
        $('body').append("<h1>뒤쪽에 추가 append()</h1>");
        $('body').prepend("<h1>앞쪽에 추가 prepend()</h1>");
        
        // 특정 태그에 내용을 추가 (태그 적용)
        $('h1').append(function(idx, data) {
            // alert(idx+"/"+data);
            return "아이티윌";
        });
        
        $('div').append(function(idx, data) {
            // alert(idx+"/"+data)
            return idx + 1;
        });
        
        // 배열 - 객체를 여러 개 저장
        var contentArr = [
            {name: "김학생", region: "부산"},
            {name: "이학생", region: "서울"},
            {name: "박학생", region: "대구"},
            {name: "최학생", region: "제주"}
        ];
        
        // 배열의 정보를 테이블에 내용 추가
        $('table').append("<tr><td>" + contentArr[0].name + "</td><td>" + contentArr[0].region + "</td></tr>");
        $('table').append("<tr><td>" + contentArr[1].name + "</td><td>" + contentArr[1].region + "</td></tr>");
        $('table').append("<tr><td>" + contentArr[2].name + "</td><td>" + contentArr[2].region + "</td></tr>");
        $('table').append("<tr><td>" + contentArr[3].name + "</td><td>" + contentArr[3].region + "</td></tr>");
        
        for (var i = 0; i < contentArr.length; i++) {
            $('table').append("<tr><td>" + contentArr[i].name + "</td><td>" + contentArr[i].region + "</td></tr>");
        }
        
        // $.each(data, callback 함수) 함수
        $.each(contentArr, function(idx, item) {
            // alert(idx+"/"+item);
            console.log(idx + "/" + item);
            $('table').append("<tr><td>" + item.name + "</td><td>" + item.region + "</td></tr>");
        });
        
        // div 내용 1~5 1~4까지 학생 정보 추가
        $.each(contentArr, function(idx, item) {
            $('div').append("-" + item.name + "/" + item.region);
        });
        
        // 이미지 조작
        $('img').css({
            'width': '200px',
            'height': '2s00px'
        });
        
        setInterval(function() {
            $('#divImg').append($('img').first());
        }, 2000);
        
        
        
        
        
        
    }); // jQuery
</script>
</head>
<body>
	<h1>test4.jsp</h1>

	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>

	<hr>
	<!-- 내용1~5 -->
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>

	<hr>

	<table border="1">
		<tr>
			<th>이름</th>
			<th>지역</th>
			<!-- <td>기타</td> -->
		</tr>
	</table>

	<hr>

	<div id="divImg">
		<img src="ico_naver.png"> <img src="ico_kakao.png"> <img src="ico_phone.png">
	</div>
</body>
</html>