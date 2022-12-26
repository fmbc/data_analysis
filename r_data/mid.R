# 행렬
age<-matrix(c(25,33,32,37,27,38),nrow=3)
age
[,1] [,2]
[1,]   25   37
[2,]   33   27
[3,]   32   38
age<-matrix(c(25,33,32,37,27,38),ncol=3)
age
[,1] [,2] [,3]
[1,]   25   32   27
[2,]   33   37   38
age<-matrix(c(25,33,32,37,27,38),ncol=3,byrow=TRUE)
age
[,1] [,2] [,3]
[1,]   25   33   32
[2,]   37   27   38
info<-matrix(c('177cm','68kg','156cm','57kg','160cm','48kg','175cm','60kg'),ncol=2,byrow=TRUE)
info
[,1]    [,2]  
[1,] "177cm" "68kg"
[2,] "156cm" "57kg"
[3,] "160cm" "48kg"
[4,] "175cm" "60kg"
dimnames(info)<-list(c('1번','2번','3번','4번'),c('키','몸무게'))
info
키      몸무게
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"
cbind(info,c('남','남','여','여'))
키      몸무게     
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"
info
키      몸무게
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"
info<-cbind(info,c('남','남','여','여'))
info
키      몸무게     
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"
a1<-c('180cm','70kg','남')
a2<-c('165cm','55kg','여')
info<-rbind(info,a1,a2)
info
키      몸무게     
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"
a1  "180cm" "70kg" "남"
a2  "165cm" "55kg" "여"
dimnames(info)<-list(c('1번','2번','3번','4번','5번','6번'),c('키','몸무게','성별'))
info
    키     몸무게 성별
1번 "177cm" "68kg" "남"
2번 "156cm" "57kg" "남"
3번 "160cm" "48kg" "여"
4번 "175cm" "60kg" "여"
5번 "180cm" "70kg" "남"
6번 "165cm" "55kg" "여"
info<-matrix(c('177cm','68kg','156cm','57kg','160cm','48kg','175cm','60kg'),ncol=2,byrow=TRUE)
info
[,1]    [,2]  
[1,] "177cm" "68kg"
[2,] "156cm" "57kg"
[3,] "160cm" "48kg"
[4,] "175cm" "60kg"
rownames(info)<-c('1번','2번','3번','4번')
info
[,1]    [,2]  
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"
colnames(info)<-c('키','몸무게')
info
키      몸무게
1번 "177cm" "68kg"
2번 "156cm" "57kg"
3번 "160cm" "48kg"
4번 "175cm" "60kg"
#
matrix(1:9, ncol=3, byrow=FALSE)
mat <- matrix(1:9, ncol=3, byrow=FALSE,dimnames=list(
  c('r1','r2','r3'),
  c('c1','c2','c3')))
mat
c1 c2 c3
r1  1  4  7
r2  2  5  8
r3  3  6  9
#
matrix(1:12, ncol=4, byrow=TRUE)
mat <- matrix(LETTERS[1:12],nrow=4,dimnames=list(
  c('R1','R2','R3','R4'),
  c('C1','C2','C2')))
mat
   C1  C2  C2 
R1 "A" "E" "I"
R2 "B" "F" "J"
R3 "C" "G" "K"
R4 "D" "H" "L"
#행렬 mat의 속성 
attributes(mat)
$dim
[1] 4 3
$dimnames
$dimnames[[1]]
[1] "R1" "R2" "R3" "R4"
$dimnames[[2]]
[1] "C1" "C2" "C2"
# 행렬 mat의 차원 
dim(mat)
[1] 4 3
# 행렬 mat의 행/열 이름 
dimnames(mat)
[[1]]
[1] "R1" "R2" "R3" "R4"

[[2]]
[1] "C1" "C2" "C2"
# 행렬 mat의 길이 
length(mat)
[1] 12
mode(mat)
[1] "character"
#배열 array 함수
# array 함수를 이용한 3x4 행렬 
mat <- array(1:12, dim=c(3,4))
mat
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
# array 함수를 이용한 3x4
mat1<-array(1:12, dim=c(2,2,3))
mat1
, , 1

[,1] [,2]
[1,]    1    3
[2,]    2    4

, , 2

[,1] [,2]
[1,]    5    7
[2,]    6    8

, , 3

[,1] [,2]
[1,]    9   11
[2,]   10   12
array(1:2, dim=c(3,4))
[,1] [,2] [,3] [,4]
[1,]    1    2    1    2
[2,]    2    1    2    1
[3,]    1    2    1    2
array(1:12)
[1]  1  2  3  4  5  6  7  8  9 10 11 12
ary <- array(1:24, dim=c(2,3,4),
             dimnames = list(c('R1','R2'),c('C1','C2','C3'),
                             c('D1','D2','D3','D4')))
ary
, , D1

C1 C2 C3
R1  1  3  5
R2  2  4  6

, , D2

C1 C2 C3
R1  7  9 11
R2  8 10 12

, , D3

C1 C2 C3
R1 13 15 17
R2 14 16 18

, , D4

C1 C2 C3
R1 19 21 23
R2 20 22 24
# 기본형 
mode(ary)
[1] "numeric"
# 길이 
length(ary)
[1] 24
# 차원 
dim(ary)
[1] 2 3 4
# 차원의 이름 
dimnames(ary)
[[1]]
[1] "R1" "R2"
[[2]]
[1] "C1" "C2" "C3"
[[3]]
[1] "D1" "D2" "D3" "D4"
#mat의 첫 번째 요소 값을 20으로 변경하려면?
#mat1의 첫 번째 요소 값을 20으로 변경하려면? 

#리스트
x<- list(name="foo", height=70)
x
$name
[1] "foo"

$height
[1] 70
# 리스트 데이터 접근
my1<-list("홍길동","교육자","서울",1.2)
my1
[[1]]
[1] "홍길동"

[[2]]
[1] "교육자"

[[3]]
[1] "서울"

[[4]]
[1] 1.2
myf<-list(friend="홍길동",mynum=7,mya='z')
myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"
myf$mys<-"hello"
myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$mys
[1] "hello"
myf$myfood<-c('된장찌개','돈까스','자장면')
myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$mys
[1] "hello"

$myfood
[1] "된장찌개" "돈까스"   "자장면" 
myf$mynum
[1] 7
myf[1]
$friend
[1] "홍길동"
myf[[1]]
[1] "홍길동"
myf<-myf[-4]
myf
$friend
[1] "홍길동"

$mynum
[1] 7

$mya
[1] "z"

$myfood
[1] "된장찌개" "돈까스"   "자장면" 

#리스트 
lst <- list(5:10, c("A","B","C"), 
            matrix(c(T,T,F,T), ncol=2))	
lst
[[1]]
[1]  5  6  7  8  9 10

[[2]]
[1] "A" "B" "C"

[[3]]
[,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE
mode(lst)			
[1] "list"
length(lst)		
[1] 3
names(lst)								 
NULL
my.f <- list(city="SEOUL",
             parent=list(father="RYU", father.age=40, 
                         mother="JUN", mother.age=37),
             child=list(son.cnt=2, son.name=c("sangmin","sangwon"),
                        son.age=c(10,10))) 					
my.f
$city
[1] "SEOUL"

$parent
$parent$father
[1] "RYU"

$parent$father.age
[1] 40

$parent$mother
[1] "JUN"

$parent$mother.age
[1] 37


$child
$child$son.cnt
[1] 2

$child$son.name
[1] "sangmin" "sangwon"

$child$son.age
[1] 10 10
mode(my.f)		
[1] "list"
length(my.f)			
[1] 3
names(my.f)						
[1] "city"   "parent" "child" 

# 홍길동 리스트 실습 
my.c <- list(character="mycharacterlist",
            firstchar =list(name="홍길동", name.age=20, name.num=2020001, name.address="서울", name.subject=c("IT 융합","데이터 관리")))
my.c
$character
[1] "mycharacterlist"
$firstchar
$firstchar$name
[1] "홍길동"
$firstchar$name.age
[1] 20
$firstchar$name.num
[1] 2020001
$firstchar$name.address
[1] "서울"
$firstchar$name.subject
[1] "IT 융합"     "데이터 관리"

# 데이터 프레임 
df<-data.frame(irum=c("조정순","한민애","고승민"),age=c(43,23,33))
df
irum age
1 조정순  43
2 한민애  23
3 고승민  33
irum<-c("조정순","한민애","고승민")
age<-c(43,23,33)
df2<-data.frame(이름=irum,나이=age)
df2
이름 나이
1 조정순   43
2 한민애   23
3 고승민   33
#
df2$이름 
[1] "조정순" "한민애" "고승민"
df2$나이+1
[1] 44 24 34
#
carinfo<-matrix(c('11km','13km','10km','h시','p시','r시'),nrow=3)
dfr<-as.data.frame(carinfo)
names(dfr)<-c("연비","제조사")
dfr
연비 제조사
1 11km    h시
2 13km    p시
3 10km    r시
#데이터 프레임
height <- c(168,182,175,177,172)		
weight <- c(62,69,65,69,58)
sex <- c("female","male","male","male","female")
married <- c(T,F,F,T,T)
my.df <- data.frame(height,weight,sex,married,	
                    row.names=c("kim","park","choi","lee","han"))
my.df	
height weight    sex married
kim     168     62 female    TRUE
park    182     69   male   FALSE
choi    175     65   male   FALSE
lee     177     69   male    TRUE
han     172     58 female    TRUE
length(my.df)	
[1] 4
mode(my.df)	
[1] "list"
names(my.df)	
[1] "height"  "weight"  "sex"     "married"
row.names(my.df)		
[1] "kim"  "park" "choi" "lee"  "han"
dim(my.df)								
[1] 5 4
my.df$weight		
[1] 62 69 65 69 58
my.df$sex			
[1] "female" "male"   "male"   "male"   "female"

# 데이터 프레임
pinfo<-read.table("d:\\r1\\personal.txt",header=TRUE)
pinfo
pjobinfo<-read.table("d:\\r1\\pjob.txt",header=TRUE)
pjobinfo

lifeinfo<-data.frame(취미=c("목공예","패러글라이딩","등산","독서","꽂꽂이"),관심사=c("취업","아파트분양","주택대출","이직","교통인프라"))
myinfo<-cbind(pinfo,lifeinfo)
myinfo

otherinfo<-data.frame(이름=c("황성주","윤준영"),거주지역=c("강원","충북"),나이=c(42,45),성별=c("여","여"))
ttinfo<-rbind(pinfo,otherinfo)
ttinfo

merge(pinfo,pjobinfo)
merge(pinfo,pjobinfo,all=TRUE)

data<-subset(pinfo,select=-거주지역)
data1<-subset(pinfo,select=c(이름,나이))
data2<-cbind(pinfo,결혼=c(FALSE,TRUE,TRUE,FALSE,TRUE))

data2[-3,]
data2[,-5]
ncol(data2)
nrow(data2)

data2<-data2[,-5]
data2<-data2[-3,]
colnames(data2)<-c('성명','거주지','나이','성별')
names(data2)

# 5주차
#list
list1<-list(c(1,2,3),"hello")
list
[[1]]
[1] 1 2 3

[[2]]
[1] "hello"

#list 속성 확인하는 함수: str
str(list1)
List of 2
$ : num [1:3] 1 2 3
$ : chr "hello"

#Dataframe: list가 여러개 모인 것
id<-c(1,2,3,4,5,6,7,8,9,10)
sex<-c("F","M","F","M","F","M","F","F","M","F")
age<-c(50,30,40,49,28,34,72,21,22,43)
area<-c("서울","경기","제주","서울","서울","경기","인천","경기","서울","제주")
data_ex<-data.frame(id,sex,age,area)
data_ex
id sex age area
1   1   F  50 서울
2   2   M  30 경기
3   3   F  40 제주
4   4   M  49 서울
5   5   F  28 서울
6   6   M  34 경기
7   7   F  72 인천
8   8   F  21 경기
9   9   M  22 서울
10 10   F  43 제주

##R의 흐름제어(조건문과 반복문)
##조건제어문 (if, for, while)

## if(조건식) {참일때 수행할 문장}
##   		elsel{거짓일 때 수행할 문장}

조건비교연산자
## > 크다, < 작다, >=크거나 같다, <=작거나 같다, == 같다, != 같지않다
## && and, } or, ! not

# 8을 2로 나누어 나머지가 0이면 짝수라는 값을 result로 출력
a<-8
if(a%%2==0){result<-"짝수"}
result
[1] "짝수"

# a를 2로 나누어 나머지가 0이면 짝수 아니면 홀수

a<-123
if(a&&2==0){result<-"짝수"}else{result<-"홀수"}
result
[1] "홀수"


##중첩if
a<-75
if(a%%3==0 && a%%5==0){
  result<-"3의 배수이면서 5의 배수"}else if (a%%3==0){
    result<-"3의 배수"}else if(a%%5==0){
      result<-"5의 배수"}
result 
[1] "3의 배수이면서 5의 배수"

a<-121
if(a%%3==0 && a%%5==0){
  result<-"3의 배수이면서 5의 배수"}else if (a%%3==0){
    result<-"3의 배수"}else if(a%%5==0){
      result<-"5의 배수"}else{
        result<-"3의 배수, 5의 배수 어디에도 해당되지 않는다."}
result 
[1] "3의 배수, 5의 배수 어디에도 해당되지 않는다."

##ifelse문-다수의 데이터에 대한 조건을 한 번에 처리할 때 사용
## 형식
## IFELSE(조건대상, 참일 때 실행문장, 거짓일때 실행문장)

a<-c(10,13,7,8,100)
if(a%%2==0){result<-"짝수"}else{result<-"홀수"}
ifelse(a%%2==0,"짝수","홀수")
result<-c(ifelse(a%%2==0,"짝수","홀수"))


if (a%%2 == 0) {에서 다음과 같은 에러가 발생했습니다:the condition h
  ifelse(a%%2==0,"짝수","홀수")
  [1] "짝수" "홀수" "홀수" "짝수" "짝수"
  
  result<-c(ifelse(a%%2==0,"짝수","홀수"))
  df<-data.frame(값=a,결과=result)
  df
  값 결과
  1  10 짝수
  2  13 홀수
  3   7 홀수
  4   8 짝수
  5 100 짝수
  
  ##조건식안에  조건식 넣기
  a<-c(10,13,17,9,20)
  ifelse(a>mean(a),"평균초과",ifelse(a<mean(a),"평균미달","평균값"))
  [1] "평균미달" "평균미달" "평균초과" "평균미달" "평균초과"
  result<-c(ifelse(a>mean(a),"평균초과",ifelse(a<mean(a),"평균미달","평균값")))
  df2<-data.frame(a,result)
  df2
  a   result
  1 10 평균미달
  2 13 평균미달
  3 17 평균초과
  4  9 평균미달
  5 20 평균초
  
  ##함수(function)=> 특정한 작업을 독립적으로 수행하는 프로그램 코드의 집합체.
  ##프로그램의 간결성을 위해 함수를 사용. 내장함수와 사용자정의함수가 있다. 
  
  ##mean() 평균값
  ##sum() 합계
  ##min(), max() 최소값, 최대값
  ##median() 중위수
  ##sd() 표준편차
  ##var() 분산
  ##sort() 정렬
  ##cor() 상관계수
 
  
  
  a<-c(23,13,5,17,85)
  mean(a)
  [1] 28.6
  sd(a)
  [1] 32.19938
  sort(a)
  [1]  5 13 17 23 85
  rev(a)
  [1] 85 17  5 13 23
  
  a1<-c(2.34,3.1,4.3,2.98)
  b1<-c(2.4,3.09,4.3,3.1)
  cor(a1,b1)
  [1] 0.9978118
  
  height<-c(177,180,167,165,170,NA)
  weight<-c(NA,77.3,80,60,NA,64)
  df<-data.frame(신장=height,체중=weight)
  df
  신장 체중
  1  177   NA
  2  180 77.3
  3  167 80.0
  4  165 60.0
  5  170   NA
  6   NA 64.0
  
  ##결측값(NA)를 제거한 함수 계산
  ##apply()함수
  ##벡터, 행렬, 데이터프레임 등에서 행/열 단위의 필요한 계산작업을 쉽게 하는게 유용
  ##apply(대상객체, 행(1) 또는 열(2), 적용할함수)
  ##lapply()는 결과가 리스트로 반환
  ##sapply()는 결과가 벡터, 행렬 또는 배열로 반환 
  
  apply(df,2,mean)
  신장 체중 
  NA   NA 
  apply(df,2,mean,na.rm=TRUE)
  신장    체중 
  171.800  70.325 
  
  lapply(df,max,na.rm=TRUE)
  $신장
  [1] 180
  
  $체중
  [1] 80
  
  sapply(df,max,na.rm=TRUE)
  신장 체중 
  180   80 
  df3<-sapply(df,max,na.rm=TRUE)
  is.vector(df3)
  [1] TRUE
  
  d<-matrix(1:9, ncol=3)
  d
  [,1] [,2] [,3]
  [1,]    1    4    7
  [2,]    2    5    8
  [3,]    3    6    9
  apply(d, 1, sum)
  [1] 12 15 18
  apply(d, 2, sum)
  [1]  6 15 24

  head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
  1          5.1         3.5          1.4         0.2  setosa
  2          4.9         3.0          1.4         0.2  setosa
  3          4.7         3.2          1.3         0.2  setosa
  4          4.6         3.1          1.5         0.2  setosa
  5          5.0         3.6          1.4         0.2  setosa
  6          5.4         3.9          1.7         0.4  setosa
  head(iris,10)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
  1           5.1         3.5          1.4         0.2  setosa
  2           4.9         3.0          1.4         0.2  setosa
  3           4.7         3.2          1.3         0.2  setosa
  4           4.6         3.1          1.5         0.2  setosa
  5           5.0         3.6          1.4         0.2  setosa
  6           5.4         3.9          1.7         0.4  setosa
  7           4.6         3.4          1.4         0.3  setosa
  8           5.0         3.4          1.5         0.2  setosa
  9           4.4         2.9          1.4         0.2  setosa
  10          4.9         3.1          1.5         0.1  setosa
  Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
  1            5.1         3.5          1.4         0.2     setosa
  2            4.9         3.0          1.4         0.2     setosa
  3            4.7         3.2          1.3         0.2     setosa
  4            4.6         3.1          1.5         0.2     setosa
  5            5.0         3.6          1.4         0.2     setosa
  6            5.4         3.9          1.7         0.4     setosa
  7            4.6         3.4          1.4         0.3     setosa
  8            5.0         3.4          1.5         0.2     setosa
  9            4.4         2.9          1.4         0.2     setosa
  10           4.9         3.1          1.5         0.1     setosa
  11           5.4         3.7          1.5         0.2     setosa
  12           4.8         3.4          1.6         0.2     setosa
  13           4.8         3.0          1.4         0.1     setosa
  14           4.3         3.0          1.1         0.1     setosa
  15           5.8         4.0          1.2         0.2     setosa
  16           5.7         4.4          1.5         0.4     setosa
  17           5.4         3.9          1.3         0.4     setosa
  18           5.1         3.5          1.4         0.3     setosa
  19           5.7         3.8          1.7         0.3     setosa
  20           5.1         3.8          1.5         0.3     setosa
  21           5.4         3.4          1.7         0.2     setosa
  22           5.1         3.7          1.5         0.4     setosa
  23           4.6         3.6          1.0         0.2     setosa
  24           5.1         3.3          1.7         0.5     setosa
  25           4.8         3.4          1.9         0.2     setosa
  26           5.0         3.0          1.6         0.2     setosa
  27           5.0         3.4          1.6         0.4     setosa
  28           5.2         3.5          1.5         0.2     setosa
  29           5.2         3.4          1.4         0.2     setosa
  30           4.7         3.2          1.6         0.2     setosa
  31           4.8         3.1          1.6         0.2     setosa
  32           5.4         3.4          1.5         0.4     setosa
  33           5.2         4.1          1.5         0.1     setosa
  34           5.5         4.2          1.4         0.2     setosa
  35           4.9         3.1          1.5         0.2     setosa
  36           5.0         3.2          1.2         0.2     setosa
  37           5.5         3.5          1.3         0.2     setosa
  38           4.9         3.6          1.4         0.1     setosa
  39           4.4         3.0          1.3         0.2     setosa
  40           5.1         3.4          1.5         0.2     setosa
  41           5.0         3.5          1.3         0.3     setosa
  42           4.5         2.3          1.3         0.3     setosa
  43           4.4         3.2          1.3         0.2     setosa
  44           5.0         3.5          1.6         0.6     setosa
  45           5.1         3.8          1.9         0.4     setosa
  46           4.8         3.0          1.4         0.3     setosa
  47           5.1         3.8          1.6         0.2     setosa
  48           4.6         3.2          1.4         0.2     setosa
  49           5.3         3.7          1.5         0.2     setosa
  50           5.0         3.3          1.4         0.2     setosa
  51           7.0         3.2          4.7         1.4 versicolor
  52           6.4         3.2          4.5         1.5 versicolor
  53           6.9         3.1          4.9         1.5 versicolor
  54           5.5         2.3          4.0         1.3 versicolor
  55           6.5         2.8          4.6         1.5 versicolor
  56           5.7         2.8          4.5         1.3 versicolor
  57           6.3         3.3          4.7         1.6 versicolor
  58           4.9         2.4          3.3         1.0 versicolor
  59           6.6         2.9          4.6         1.3 versicolor
  60           5.2         2.7          3.9         1.4 versicolor
  61           5.0         2.0          3.5         1.0 versicolor
  62           5.9         3.0          4.2         1.5 versicolor
  63           6.0         2.2          4.0         1.0 versicolor
  64           6.1         2.9          4.7         1.4 versicolor
  65           5.6         2.9          3.6         1.3 versicolor
  66           6.7         3.1          4.4         1.4 versicolor
  67           5.6         3.0          4.5         1.5 versicolor
  68           5.8         2.7          4.1         1.0 versicolor
  69           6.2         2.2          4.5         1.5 versicolor
  70           5.6         2.5          3.9         1.1 versicolor
  71           5.9         3.2          4.8         1.8 versicolor
  72           6.1         2.8          4.0         1.3 versicolor
  73           6.3         2.5          4.9         1.5 versicolor
  74           6.1         2.8          4.7         1.2 versicolor
  75           6.4         2.9          4.3         1.3 versicolor
  76           6.6         3.0          4.4         1.4 versicolor
  77           6.8         2.8          4.8         1.4 versicolor
  78           6.7         3.0          5.0         1.7 versicolor
  79           6.0         2.9          4.5         1.5 versicolor
  80           5.7         2.6          3.5         1.0 versicolor
  81           5.5         2.4          3.8         1.1 versicolor
  82           5.5         2.4          3.7         1.0 versicolor
  83           5.8         2.7          3.9         1.2 versicolor
  84           6.0         2.7          5.1         1.6 versicolor
  85           5.4         3.0          4.5         1.5 versicolor
  86           6.0         3.4          4.5         1.6 versicolor
  87           6.7         3.1          4.7         1.5 versicolor
  88           6.3         2.3          4.4         1.3 versicolor
  89           5.6         3.0          4.1         1.3 versicolor
  90           5.5         2.5          4.0         1.3 versicolor
  91           5.5         2.6          4.4         1.2 versicolor
  92           6.1         3.0          4.6         1.4 versicolor
  93           5.8         2.6          4.0         1.2 versicolor
  94           5.0         2.3          3.3         1.0 versicolor
  95           5.6         2.7          4.2         1.3 versicolor
  96           5.7         3.0          4.2         1.2 versicolor
  97           5.7         2.9          4.2         1.3 versicolor
  98           6.2         2.9          4.3         1.3 versicolor
  99           5.1         2.5          3.0         1.1 versicolor
  100          5.7         2.8          4.1         1.3 versicolor
  101          6.3         3.3          6.0         2.5  virginica
  102          5.8         2.7          5.1         1.9  virginica
  103          7.1         3.0          5.9         2.1  virginica
  104          6.3         2.9          5.6         1.8  virginica
  105          6.5         3.0          5.8         2.2  virginica
  106          7.6         3.0          6.6         2.1  virginica
  107          4.9         2.5          4.5         1.7  virginica
  108          7.3         2.9          6.3         1.8  virginica
  109          6.7         2.5          5.8         1.8  virginica
  110          7.2         3.6          6.1         2.5  virginica
  111          6.5         3.2          5.1         2.0  virginica
  112          6.4         2.7          5.3         1.9  virginica
  113          6.8         3.0          5.5         2.1  virginica
  114          5.7         2.5          5.0         2.0  virginica
  115          5.8         2.8          5.1         2.4  virginica
  116          6.4         3.2          5.3         2.3  virginica
  117          6.5         3.0          5.5         1.8  virginica
  118          7.7         3.8          6.7         2.2  virginica
  119          7.7         2.6          6.9         2.3  virginica
  120          6.0         2.2          5.0         1.5  virginica
  121          6.9         3.2          5.7         2.3  virginica
  122          5.6         2.8          4.9         2.0  virginica
  123          7.7         2.8          6.7         2.0  virginica
  124          6.3         2.7          4.9         1.8  virginica
  125          6.7         3.3          5.7         2.1  virginica
  126          7.2         3.2          6.0         1.8  virginica
  127          6.2         2.8          4.8         1.8  virginica
  128          6.1         3.0          4.9         1.8  virginica
  129          6.4         2.8          5.6         2.1  virginica
  130          7.2         3.0          5.8         1.6  virginica
  131          7.4         2.8          6.1         1.9  virginica
  132          7.9         3.8          6.4         2.0  virginica
  133          6.4         2.8          5.6         2.2  virginica
  134          6.3         2.8          5.1         1.5  virginica
  135          6.1         2.6          5.6         1.4  virginica
  136          7.7         3.0          6.1         2.3  virginica
  137          6.3         3.4          5.6         2.4  virginica
  138          6.4         3.1          5.5         1.8  virginica
  139          6.0         3.0          4.8         1.8  virginica
  140          6.9         3.1          5.4         2.1  virginica
  141          6.7         3.1          5.6         2.4  virginica
  142          6.9         3.1          5.1         2.3  virginica
  143          5.8         2.7          5.1         1.9  virginica
  144          6.8         3.2          5.9         2.3  virginica
  145          6.7         3.3          5.7         2.5  virginica
  146          6.7         3.0          5.2         2.3  virginica
  147          6.3         2.5          5.0         1.9  virginica
  148          6.5         3.0          5.2         2.0  virginica
  149          6.2         3.4          5.4         2.3  virginica
  150          5.9         3.0          5.1         1.8  virginica
  View(iris)
  View(cars)
  ##데이터를 파악할 때 사용하는 함수들
  ##head() 데이터 앞부분 출력
  ##tail() 데이터 뒷부분 출력
  ##View() 뷰어창에서 데이터확인
  ##dim() 데이터 차원출력
  ##str() 데이터 속성출력
  ##summary() 요약 통계량 출력
  
  head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
  1          5.1         3.5          1.4         0.2  setosa
  2          4.9         3.0          1.4         0.2  setosa
  3          4.7         3.2          1.3         0.2  setosa
  4          4.6         3.1          1.5         0.2  setosa
  5          5.0         3.6          1.4         0.2  setosa
  6          5.4         3.9          1.7         0.4  setosa
  head(iris,10)
  1           5.1         3.5          1.4         0.2  setosa
  2           4.9         3.0          1.4         0.2  setosa
  3           4.7         3.2          1.3         0.2  setosa
  4           4.6         3.1          1.5         0.2  setosa
  5           5.0         3.6          1.4         0.2  setosa
  6           5.4         3.9          1.7         0.4  setosa
  7           4.6         3.4          1.4         0.3  setosa
  8           5.0         3.4          1.5         0.2  setosa
  9           4.4         2.9          1.4         0.2  setosa
  10          4.9         3.1          1.5         0.1  setosa
  tail(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
  145          6.7         3.3          5.7         2.5 virginica
  146          6.7         3.0          5.2         2.3 virginica
  147          6.3         2.5          5.0         1.9 virginica
  148          6.5         3.0          5.2         2.0 virginica
  149          6.2         3.4          5.4         2.3 virginica
  150          5.9         3.0          5.1         1.8 virginica
  tail(iris,10)
  Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
  141          6.7         3.1          5.6         2.4 virginica
  142          6.9         3.1          5.1         2.3 virginica
  143          5.8         2.7          5.1         1.9 virginica
  144          6.8         3.2          5.9         2.3 virginica
  145          6.7         3.3          5.7         2.5 virginica
  146          6.7         3.0          5.2         2.3 virginica
  147          6.3         2.5          5.0         1.9 virginica
  148          6.5         3.0          5.2         2.0 virginica
  149          6.2         3.4          5.4         2.3 virginica
  150          5.9         3.0          5.1         1.8 virginica
  Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
  141          6.7         3.1          5.6         2.4 virginica
  142          6.9         3.1          5.1         2.3 virginica
  143          5.8         2.7          5.1         1.9 virginica
  144          6.8         3.2          5.9         2.3 virginica
  145          6.7         3.3          5.7         2.5 virginica
  146          6.7         3.0          5.2         2.3 virginica
  147          6.3         2.5          5.0         1.9 virginica
  148          6.5         3.0          5.2         2.0 virginica
  149          6.2         3.4          5.4         2.3 virginica
  150          5.9         3.0          5.1         1.8 virginica
  View(iris)
  화면 출력
  dim(iris)
  [1] 150   5
  str(iris)
  'data.frame':	150 obs. of  5 variables:
    $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
  summary(iris)
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
  Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
  
  apply(iris[, 1:4],2,sum)
  Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
  876.5        458.6        563.7        179.9 
  
  colSums(iris[,1:4])##행 또는 열의 합 또는 평균은 자주 사용
  Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
  876.5        458.6        563.7        179.9 
  
  colMeans(iris[, 1:4])
  Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
  5.843333     3.057333     3.758000     1.199333 
  
  lapply(iris[, 1:4], mean)
  $Sepal.Length
  [1] 5.843333
  
  $Sepal.Width
  [1] 3.057333
  
  $Petal.Length
  [1] 3.758
  
  $Petal.Width
  [1] 1.199333
  
  colMeans(iris[, 1:4])
  Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
  5.843333     3.057333     3.758000     1.199333 
  
  dflist<-read.table("C:\\r1\\passlist.txt",head=TRUE,fileEncoding = "euc-kr")
  dflist
  나이 성별 평점
  1    33   남 4.30
  2    28   남 4.20
  3    35   여 4.10
  4    29   여 3.70
  5    36   남 4.50
  6    32   여 4.40
  7    30   여 3.80
  8    36   남 3.90
  9    28   여 4.20
  10   35   여 4.50
  11   31   여 4.60
  12   27   남 4.00
  13   26   여 4.20
  14   33   여 4.30
  15   34   남 4.50
  16   33   여 4.40
  17   26   여 4.33
  18   25   남 3.87
  19   35   여 4.00
  20   32   여 3.60
  
  ##tapply(벡터,인덱스,사용할함수) 데이터를 그룹으로 묶은 뒤 함수를 적용
  
  tapply(dflist$평점,dflist$성별,mean)
  남       여 
  4.181429 4.163846 
  
  tapply(dflist$나이,dflist$성별,mean)
  남       여 
  31.28571 31.15385 
  
  ##결과를 리스트 형태로 구하려면
  a<-tapply(dflist$나이,dflist$성별,mean,simplify=FALSE)
  a
  $남
  [1] 31.28571
  
  $여
  [1] 31.15385

  #readxl패키지 사용
  setwd("c:\\r1")
  install.packages("readxl")
  library(readxl)
  df_sb<-read_excel("subway.xlsx")
  df_sb
  # A tibble: 119 × 7
  `구 분` 역명         `1월`   `2월`   `3월`     총계 일평균
  <chr>   <chr>        <dbl>   <dbl>   <dbl>    <dbl>  <dbl>
    1 1호선   서울역(1)  4126245 3661950 4145729 11933924 132599
  2 1호선   시청(1)    1499505 1229076 1493112  4221693  46908
  3 1호선   종각       3039562 2477861 2924326  8441749  93797
  4 1호선   종로3가(1) 2435003 1999718 2290837  6725558  74728
  5 1호선   종로5가    1758749 1488469 1791087  5038305  55981
  6 1호선   동대문(1)  1032643  942226 1141235  3116104  34623
  7 1호선   신설동(1)  1016609  861509 1114369  2992487  33250
  8 1호선   제기동     1273577 1164476 1319059  3757112  41746
  9 1호선   청량리     1898670 1683252 1973381  5555303  61726
  10 1호선   동묘앞      591418  549158  686803  1827379  20304
  # … with 109 more rows
  # ℹ Use `print(n = ...)` to see more rows
  
  
  names(df_sb)<-c("구분","역이름","1월","2월","3월","사용인원","일평균인원")
  View(df_sb)
  
  df_exam<-read_xlsx("excel_exam.xlsx")
  df_exam
  # A tibble: 20 × 5
  id class  math english science
  <dbl> <dbl> <dbl>   <dbl>   <dbl>
    1     1     1    50      98      50
  2     2     1    60      97      60
  3     3     1    45      86      78
  4     4     1    30      98      58
  5     5     2    25      80      65
  6     6     2    50      89      98
  7     7     2    80      90      45
  8     8     2    90      78      25
  9     9     3    20      98      15
  10    10     3    50      98      45
  11    11     3    65      65      65
  12    12     3    45      85      32
  13    13     4    46      98      65
  14    14     4    48      87      12
  15    15     4    75      56      78
  16    16     4    58      98      65
  17    17     5    65      68      98
  18    18     5    80      78      90
  19    19     5    89      68      87
  20    20     5    78      83      58
  View(df_exam)
  
  df_exam2<-read_xlsx("excel_exam.xlsx",sheet=3)
  df_exam2
  # A tibble: 20 × 3
  나이 성별   평점
  <dbl> <chr> <dbl>
    1    33 남     4.3 
  2    28 남     4.2 
  3    35 여     4.1 
  4    29 여     3.7 
  5    36 남     4.5 
  6    32 여     4.4 
  7    30 여     3.8 
  8    36 남     3.9 
  9    28 여     4.2 
  10    35 여     4.5 
  11    31 여     4.6 
  12    27 남     4   
  13    26 여     4.2 
  14    33 여     4.3 
  15    34 남     4.5 
  16    33 여     4.4 
  17    26 여     4.33
  18    25 남     3.87
  19    35 여     4   
  20    32 여     3.6 
  
  
  ##read.csv함수
  #csv 형식 파일을 읽어들임
  #형식 read.csv('파일명')
  df_exam3<-read.csv('csv_exam.csv')
  df_exam3
  id class math english science
  1   1     1   50      98      50
  2   2     1   60      97      60
  3   3     1   45      86      78
  4   4     1   30      98      58
  5   5     2   25      80      65
  6   6     2   50      89      98
  7   7     2   80      90      45
  8   8     2   90      78      25
  9   9     3   20      98      15
  10 10     3   50      98      45
  11 11     3   65      65      65
  12 12     3   45      85      32
  13 13     4   46      98      65
  14 14     4   48      87      12
  15 15     4   75      56      78
  16 16     4   58      98      65
  17 17     5   65      68      98
  18 18     5   80      78      90
  19 19     5   89      68      87
  20 20     5   78      83      58
  View(df_exam3)
  
  data<-read.csv('seoulpopulation.csv',header=TRUE,fileEncoding = "euc-kr")
  data
  자치구   남자   여자
  1    종로구  80531  83291
  2      중구  66755  67574
  3    용산구 121027 126882
  4    성동구 151459 153606
  5    광진구 183436 191744
  6  동대문구 185827 187997
  7    중랑구 208393 210227
  8    성북구 229183 240377
  9    강북구 164337 170089
  10   도봉구 173804 179437
  11   노원구 281538 296683
  12   은평구 244964 257614
  13 서대문구 156130 166975
  14   마포구 190957 207394
  15   양천구 242074 246936
  16   강서구 291216 304475
  17   구로구 228201 226403
  18   금천구 131346 124821
  19 영등포구 210388 207423
  20   동작구 202165 210609
  21   관악구 266773 262258
  22   서초구 217036 234222
  23   강남구 279209 302551
  24   송파구 325950 341530
  25   강동구 230851 232470
  data$자치구
  [1] "종로구"   "중구"     "용산구"   "성동구"   "광진구"   "동대문구" "중랑구"   "성북구"   "강북구"   "도봉구"  
  [11] "노원구"   "은평구"   "서대문구" "마포구"   "양천구"   "강서구"   "구로구"   "금천구"   "영등포구" "동작구"  
  [21] "관악구"   "서초구"   "강남구"   "송파구"   "강동구"  
  
  data<-read.csv('seoulpopulation.csv',header=TRUE,stringsAsFactors=F,fileEncoding = "euc-kr")
  data$자치구
  
  #데이터프레임을 csv 파일로 저장하기
  df_midterm<-data.frame(english=c(90,80,60,70),
                         math=c(50,60,100,20),
                         class=c(1,1,2,2))
  df_midterm
  english math class
  1      90   50     1
  2      80   60     1
  3      60  100     2
  4      70   20     2
  
  write.csv(df_midterm, file="df_midterm.csv")
  파일 만들어짐




  




