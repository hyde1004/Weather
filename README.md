# Weather

## 목적
Ruby를 사용하여 기상청 날씨 정보를 가져오는 것을 목적으로 한다.
날씨 정보는 기상청 ( http://www.kma.go.kr/weather/lifenindustry/sevice_rss.jsp ) 에서 얻는다.

천안시 부성동 날씨의 RSS는 다음에서 얻을 수 있다.
http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=4413357000

## Input
날씨를 얻기 위한 정보는 다음과 같다.
* 도시
* 시간
* Update 간격

## Output
현재 (시간별)과 미래(날짜별) 날씨 정보를 표시한다.
* 날씨
* 기온
* 습도

## Example

````
    City : 천안
    Weather : Cloudy 
    Current Temp. : 5C
    Min Temp. : 0C
    Max Temp. : 11C
````