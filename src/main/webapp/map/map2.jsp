<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 추가됨!.크롬에서는 error가 나서 width=device-width,  여기 콤마로 바꾼다() -->

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
}

#map {
	width: 100%;
	height: 100%;
}
</style>

<title>map2.jsp</title>
</head>

<body>


	<button id="loc1">강남역</button>
	<button id="loc2">이대역</button>
	<button id="loc3">광화문</button>
	<button id="loc4">우리집</button>

	<form method="post" name="map2" onsubmit="moveMap1()">
		<table width="300" align="center">
			<tr>
				<td><input type="text" name="location" maxlength="50"
					style="width: 100%;"></td>
				<td><input type="submit" value="검색" style="width: 100%;"></td>
			</tr>
		</table>
	</form>


	<div id="map">Google Map</div>
</body>


<script src="https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">
	var latLng = { /* 자바스크립트 객체 형태 */
		lat : 37.12345,
		lng : 127.12345
	};
	var options = {
		zoom : 12,
		center : latLng
	};
	var m = new google.maps.Map(map, options);

	m.setCenter({ /* 오버라이드  */
		lat : 37.498257, /* 강남역 */
		lng : 127.027578
	});
	m.setZoom(18); /* 오버라이드 */
	/* m.setCenter와 m.setZoom 두개가 실행 되면 지도가 움직인다. */

	var geoCoder = new google.maps.Geocoder();
	function moveMap() {
		//		alert(this.id + " was clicked..");
		switch (this.id) {
		case "loc1":
			console.log(" to gangnam station..."); /* 로그 확인은 파이어 폭스- 우측키-요소검사- 콘솔에서 확인 */
			geoCoder.geocode({
				address : "강남역"
			}, function(result, status) {
				console.dir(result);
				console.dir(status);
				console.dir(geoCoder);
				var lat = result[0].geometry.location.lat(); //강남역의 latitude
				var lng = result[0].geometry.location.lng(); //강남역의 longitude	
				console.log("lat = " + lat);
				console.log("lng = " + lng);

				m.panTo({ //setCener 대신에 panTo. setCenter를 사용해도 된다.차이가 거의 없음.
					lat : lat,
					lng : lng
				});
				m.setZoom(16);

			});

			break;
		case "loc2":
			console.log(" to ehua station...");
			m.panTo({
				lat : 37.557033,
				lng : 126.945857
			});
			m.setZoom(15);
			break;
		case "loc3":
			console.log(" to ghanghwa station...");
			m.panTo({
				lat : 37.571785,
				lng : 126.976602
			});
			m.setZoom(19);
			break;
		case "loc4":
			console.log(" to home...");
			m.panTo({
				lat : 37.511692,
				lng : 127.114506
			});
			m.setZoom(18);
			break;

		default:
			break;
		}
	}

	function moveMap1() {
		var loc5 = map2.location.value;	 	
	 	  geoCoder.geocode({
			address : loc5
		}, function(result, status) {
			console.log(log5);
			console.dir(result);
			console.dir(status);
			console.dir(geoCoder);
			var lat = result[0].geometry.location.lat(); //강남역의 latitude
			var lng = result[0].geometry.location.lng(); //강남역의 longitude	
			console.log("lat = " + lat);
			console.log("lng = " + lng);

			m.panTo({ //setCener 대신에 panTo. setCenter를 사용해도 된다.차이가 거의 없음.
				lat : lat,
				lng : lng
			});
			m.setZoom(16);

		});

	}    

	loc1.onclick = moveMap;
	loc2.onclick = moveMap;
	loc3.onclick = moveMap;
	loc4.onclick = moveMap;
</script>

</html>