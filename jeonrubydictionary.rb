=begin

자신만의 메소드 사전을 만듭니다!

def 이름_메소드명     #메소드에 대한 설명
  메소드사용
  #=> 예상되는결과
end

다음과 같은 형식으로 아래의 #메소드작성 주석뒤에 코드를 작성합니다.
Ruby On Rails를 사용하면서 가장많이 사용하는 Ruby의 요소는 method 입니다.
method를 많이 알아둔다면 그만큼 코딩이 쉬워질거예요.
가능한 많은 메소드를 직접 irb로 써보세요.
이번과제는 여러분이 공부하는만큼 스스로 가져가는게 많은 과제일거예요.
화이팅하세요! 과제 형식이나 버그에 관련해서는 언제나 질문하세요.

=end

#매번 새로운 변수를 만들기 귀찮다면 아래를 사용해도 되고 각자 만들어 사용해도 됩니다.
var_integer = 123
var_string = "likelion"
var_boolean_1 = true
var_boolean_2 = false
var_array = [1,2,3,4,5]
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

#메소드 만들기 예시
def miyeon_length   #배열이나 문자열의 길이를 측정하는 메소드
  a = [1,2,3]
  b = "likelion"
  puts a.length
  puts b.length
  # => 3
  # => 8
end

#1
def sujong_each_key   # 해시에서 키만 뽑아낸다.
  my_hash = {
    :key1=>1,
    :key2=>2,
    :key3=>3
  }

  my_hash.each_key {|key| puts key}
  # => key1 key2 key3
end

#2
def sujong_each_value   # 해시에서 값만 뽑아낸다.
  my_hash = {
    :key1=>1,
    :key2=>2,
    :key3=>3
  }

  my_hash.each_value {|value| puts value}
  # => 1 2 3 
end

#3
def sujong_delete   # 해시의 키를 통해 키-값을 제거
  my_hash = {
    :key1=>1,
    :key2=>2,
    :key3=>3
  }

  my_hash.delete(:key3)
  puts my_hash
  # => {:key1=>1, :key2=>2}
end

#4
def sujong_upto   # 하나씩 더하면서 반복 진행
  1.upto(10) { |i| print i}
  # => 12345678910
end

#5
def sujong_downto   # 하나씩 빼면서 반복 진행
  10.downto(1) { |i| print i}
  # => 10987654321
end

#6
def sujong_collect  # 각 요소에 내용 추가
  a = ["a", "b", "c", "d"]
  puts a.collect { |x| x + "!"}
  # => a! b! c! d!
  puts a
  # => a b c d
end

#7
def sujong_floor   # 소수점 이하 자리 떼고 정수만 반환
  puts (3.14159).floor
  # => 3
end

#8
def sujong_insert   # n번째 위치 이후에 x 삽입
  a = ["a", "b", "c", "d"]
  puts a.insert(2, 99)
  # => a b 99 c d
end

#9
def sujong_count   # 요소의 개수를 알려준다. / x 입력시 x까지의 개수를 알려줌.
  a = ["a", "b", "b", "d"]
  puts a.count
  # => 4
  puts a.count("b")
  # => 2
end

#10
def sujong_first   # 첫 요소만 반환 / 횟수 입력시 처음으로부터 n번째 요소까지 반환 
  a = ["a", "b", "c", "d"]
  puts a.first
  # => a
  puts a.first(3)
  # => a b c
end

#11
def sujong_cycle   # cycle에 n 입력시 n회만큼 실행
  a = ["a", "b", "c", "d"]
  a.cycle(2) {|x| puts x}
  # => abcd abcd
end

#12
def sujong_concat   # 두 개의 배열을 하나로 합친다.
  a = ["a", "b", "c"]
  b = ["x", "y", "z"]

  puts a.concat(b)
  # => abcxyz
end

#13
def sujong_drop    # 입력한 내용 다음의 요소들을 보여준다.
  a = [1, 2, 3, 4, 5, 6]
  puts a.drop(3)
  # => 4 5 6
end

#14
def sujong_each   # 요소 각각에 입력한 내용을 삽입한다.
  a = ["a", "b", "c", "d"]
  a.each {|x| print x, " -- "}
  # => a -- b -- c -- d --
end

#15
def sujong_rotate   # 시작요소를 n회 입력시 n회만큼 이동 / -n의 경우 역행 이동
  a = ["a", "b", "c", "d"]
  puts a.rotate
  # => b c d a
  puts a.rotate(2)
  # => c d a b
  puts a.rotate(-1)
  # => d a b c
end

#16
def sujong_join   # 요소 각각에 입력한 내용을 삽입한다.
  a = ["a", "b", "c", "d"]
  puts a.join
  # => abcd
  puts a.join("-")
  # => a-b-c-d
end

#17
def sujong_pop   # 역순으로 n회 만큼 제거
  a = ["a", "b", "c", "d"]
  puts a
  # => abcd

  a.pop(3)
  puts a
  # => a
end

#18
def sujong_combination   # n회 입력시 n개씩 결합하여 만들 수 있는 모든 경우의 수를 보여준다.
  a = ["a", "b", "c", "d"]
  puts a.combination(2).to_a
  # => ㅁab ac ad bc bd cd
end

#19
def sujong_capitalize   # 첫글자를 대문자로 바꿔준다.
  puts "nice".capitalize
  # => Nice
end

#20
def sujong_partition   # 입력한 위치를 기준으로 분리한다.
  puts "partition".partition("t")
  # => par  t  ition
end

#21
def sujong_chars   # 문자 사이사이에 입력한 내용을 삽입한다.
  "perfectruby".each_char{|c| print c, ' '}
  # => p e r f e c t r u b y
end

#22
def sujong_upcase   # 모든 문자를 대문자화시킨다.
  puts "perfectruby".upcase
  # => PERFECTRUBY
end

#23
def sujong_replace   # 원래 있던 내용을 새로 입력한 내용으로 대체한다.
  s = "hello"
  puts s
  # => hello

  puts s.replace "perpectruby"
  # => perpectruby
end

#24
def sujong_reverse   # 문자를 역순으로 바꾼다.
  puts "stressed".reverse
  # => desserts
end

#25
def sujong_swapcase   # 대문자는 소문자로, 소문자는 대문자로 바꾼다.
  puts "Hello".swapcase
  # => hELLO
end

#26
def sujong_shuffle   # 요소의 순서를 무작위로 섞는다.
  a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  puts a.shuffle
  # => 7 10 9 5 4 6 1 2 3 8
end
#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~

#27
def sujong_unshift   # 입력받은 요소를 배열의 첫 부분을 기준으로 하여 차례로 삽입한다.
  a = ["a", "b", "c", "d"]
  puts a.unshift("E", 1, 2)
  # => E 1 2 a b c d
end

#28
def sujong_rassoc   # 뒤에 있는 요소를 입력하면 짝 지어진 요소를 보여준다.
                    # 내용이 겹치는 요소가 있으면 앞서 있던 것이 우선순위로 출력되고, 뒤에 있는 것은 버린다.
  a = [[1, "one"], [2, "two"], [3, "three"], ["li", "two"]]
  puts a.rassoc("two")
  # => 2 two
  puts a.rassoc("one")
  # => 1 one
end

#29
def sujong_take   # 배열의 처음을 기준으로 하여, 입력한 숫자에 해당하는 순서까지 출력한다.
  a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  puts a.take(4)
  # => 1 2 3 4
end

#30
def sujong_transpose   # 배열에 여러 묶음이 있을 때, 묶음의 요소 순서에 맞춰 다시 묶는다.
  a = [
        [ "a",  "b",  "c",  "d",   "e"  ],
        [  1,    2,    3,    4,     5   ],
        ["cat","dog","cow","pig","horse"]
      ]

  puts a.transpose
  # => a 1 cat  b 2 dog  c 3 cow  d 4 pig  e 5 horse
end


puts "==================================="
puts "=========메소드 사전만들기========="
puts "==================================="

dic_flag = 0

while dic_flag == 0
  puts "1. 검색         2. 종료"

  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "검색할 메소드를 입력하세요"
    send(gets.chomp)
  when 2
    puts "종료합니다"
    dic_flag += 1
  else
    puts "1과 2중 다시 입력해주세요."
  end
end
