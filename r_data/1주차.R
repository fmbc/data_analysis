# print()는 주어진 문자열을 그대로 출력하는 함수
# 함수 실행 결과는 [number] 형식으로 출력 
## [1] = 반환값의 순서 
print("hello r world")
[1] "hello r world"

## 1부터 100까지 출력. 화면 사이즈의 너비에 따라 [값이] 달라짐.
seq(1,100)
[1]   1   2   3   4   5   6   7   8   9
[10]  10  11  12  13  14  15  16  17  18
[19]  19  20  21  22  23  24  25  26  27
[28]  28  29  30  31  32  33  34  35  36
[37]  37  38  39  40  41  42  43  44  45
[46]  46  47  48  49  50  51  52  53  54
[55]  55  56  57  58  59  60  61  62  63
[64]  64  65  66  67  68  69  70  71  72
[73]  73  74  75  76  77  78  79  80  81
[82]  82  83  84  85  86  87  88  89  90
[91]  91  92  93  94  95  96  97  98  99
[100] 100

#궁금한 함수 설명 볼 수 있다. 
help(print)
?print

# 함수의 예제 샘플 보는 법 
example(print)

#함수명 궁금할 때 찾아보는 법 
help.search("prin")
??prin

# r에 있는 패키지 목록 확인하기
installed.packages()

#ggplot2 패키지 설치 및 로드  
install.packages("ggplot2")
library(ggplot2)

# 패키지 업데이트
update.packages()

#패키지 삭제
remove.packages("ggplot2")




# 매번 경로를 설정하지 않기 위해 작업디렉토리 설정
# C 드라이브에 r1 폴더를 새로 만들고, 작업디렉토리를 설정
read.csv("c://r1/seoulpopulation.csv")
setwd("c://r1")
read.csv("seoulpopulation.csv")
# 파일을 datal 변수 안에 집어넣기 
detail <-read.csv("seoulpopulation.csv")
datal

#변수 : 다양하게 변할 수 있는 값 
x <- 10
x
[1] 10

x1<-c(10,20,30)
x1
[1] 10 20 30

y<-"hi"
y
[1] "hi"

y1<-c("hello","hi","hello~!")
y1
[1] "hello"   "hi"      "hello~!"

# r의계산 기능
100^2+300
[1] 10300

500%%15
[1] 5

500%/%15
[1] 33

500/15
[1] 33.33333

x<-5
y<-3.14
x+y
[1] 8.14
x>y
[1] TRUE

x=y
y
[1] 3.14
x
[1] 3.14
x==y
[1] TRUE

x<- x-3
x
[1] 0.14
x>y
[1] FALSE

# R의 데이터 형
수치형: 정수, 실수, 지수 등을 나타내며 실수가 기본형
논리형: 참과 거짓
복소수형: a+bi의 형식
문자형: 문자나 문자열. 작은따옴표나 큰 따옴표로 나타냄

mode 함수를 이용하면 해당 값들의 기본형을 알 수 있다.
storage.mode 함수는 저장되는 데이터 타입을 알 수 있다.

mode(3+4)
[1] "numeric"
mode(pi)
[1] "numeric"
mode(3<4)
[1] "logical"
mode (T)
[1] "logical"
mode(FALSE)
[1] "logical"
mode(True)
Error in mode(True) : object 'True' not found
mode(f)
Error in mode(f) : object 'f' not found
mode("Hi, sangmin")
[1] "character"
mode('Hi, sangwon')
[1] "character"
mode(1+4i)
[1] "complex"
storage.mode(pi)
[1] "double"
storage.mode(1:5)
[1] "integer"

# 벡터 만들기 
# 벡터 일일이 할당 
# a4= NA 이기 때문에 참 
a1<-177
a2<-163
a3<-170
a4<-NA
is.na(a4)
[1] TRUE


# a3은 NA가아니기 때문에 거짓 
is.na(a3)
[1] FALSE


# 벡터 한번에 넣기 
height <- c(177,163,170,NA)
height 
[1] 177 163 170  NA
# NA값이 있으면, 오류가 뜬다.
sum(height)
[1] NA
# na 제외 나머지값의 합 
sum(height,na.rm=T)
[1] 510

# NULL : 변수가 초기화되지 않았을 때 사용, 변수값이 미정인 상태 
rate<-NULL
money<-c(1200000,950000,1300000)
#c의 값을 다 더해서 3000000이 넘으면, 0.017을 넣어라. 
if(sum(money)>=3000000){rate<-0.017}
# 3000000이 넘기 때문에 rqte=0.017이다. 따라서, FALSE가 나온다. 
rate
[1] 0.017
is.null(rate)
[1] FALSE

## 형 변환
mode(char.x) <- "numeric"
char.x <- as.numeric(char.x)

#mode 함수, storage.mode함수를 이용하는 방법
#문자형 객체 생성 
char.x <- "123"
mode(char.x)
[1] "character"
#수치형으로 형 변환 
mode(char.x) <- "numeric"
char.x
[1] 123
mode(char.x)
[1] "numeric"

#as함수를 이용하는 방법
char.x <- "123"
mode(char.x)
[1] "character"
char.x <- as.numeric(char.x)
char.x
[1] 123
mode(char.x)
[1] "numeric"

char.x<-as.character(char.x)
mode(char.x)
[1] "character"

### 데이터 구조 - 벡터
# 벡터는 하나 이상의 동일한 데이터로 구성된 데이터 구조. 그러니 서로 다른 기본형을 원소로 가질 경우 한가지 자동 형 변환 문자형> 복소수형>수치형(실수>정수)>논리형 순으로 우선순위가 있다.
#수치형, 복소수형 = 복소수형
c(3.14, 5+2i, 10)
[1]  3.14+0i  5.00+2i 10.00+0i
# 수치형, 문자형 =문자형
c(365, 12, "ex")
[1] "365" "12"  "ex" 
# 수치형, 논리형  수치형
c(123, 8710, T,F)
[1]  123 8710    1    0
# 논리형,복소수형 = 복소수형
c(T, F, 3-1i)
[1] 1+0i 0+0i 3-1i
# 논리형, 문자형= 문자형
c(T, F, "abc")
[1] "TRUE"  "FALSE" "abc"  
# 복소수형, 문자형 = 문자형
c(2+5i, "hello", 4i)
[1] "2+5i"  "hello" "0+4i" 
# 실수 , 정수 = 실수
c(3.14, 5)
[1] 3.14 5.00



백터를 만드는 방법에는
C함수를 이용하는 방법
연산자(:)를 이용하는 방법
변수를 정의한 후에 일일이 할당하는 방법
x <-10
x1<-c(10,20,30)
y<-"hi"
y1<-c("hello","hi","hello~!")

2:6
[1] 2 3 4 5 6
2:-2
[1]  2  1  0 -1 -2
1:3
[1] 1 2 3
"a":"z"
Error in "a":"z" : NA/NaN argument
In addition: Warning messages:
  1: NAs introduced by coercion 
  2: NAs introduced by coercion 

T:3
[1] 1 2 3
-3:F
[1] -3 -2 -1  0
F:T
[1] 0 1

1:5+4
[1] 5 6 7 8 9
1:5*4
[1]  4  8 12 16 20
-1:5/4
[1] -0.25  0.00  0.25  0.50  0.75  1.00  1.25
-2:5*4-1
[1] -9 -5 -1  3  7 11 15 19


# seq(sequence)함수 실습
seq는 일정한 값을 순서대로 나열하는 함수 
처음 인수는 초기자, 두번째 인수는 종결치, 마지막 인수는 증감의 단위 length 인수는 최종 생성할 벡터의 길이 지정.
seq(1,3, .5)
[1] 1.0 1.5 2.0 2.5 3.0
seq(0,20, length=5)
[1]  0  5 10 15 20
seq(3,1)
[1] 3 2 1
seq(5)
[1] 1 2 3 4 5


# rep 함수 
rep은 원소들을 반복하여 나열하는 삼수
처음 인수는 반복할 원소들의 값, 두번째 인수는 반복할 함수, each 인수는 반복하여 최종 생성할 벡터 길이
Times 인수는 전체 반복의 횟수.
rep(T,7)
[1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE
rep(c(1,2,3), 2)
[1] 1 2 3 1 2 3
rep(3:5, 2)
[1] 3 4 5 3 4 5
rep(seq(1,2,.5),2)
[1] 1.0 1.5 2.0 1.0 1.5 2.0
rep(seq(1,2,.5), each=2)
[1] 1.0 1.0 1.5 1.5 2.0 2.0

# 두개 문자를 각각 2번 반복하여 길이 4로
rep(c("A","a"), each = 2, len = 4)
[1] "A" "A" "a" "a"
# 각각 두번 반복하여 7문자로, Recycle Rule 

# 연습문제
#1
rep(seq(0,4,1,), each=5)
[1] 0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4
#2
rep(c(1,2,3,4,5),5)
[1] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
#3
x <- c(1:5)
x + rep( c(0:4), each = length(x))
[1] 1 2 3 4 5 2 3 4 5 6 3 4 5 6 7 4 5 6 7 8 5 6 7 8 9









