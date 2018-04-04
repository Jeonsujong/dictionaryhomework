### 구현의도
<br>
###### 나만의 메소드 사전을 만드는 것을 목표로 하여, 여러가지 메소드를 입력해놓는다. 그리고 해당 메소드 이름을 검색시 그 메소드의 실행결과를 알 수 있다.

### 오류내용 + 오류 해결 방법
<br>
###### collect 메소드를 사용할 때, 입력한 내용이 요소에 삽입되지 않은 채 그대로 출력되어 당황했었다. 
###### a 라는 배열에 a.collect를 하고 puts a를 하면 수정되어 출력될 줄 알았는데 그대로였다.
###### 문제는 a.collect를 puts 하여 해결했다. 그 이후 puts a를 해봤는데 배열의 원형이 출력되었다.
###### 결과적으로 collect는 일시적으로 삽입하는 것이었다. 즉, 배열의 요소 자체를 수정하는 게 아닌 것이다.

### 간단한 소감
<br>
###### 루비에 대한 이해가 많이 부족하여 굉장히 간단한 메소드만을 수록했던 것이 어쩔 수 없으면서도 아쉬웠다. 하지만 앞으로 자연스레 조금 더 복잡한 메소드를 많이 익히게 될 것이므로 괜찮다. 그때마다 메소드 사전에 추가하여 그 목록을 늘려가는 일은 소소한 재미가 있을 것이다.

### 참고문서
<br>
###### 1. https://apidock.com/ruby/Array
###### 2. https://apidock.com/ruby/String
###### 3. https://github.com/likelionkonkuk/w2_mon_material
