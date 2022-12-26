R기반 데이터 분석 입문 11주 => 데이터 가공

iris
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
#head() 데이터 앞부분 출력
> head(iris)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
> head(iris, 10)
#tail() 데이터 뒷부분 출력
> tail(iris,10)
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
#View() 뷰어창에서 데이터 확인
> View(iris)
#dim() 데이터 차원 출력
> dim(iris)
[1] 150   5 # 150개 행, 50개의 열
#str() 데이터 속성 출력
> str(iris)
'data.frame':   150 obs. of  5 variables:
$ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
#summary() 요약 통계량 출력
> summary(iris)
# Min: 평균
#  3rd: 75%  구간의 점수
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500              
#ls() 변수 항목을 리스트로 출력
> ls(iris)
[1] "Petal.Length" "Petal.Width"  "Sepal.Length" "Sepal.Width"  "Species"   #알파벳순


# 실습1 (mpg)
#실제 데이터를 불러와 데이터 특성을 파악해보자.
#ggplot2 패키지에 내장된 mpg 데이터 이용
> install.packages("ggplot2")
> library(ggplot2)
> mpg
# A tibble: 234 × 11
   manufacturer model      displ  year   cyl trans      drv     cty   hwy fl    class  
   <chr>        <chr>      <dbl> <int> <int> <chr>      <chr> <int> <int> <chr> <chr>  
 1 audi         a4           1.8  1999     4 auto(l5)   f        18    29 p     compact
 2 audi         a4           1.8  1999     4 manual(m5) f        21    29 p     compact
 3 audi         a4           2    2008     4 manual(m6) f        20    31 p     compact
 4 audi         a4           2    2008     4 auto(av)   f        21    30 p     compact
 5 audi         a4           2.8  1999     6 auto(l5)   f        16    26 p     compact
 6 audi         a4           2.8  1999     6 manual(m5) f        18    26 p     compact
# ggplot2의 mpg 데이터를 데이터프레임 형태로 불러오기
> mpg<-as.data.frame(ggplot2::mpg)
 manufacturer               model displ year cyl      trans drv cty hwy fl   class
1          audi                  a4   1.8 1999   4   auto(l5)   f  18  29  p compact
2          audi                  a4   1.8 1999   4 manual(m5)   f  21  29  p compact
3          audi                  a4   2.0 2008   4 manual(m6)   f  20  31  p compact
4          audi                  a4   2.0 2008   4   auto(av)   f  21  30  p compact
5          audi                  a4   2.8 1999   6   auto(l5)   f  16  26  p compact
6          audi                  a4   2.8 1999   6 manual(m5)   f  18  26  p compact
7          audi                  a4   3.1 2008   6   auto(av)   f  18  27  p compact
8          audi          a4 quattro   1.8 1999   4 manual(m5)   4  18  26  p compact
9          audi          a4 quattro   1.8 1999   4   auto(l5)   4  16  25  p compact
10         audi          a4 quattro   2.0 2008   4 manual(m6)   4  20  28  p compact

# 실습2 : 데이터 다루기
# 데이터에 변수를 조합하거나 함수를 적용해 새 변수를 만들어 분석할 수 있다. 
# 파생변수 : 기존의 변수를 변형해 만든 변수
# 2개의 변수로 구성된 데이터 프레임을 생성
> df<-data.frame(var1=c(4,3,8),var2=c(2,6,1))
> df
    var1 var2
1    4    2
2    3    6
3    8    1
# var1과 var2 변수의 값을 더한 var_sum 파생변수를 만들어 df에 추가한다.
> df$var_sum<-df$var1+df$var2  #데이터 프레임명에 $를 붙여 새로운 변수명을 입력
> df
    var1 var2 var_sum
1    4    2       6
2    3    6       9
3    8    1       9
#var_mean 파생변수를 만들어보자.
df$var_mean<-(df$var1+df$var2)/2
df
    var1 var2 var_sum var_mean
1    4    2       6      3.0
2    3    6       9      4.5
3    8    1       9      4.5


# 실습 2 (mpg2) : 통합연비 변수 생성
#ggplot2 패키지에 내장된 mpg 데이터 이용, 데이터가 234행, 11열로 구성됨. 하나의 행이 자동차 한종에 대한 정보임.
> mpg
# ggplot의 mpg 데이터를 데이터프레임 형태로 불러오기
> mpg2<-as.data.frame(ggplot2::mpg) 
> mpg2
        manufacturer              model displ year cyl    trans    drv cty hwy fl   class
1           audi                     a4   1.8 1999   4   auto(l5)   f  18  29  p    compact
2           audi                     a4   1.8 1999   4 manual(m5)   f  21  29  p    compact
3           audi                     a4   2.0 2008   4 manual(m6)   f  20  31  p    compact
4           audi                     a4   2.0 2008   4   auto(av)   f  21  30  p    compact
5           audi                     a4   2.8 1999   6   auto(l5)   f  16  26  p    compact
6           audi                     a4   2.8 1999   6 manual(m5)   f  18  26  p    compact
7           audi                     a4   3.1 2008   6   auto(av)   f  18  27  p    compact
8           audi             a4 quattro   1.8 1999   4 manual(m5)   4  18  26  p    compact
9           audi             a4 quattro   1.8 1999   4   auto(l5)   4  16  25  p    compact
10          audi             a4 quattro   2.0 2008   4 manual(m6)   4  20  28  p    compact
# displ(배기량), cty(도시연비), hwy(고속도로연지), fl(연료)
# 도시연비(cty)와 고속도로 연비(hwy)를 더하고 2로 나눠 통합연비 변수 생성
> mpg2$total<-(mpg2$cty+mpg2$hwy)/2 
> head(mpg2)
   manufacturer model displ year cyl      trans drv cty hwy fl   class total
1         audi    a4   1.8 1999   4   auto(l5)   f  18  29  p compact  23.5
2         audi    a4   1.8 1999   4 manual(m5)   f  21  29  p compact  25.0
3         audi    a4   2.0 2008   4 manual(m6)   f  20  31  p compact  25.5
4         audi    a4   2.0 2008   4   auto(av)   f  21  30  p compact  25.5
5         audi    a4   2.8 1999   6   auto(l5)   f  16  26  p compact  21.0
6         audi    a4   2.8 1999   6 manual(m5)   f  18  26  p compact  22.0
# 통합연비 변수의 평균
> mean(mpg2$total) 
[1] 20.14957
#함수를 활용해 파생변수 만들기
#mpg 데이터에서 전체 자동차 중에서 연비 기준을 충족해 '고연비 합격 판정'을 받은 자동차가 몇대나 되는지..
# 1. 기준값 정하기 
> summary(mpg2$total)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
10.50   15.50   20.50   20.15   23.50   39.50 
=> total 연비의 평균과 중앙값이 약 20이다.
#total 연비가 20~25 사이에 해당하는 자동차 모델이 가장 많다.
#대부분 25이하이고 25를 넘기는 자동차는 많지 않다.
#히스토그램 생성, 히스토그램은 값의 빈도를 막대 길이로 표현한 그래프.
> hist(mpg2$total) 
2. 
#요약 통계량과 히스토그램을 종합해 total 연비 변수가 20을 넘기면 합격, 못하면 불합격으로 분류해보자.
#합격 판정 변수 만들기
> ifelse(mpg2$total>=20,"pass","fail") 
> mpg2$test<-ifelse(mpg2$total>=20,"pass","fail")
> head(mpg2,20)
  manufacturer              model displ year cyl      trans drv cty hwy fl   class total test
1          audi                 a4   1.8 1999   4   auto(l5)   f  18  29  p compact  23.5 pass
2          audi                 a4   1.8 1999   4 manual(m5)   f  21  29  p compact  25.0 pass
3          audi                 a4   2.0 2008   4 manual(m6)   f  20  31  p compact  25.5 pass
4          audi                 a4   2.0 2008   4   auto(av)   f  21  30  p compact  25.5 pass
5          audi                 a4   2.8 1999   6   auto(l5)   f  16  26  p compact  21.0 pass
6          audi                 a4   2.8 1999   6 manual(m5)   f  18  26  p compact  22.0 pass
7          audi                 a4   3.1 2008   6   auto(av)   f  18  27  p compact  22.5 pass
8          audi         a4 quattro   1.8 1999   4 manual(m5)   4  18  26  p compact  22.0 pass
9          audi         a4 quattro   1.8 1999   4   auto(l5)   4  16  25  p compact  20.5 pass
10         audi         a4 quattro   2.0 2008   4 manual(m6)   4  20  28  p compact  24.0 pass
11         audi         a4 quattro   2.0 2008   4   auto(s6)   4  19  27  p compact  23.0 pass
12         audi         a4 quattro   2.8 1999   6   auto(l5)   4  15  25  p compact  20.0 pass
13         audi         a4 quattro   2.8 1999   6 manual(m5)   4  17  25  p compact  21.0 pass
14         audi         a4 quattro   3.1 2008   6   auto(s6)   4  17  25  p compact  21.0 pass
15         audi         a4 quattro   3.1 2008   6 manual(m6)   4  15  25  p compact  20.0 pass
16         audi         a6 quattro   2.8 1999   6   auto(l5)   4  15  24  p midsize  19.5 fail
17         audi         a6 quattro   3.1 2008   6   auto(s6)   4  17  25  p midsize  21.0 pass
18         audi         a6 quattro   4.2 2008   8   auto(s6)   4  16  23  p midsize  19.5 fail
19    chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  14  20  r     suv  17.0 fail
20    chevrolet c1500 suburban 2wd   5.3 2008   8   auto(l4)   r  11  15  e     suv  13.0 fail
# 연비 합격 빈도표 생성, 빈도표는 변수의 각 값들이 몇 개씩 존재하는지 개수를 나타낸 표.
> table(mpg2$test) 
fail pass 
106  128 
> qplot(mpg2$test) # 연비 합격 빈도 막대 그래프 생성
# 함수를 활용해 파생변수 만들기2
# 3. A,B,C 세 종류의 연비 등급으로 분류하는 변수 만들기
# total이 30 이상이면 A, 20~29는 B, 20미만이면 C등급으로 분류
> mpg2$grade<-ifelse(mpg2$total>=30,"A",ifelse(mpg2$total>=20,"B","C"))
> head(mpg2,20)
> table(mpg2$grade) #등급 빈도표 생성
A   B   C 
10 118 106 
> qplot(mpg2$grade) #등급 빈도 막대 그래프 생성
# 4. A,B,C,D 네 종류의 연비 등급으로 분류는 mpg2$grade2 변수를 만들어 보세요.
#total이 30 이상이면 A, 25 이상이면 B, 20이상이면 C등급으로, 나머지는 D등급으로 분류
> mpg2$grade2<-ifelse(mpg2$total>=30,"A",ifelse(mpg2$total>=25,"B", ifelse(mpg2$total>=20,"C","D")))
> table(mpg2$grade2)
A   B   C   D 
10  33  85 106 


# 데이터 전처리 : 주어진 데이터를 분석에 적합하게 데이터를 가공하는 작업 
# 데이터 가공하기(데이터를 추출하거나 여러 데이터 합치기 등)
# 조건에 맞는 데이터만 추출
# 실습 3: 데이터 전처리
##dplyr은 데이터 전처리에 가장 많이 사용되는 패키지이다.
#filter() 행추출
#select() 열(변수)추출
#arrange() 정렬
#mutate() 변수추가
#summarise() 통계치 산출
#group_by() 집단별로 나누기
#left_join() 데이터 합치기(열)
#bind_rows() 데이터 합치기(행)

> install.packages("dplyr")
> library(dplyr)
> setwd("C://r1")
> exam<-read.csv("csv_exam.csv")
> exam
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
# %>% 파이프 연산자
# 1. 1반 학생들의 데이터만 추출해보자.
> exam %>% filter(class==1)

# 2. 2반 학생들의 데이터만 추출해보자.
> exam %>% filter(class==2)

# 3. 1반이 아닌 경우 추출
> exam %>% filter(class!=1)

# 4. 3반이 아닌 경우만 추출해보자.
> exam %>% filter(class!=3)

# 5. 수학점수가 50점을 초과한 경우
> exam %>% filter(math>50) 

# 6. 영어점수가 80점 이상인 경우를 추출해보자.
> exam %>% filter(english>=80)

# 7. 1반이면서 수학 점수가 50점 이상인 경우
> exam %>% filter(class==1 & math>=50)

# 2반이면서 영어 점수가 80점 이상인 경우를 추출해보자.
> exam %>% filter(class==2 & english>=80)

# 수학점수가 90점 이상이거나 영어점수가 90점 이상인 경우
> exam %>% filter(math>=90 | english>=90)

# 영어점수가 90점 미만이거나 과학점수가 50점 미만인 경우를 추출해보자.
> exam %>% filter(english<=90 | science<=50)

# 1,3,5반에 해당하면 추출
> exam %>% filter(class==1 | class==3 | class==5)
> exam %>% filter(class %in% c(1,3,5))

#추출한 행으로 데이터 만들기
# 1반의 수학점수 평균
> class1<-exam %>% filter(class==1)
> mean(class1$math)
[1] 46.25

# 2반의 수학점수 평균
> class2<-exam %>% filter(class==3)
> mean(class2$math)
[1] 45

# test가 fail인 통합연비의 평균 
> a1 <- mpg2 %>% filter(test=="fail")
> mean(a1$total)
[1] 15.63679

# test가 passd인 통합연비의 평균 
> b1 <- mpg2 %>% filter(test=="pass")
> mean(b1$total)
[1] 23.88672

#suv인 차의 평균 연비
> c1 <- mpg2 %>% filter(class=="suv")
> mean(c1$cty)
[1] 13.5

# math 변수 추출하기
> exam %>% select(math)

#english 변수를 추출해보자.
> exam %>% select(english)

#여러 변수 추출하기
# class math english 변수 추출하기
> exam %>% select(class,math,english)

# math 변수 제외하고 나머지 변수 추출하기
> exam %>% select(-math)
# math english 변수 제외하고 나머지 변수 다 추출하기
> exam %>% select(-math,-english)

#filter()와 select() 조합하기
# class가 1인 행만 추출한 다음 english 추출
> exam %>% filter(class==1) %>% select(english)

# id, math 만 추출하면서 맨 위의 데이터만 추출 
> exam %>% select(id, math) %>% head

# id, math 만 추출하면서 맨 위의 10개의 데이터만 추출 
> exam %>% select(id, math) %>% head(10)

# 오름차순으로 math 정렬하기
> exam %>% arrange(math)
   id class math english science
1   9     3   20      98      15
2   5     2   25      80      65
3   4     1   30      98      58
4   3     1   45      86      78
5  12     3   45      85      32
6  13     4   46      98      65

#내림차순 math 정렬
> exam %>% arrange(desc(math)) 
id class math english science
1   8     2   90      78      25
2  19     5   89      68      87
3   7     2   80      90      45
4  18     5   80      78      90
5  20     5   78      83      58

# 오름차순으로 class, math 정렬하기
> exam %>% arrange(class, math)

# 내림차순으로 math 정렬하고, 맨 앞의 데이터를 5개만 보여주기
exam %>% arrange(desc(math)) %>% head(5) 

# 실습 4 : suv이면서 내림차순으로 totla 정렬하고, 맨 앞 데이터 10개만 보여주는 d1 
d1 <- mpg2 %>%
  filter(class=="suv") %>%
  arrange(desc(total)) %>%
  head(10)
d1
   manufacturer              model displ year cyl      trans drv cty hwy fl class total test
1        subaru       forester awd   2.5 2008   4 manual(m5)   4  20  27  r   suv  23.5 pass
2        subaru       forester awd   2.5 2008   4   auto(l4)   4  20  26  r   suv  23.0 pass
3        subaru       forester awd   2.5 2008   4 manual(m5)   4  19  25  p   suv  22.0 pass
4        subaru       forester awd   2.5 1999   4 manual(m5)   4  18  25  r   suv  21.5 pass
5        subaru       forester awd   2.5 1999   4   auto(l4)   4  18  24  r   suv  21.0 pass
6        subaru       forester awd   2.5 2008   4   auto(l4)   4  18  23  p   suv  20.5 pass
7          jeep grand cherokee 4wd   3.0 2008   6   auto(l5)   4  17  22  d   suv  19.5 fail
8        toyota        4runner 4wd   2.7 1999   4   auto(l4)   4  16  20  r   suv  18.0 fail
9        toyota        4runner 4wd   4.0 2008   6   auto(l5)   4  16  20  r   suv  18.0 fail
10         jeep grand cherokee 4wd   4.0 1999   6   auto(l4)   4  15  20  r   suv  17.5 fail
> mean(d1$hwy)
[1] 23.2

#파생변수 추가하기
#mutate함수 : 데이터에 열을 추가할 때 사용한다.
#mutate(데이터, 추가할 열 이름=조건 1, ...)
# 총합변수 추가 후 일부분 추출
> exam %>% mutate(total = math + english + science) %>% head    
> mutate(exam, total = math + english + science)   
  id class math english science total
1  1     1   50      98      50   198
2  2     1   60      97      60   217
3  3     1   45      86      78   209
4  4     1   30      98      58   186
5  5     2   25      80      65   170
6  6     2   50      89      98   237
> exam 
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

#mutate(파생변수)가 아닌 실제 할당
exam$total <- exam$math + exam$english + exam$science
exam
id class math english science total
1  1     1   50      98      50   198
2  2     1   60      97      60   217
3  3     1   45      86      78   209
4  4     1   30      98      58   186
5  5     2   25      80      65   170
6  6     2   50      89      98   237

#여러 파생변수 한번에 추가하기, 총합변수(total), 총평균(mean) 변수 추가
> exam %>% mutate(total=math+english+science, mean=(math+english+science)/3) %>% head
> mutate(exam, total=math+english+science, mean=(math+english+science)/3)

# mutate()에 ifelse() 적용하기
# 과학 60점 이상이면 pass, 아니면 fail
> exam %>% mutate(test=ifelse(science>=60,"pass","fail")) %>% head
> mutate(exam, test=ifelse(science>=60,"pass","fail"))

# 총합 변수 추가 후 총합 변수 기준 정렬
# 총합 변수 추가 후 내림차순으로 변수 기준 정렬 
> exam %>% mutate(total = math + english + science) %>% arrange(desc(total)) %>% head


#summarise함수로 데이터 요약
#summarise함수 : 통계 함수와 함께 사용하며 데이터를 요약할 때 사용한다.
#대표적 통계 함수에는 평균을 구하는 mean(), 중앙값 median(), 최소값 min(), 최대값 max(), 합계 sum()이 있다. n()개수
#summarise(데이터, 요약 결과 저장 열=통계함수)

# math의 평균 요약
> exam %>% summarise(mean(math))
  mean(math)
1      57.45

#group_by함수로 그룹별 요약
#단독으로 쓰이기보다는 다른 함수와 연계해서 사용된다.
#집단별로 요약하기, class별로 분리 후 math 평균 산출
> exam %>% group_by(class) %>% summarise(mean_math=mean(math)) 
  class mean_math
  <int>     <dbl>
1     1      46.2
2     2      61.2
3     3      45  
4     4      56.8
5     5      78

#여러 요약 통계량 한 번에 산출하기
# 실습 : 집단별로 요약하기, class별로 분리 후, math의 평균, 합계, 중앙값, 학생수, 빈도 산출. 
> exam %>% 
  group_by(class) %>%     #class별로 분리
  summarise(mean_math=mean(math),sum_math=sum(math),median_math=median(math),n=n()) #math 평균,합계,중앙값,학생수
#n() 빈도를 구하는 기능
  class mean_math sum_math median_math     n
1     1      46.2      185        47.5     4
2     2      61.2      245        65       4
3     3      45        180        47.5     4
4     4      56.8      227        53       4
5     5      78        312        79       4

#각 집단별로 다시 집단 나누기(mpg 데이터를 이용해 구해보자)
# 실습 : mpg에서 회사별, 구동 방식별로 분리, cty 평균(mean_cty) 산출하고 데이터의 앞부분 10개만. 
> mpg %>%
  group_by(manufacturer,drv) %>%    
  summarise(mean_cty=mean(cty)) %>% head(10) 

#dplyr조합하기
#회사별로 "suv"자동차의 도시 및 고속도로 통합 연비 평균을 구해 내림차순으로 정렬하고, 1~5위까지 출력하기
> mpg %>%
  group_by(manufacturer) %>%
  filter(class=="suv") %>%
  mutate(mean = (cty+hwy)/2) %>%
  arrange(desc(mean)) %>%
  head(5)

# math를 내림차순으로 정렬하고, 5위까지 출력하기
> exam %>% arrange(desc(math)) %>% head(5) 


# 실습 mtcars  1974년 자동차 트렌드에서 발췌한 내용으로 연비와 관련된 변수 11 개와 자동차 모델 32종에 대한 정보를 가지고 있습니다.
# 1. 데이터의 기초분석을 수행해보세요. View() 창, str() 속성, dim(), ls() 등
> View(mtcars)
> str(mtcars)
> dim(mtcars)
> ls(mtcars)

# 2. 데이터 분석을 위해 dplyr 패키지를 설치하고 로드해보세요.
> install.packages("dplyr")
> library(dplyr)

# 3. mtcars 데이터에서 cyl(실린더 개수) 값이 4인 자동차만 추출해보세요.
> mtcars %>% filter(cyl==4)

# 4. mtcars 데이터에서 cyl 값이 6보다 크거나 같고(이상), mpg(연비) 값이 20보다 큰(초과) 행만 추출해보세요.
> mtcars %>% filter(cyl>=6 & mpg >20)

# 5. mtcars 데이터에서 wt(차량의 무게)를 기준을 오름차순 정렬한 후 상위 데이터만 출력해보 세요.
> mtcars %>% 
    arrange(wt) %>% head()

# 6. mtcars 데이터에서 mpg(연비)로 오름차순 정렬 후 wt로 내림차순 정렬하고 상위 데이터 만 출력해보세요.
> mtcars %>% 
    arrange(mpg) %>% 
    arrange(desc(wt)) %>% head()

# 7. mtcars 데이터에서 am(변속기 구분)과 gear(기어 개수) 열의 상위 데이터만 추출해보세요.
> mtcars %>% select(am, gear) %>% head()

# 8. mtcars 데이터에 year라는 생산 연도 열을 추가하고, 일괄적으로 “1974”를 추가해 보세요.
> mtcars %>% mutate(year = "1974")

# 9. mtcars 데이터에 summarize 함수로 cyl(실린더 개수)의 평균, 최소값, 최대값을 확인해보 세요.
> mtcars %>% summarize(mean_cyl=mean(cyl), min_cyl=min(cyl), max_cyl=max(cyl))

# 10. mtcars 데이터에 동일한 cyl(실린더 개수)를 가진 차가 몇 대 있는지 확인하기 위해 group_by 함수를 이용해 cyl별로 묶고 summarize 함수의 개수값 n() 을 이용해 확인해보세 요.
> mtcars %>% 
    group_by(cyl) %>%
    summarize(n=n


#데이터합치기
#중간고사 데이터 생성
> test1<-data.frame(id=c(1,2,3,4,5),midterm=c(60,80,70,90,85))
> test1
  id midterm
1  1      60
2  2      80
3  3      70
4  4      90
5  5      85
#기말고사 데이터 생성
> test2<-data.frame(id=c(1,2,3,4,5),final=c(70,83,65,95,80))
> test2
  id final
1  1    70
2  2    83
3  3    65
4  4    95
5  5    80

> total<-left_join(test1,test2,by="id") #id를 기준으로 total에 할당
> total
  id midterm final
1  1      60    70
2  2      80    83
3  3      70    65
4  4      90    95
5  5      85    80

#다른 데이터를 활용해 변수 추가하기
> name<-data.frame(class=c(1,2,3,4,5),teacher=c("kim","lee","park","choi","jung"))
> name
 class teacher
1     1     kim
2     2     lee
3     3    park
4     4    choi
5     5    jung

> exam_new<-left_join(exam,name,by="class")
> exam_new
   id class math english science total teacher
1   1     1   50      98      50   198     kim
2   2     1   60      97      60   217     kim
3   3     1   45      86      78   209     kim
4   4     1   30      98      58   186     kim
5   5     2   25      80      65   170     lee

#세로로 합치기
#학생 1~5번 시험 데이터 생성
> group_a<-data.frame(id=c(1,2,3,4,5),test=c(60,80,70,90,85))
> group_a
#학생 6~10번 시험 데이터 생성
> group_b<-data.frame(id=c(6,7,8,9,10),test=c(70,83,65,95,80))
> group_b
> group_all<-bind_rows(group_a,group_b)
> group_all
   id test
1   1   60
2   2   80
3   3   70
4   4   90
5   5   85
6   6   70
7   7   83
8   8   65
9   9   95
10 10   80

##데이터 정제
##결측치 정제하기
#결측치는(missing value)는 누락된 값, 비어 있는 값을 의미한다.

#실제 데이터에는 결측치가 있는지 확인해 제거하는 과정을 거친 후 분석해야 한다.
df<-data.frame(sex=c("M","F",NA,"M","F"),score=c(5,4,3,4,NA))
df
 sex score
1    M     5
2    F     4
3 <NA>     3
4    M     4
5    F    NA

#결측치 확인하기
is.na(df)
      sex score
[1,] FALSE FALSE
[2,] FALSE FALSE
[3,]  TRUE FALSE
[4,] FALSE FALSE
[5,] FALSE  TRUE
table(is.na(df)) #결측치 빈도 확인
FALSE  TRUE 
    8     2 
table(is.na(df$sex))
table(is.na(df$score))
# 결측치가 있으면 함수가 적용되지 않거나 분석 결과가 왜곡되는 문제가 발생한다.
sum(df$score)
[1] NA
mean(df$score)
[1] NA
#결측치 제거하기
> df %>% filter(is.na(score)) #score가 NA인 데이터만 출력
> df %>% filter(!is.na(score)) #score 결측치 제거
> df_nomiss<-df %>% filter(!is.na(score)) #결축지 제거 적용
> mean(df_nomiss$score) 
[1] 4.333333

#여러 변수 동시에 결측치 없는 데이터 추출
> df_nomiss<-df %>% filter(!is.na(score) & !is.na(sex))
> df_nomiss

#결측치가 하나라도 있으면 제거하기
#na.omit()를 이용하면 변수를 지정하지 않고 결측치가 한번에 제거됨.
> df_nomiss2<-na.omit(df)
> df_nomiss2

#함수의 결측치 제외 기능 사용하기
mean(df$score,na.rm=T)

> exam<-read.csv("csv_exam.csv")
> exam[c(3,8,15),"math"]<-NA
> exam %>% summarise(mean_math=mean(math))
  mean_math
1        NA
# 함수의 결출치 제외 기능 사용하기 
> exam %>% summarise(mean_math=mean(math,na.rm=T))
mean_math
1  55.23529
> exam %>% summarise(mean_math=mean(math,na.rm=T),
    sum_math=sum(math,na.rm=T),
    median_math=median(math,na.rm=T)) #평균,합계,중앙값 산출
  mean_math sum_math median_math
1  55.23529      939          50

#결측치 대체하기
#평균값으로 결측치 대체하기
> exam$math<-ifelse(is.na(exam$math),55,exam$math) #결축치 대체하기
> table(is.na(exam$math))
> exam #대체된 것을 확인 할 수 있음. 

#이상치 정제하기
#정상범주에서 크게 벗어난 값을 '이상치(outlier)'라고 한다. 
# 이상치가 데이터에 포함되어 있으면 결과가 왜곡되기 때문에 이상치를 제거해야 한다.
>outlier<-data.frame(sex=c(1,2,1,3,2,1),score=c(5,4,3,4,2,6))
> outlier
  sex score
1   1     5
2   2     4
3   1     3
4   3     4
5   2     2
6   1     6
> table(outlier$sex)
1 2 3 
3 2 1 
> table(outlier$score)
2 3 4 5 6 
1 1 2 1 1 
#sex가 3이면 NA 할당
> outlier$sex<-ifelse(outlier$sex==3,NA,outlier$sex)
#score가 5보다 크면 NA 할당
> outlier$score<-ifelse(outlier$score>5,NA,outlier$score)
  sex score
1   1     5
2   2     4
3   1     3
4  NA     4
5   2     2
6   1    NA
#SEX,SCORE 변수 모두 이상치를 결측치로 변환했으니 결측치 제거하기, sex로 묶고, score의 평균치를 요약.
> outlier %>% filter(!is.na(sex) & !is.na(score)) %>% 
            group_by(sex) %>% 
            summarise(mean_score=mean(score))


#dplyr 패키지를 사용한 데이터 가공 실습

#ggplot2 패키지에는 미국 동북중부 437개 지역의 인구통계 정보를 담은 
midwest라는 데이터가 들어있다. 

#midwest 데이터를 사용해 데이터 분석을 해보자.

1. ggplot2의 midwest 데이터를 데이터 프레임 형태로 불러오세요.
> install.packages("ggplot2")
> library(ggplot2)
> midwest <-as.data.frame(ggplot2::midwest)

2. poptotal(전체인구), popasian(아시아 인구) 변수를 이용해 
‘전체 인구 대비 아시아 인구 백분율’ 파생변수를 만들고, 
히스토그램을 만들어 도시들이 어떻게 분포하는지 살펴보자.

(아시아 인구/전체인구)*100 =>백분율
> midwest$ratio <- midwest$popasian/midwest$poptotal*100
> hist(midwest$ratio)

3. 아시아 인구 백분율 전체 평균을 구하고, 평균을 초과하면 “large”, 
그 외에는 “small”을 부여하는 파생변수를 만들어 보세요.
> ratio_mean <- mean(midwest$ratio)
> ratio_mean
> midwest$mean <- ifelse(midwest$ratio > ratio_mean, "large", "small")


4. “large”와 “small”에 해당하는 지역에 얼마나 되는지 빈도표와 
빈도 막대 그래프를 만들어 확인해보자.
>table(midwest$mean)
>qplot(midwest$mean)


5. popadults는 해당 지역의 성인 인구, poptotal은 전체 인구를 나타낸다. 
midwest 데이터에 ‘전체 인구 대비 미성년 인구 백분율’ 변수를 추가해보자.
> library(dplyr) 
> midwest <- midwest %>% 
    mutate(tot = (poptotal-popadults)/poptotal*100)


6. 미성년 인구 백분율이 가장 높은 상위 5개 county(지역)의 미성년 인구 백분율을 
출력해보자.
> midwest %>%
    arrange(desc(tot)) %>% 
    select(tot, county) %>%
    head(5)


7. 분류표의 기준에 따라 미성년 비율 등급 변수를 추가하고, 
각 등급에 몇 개의 지역이 있는지 알아보자.

분류     기준
large   40% 이상
middle  30~40% 미만
small   30% 미만


midwest <- midwest %>% 
    mutate(level = ifelse(tot >= 40 , "large", ifelse(tot > 30, "middle", "small")))
table(midwest$level)

#이번에는 mpg 데이터를 분석해보자.

1. ggplot2의 mpg 데이터를 데이터 프레임 형태로 불러오세요.
> install.packages("ggplot2")
> library(ggplot2)
> mpg <-as.data.frame(ggplot2::mpg)

2. 자동차의 배기량에 따라 고속도로 연비가 다른지 알아보려고 한다. 
displ(배기량)이 4이하인 자동차와 5이상인 자동차 중 어떤 자동차의 
hwy(고속도로 연비)가 평균적으로 더 높은지 알아보자.
> library(dplyr)
> a <- mpg %>% filter(displ <= 4)
> b <- mpg %>% filter(displ >= 5)
> mean(a$hwy)
[1] 25.96319
> mean(b$hwy)
[1] 18.07895

3. 자동차 제조회사에 따라 도시 연비가 다른지 알아보려고 한다. 
“audi”와 “toyota” 중 어느 제조회사의 cty(도시연비)가 평균적으로 높은지 알아보자.
> audi <- mpg %>% filter(manufacturer == "audi")
> toyota <- mpg %>% filter(manufacturer == "toyota")
> mean(audi$cty)
[1] 17.61111
> mean(toyota$cty)
[1] 18.52941

4. mpg2 데이터는 11개의 변수로 구성되어 있다. 이 중 일부만 추출해 활용하려고 한다.
 mpg2 데이터의 class(자동차 종류), cty(도시연비) 변수를 추출해 새로운 데이터를 
 만드세요.
> mpg2 <- as.data.frame(mpg %>% select(class, cty))


5. 자동차의 종류에 따라 도시 연비가 다른지 알아보려고 한다. 
앞에서 추출한 데이터를 이용해 class(자동차 종류)가 “suv”인 자동차와 “compact” 
인 자동차 중 어떤 자동차의 cty가 더 높은지 알아보자.
> suv <- mpg2 %>% filter(class == "suv")
> compact <- mpg2 %>% filter(class == "compact")
> mean(suv$cty)
[1] 13.5
> mean(compact$cty)
[1] 20.12766


6. cty와 hwy를 더한 '합산연비' 변수를 추가하세요.(mutate 사용)
mpg <- mpg %>% mutate(total = mpg$cty + mpg$hwy)

7. 앞에서 만든 합산연비 변수를 2로 나눠 '평균연비' 변수를 추가하세요.
mpg <- mpg %>% mutate(mean = mpg$total/2)

8. '평균연비' 변수가 가장 큰 자동차 3종의 데이터를 출력하세요.
mpg %>% arrange(desc(mpg$mean)) %>% head(3)

9. 앞에 6~8번 문제를 해결할 수 있는 하나로 연결된 dplyr 구문을 만들어보세요.
mpg %>% mutate(total = mpg$cty + mpg$hwy,
    mean = mpg$total/2) %>% 
    arrange(desc(mean)) %>%
    head(3)


##그래프
##r에서 기본으로 제공하는 plot()함수와 ggplot2패키지를 이용하는 방법이 있다.
##plot(x,y,옵션) =>삼전토 차트 
#x-x축 데이터 y-y축 데이터
#옵션에는 main=그래프 제목, sub=그래프 부제목, xlab=x축제목, ylab=y축제목, type=plot의 형태
#axes=plot의 테두리선, col=plot의 색상

#그래프 기본-1
> age<-c(24,36,40,42,27,35,55,48)
> plot(age,main="나이분포",ylab="나이")
# 동그라미색 => 초록색
> plot.new()
> age<-c(24,36,40,42,27,35,55,48)
> plot(age,main="나이분포",ylab="나이",col="green")
# 동그라미색 => 빨간색 
> plot.new()
> age<-c(24,36,40,42,27,35,55,48)
> plot(age,main="나이분포",ylab="나이",col="#ff0000")

#그래프 기본-2
> plot.new()
> height<-c(165,170,177,167,180,172,169,179)
> weight<-c(70,73,62,80,85,74,75,68)
> plot(weight,height,main="키와 몸무게 분포",xlab="체중",ylab="키")

#실습
#cars데이터 불러오기
#산점도 그래프 그려보기
#제목과 x축제목, y축제목 넣어보기
cars
> plot(cars$speed,cars$dist,main="cars 데이터의 삼전도",xlab="속도",ylab="제동거리")
> plot(cars,type="l")

#type=p 포인트가 점의 형태로 그려짐
#type=l 선의 형태
#type=o 점과 선이 중첩되며 통과됨
#type=h 히스토그램과 같이 수직선 형태
#type=s/S 계단형 그래프
plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,75,68)
plot(weight,height,main="키와 몸무게 분포",type='o',xlab="체중",ylab="키",col=rainbow(length(height)))


#그래프 기본-3
#par()함수 =>여러 그래프를 한 화면에 그릴 때 유용
#선의 굵기와 종류, 문자의 크기와 글꼴, 색상지정
#par(mfrow=c(행의 개수, 열의 개수))
ex) par(mfrow=c(2,3)) #2행 3열의 그래프, 한 화면에 6개의 그래프가 그려짐

plot.new()
x<-1:5
y<-x
par(mfrow=c(1,1))
kind=c('p','b','l','o','s','h')
for(i in 1:length(kind)) {
title<-paste("type=",kind[i])
plot(x,y,type=kind[i],main=title,col=rainbow(6))
}

#그래프 점과 관련된 points()함수
#points(x,y,pch=점의 형태를 번호로 표시,cex=점의 크기)
plot.new()
plot(1:5,1:5,main="여러 형태의 점")
points(3,2,pch=2,cex=2)
points(2,pch=15,cex=3)
points(2,4,pch=20,cex=1)

#선을 그리는 lines()함수
#lines(x,lty=선의 타입,col=선색상,lwd=선 굵기)
plot.new()
plot(1:6,1:6,main="여러 형태의 선")
lines(c(1,3),c(3,3),lty="dotted",lwd=3,col="red")
lines(c(1,3),c(4,4),lty="solid",lwd=2,col="green")
lines(c(1,5),lty="dashed",lwd=4,col="blue")


#그래프 안에 선 그리기, abline(), abline(h=3,lty="solid")
#그래프 안에 텍스트 삽입, text(), text(3,2,"하위 data군")
#범례삽입, legend(x,y,cex=글자크기,col=색상,lty=선종류)

#그래프 기본-4
plot.new()
x<-1:5
y<-x
plot(x,y,main="sample")
abline(h=c(1:5),col="red",lty="dotted")
text(3,3,"기본점")

#그래프 기본-5
plot.new()
height<-c(165,170,177,167,180,172,169,179)
weight<-c(70,73,62,80,85,74,75,68)
irum<-c('김','박','최','신','정','문','오','추')
plot(weight,height,main="키와 몸무게 분포",type='o',pch=18,xlab="체중",ylab="키",col=rainbow(length(height)))

abline(h=seq(165,180,5),col="gray",lty=2)
text(73,174,"표준",col="brown")

legend("bottomright",col=rainbow(length(height)),legend=irum,lty=2)



plot.new()
y1<-c(0.8,0.5,0.4,0.4,0.5,0.7)
y2<-c(0.8,1.3,1.0,1.3,0.9,1.2)
x<-c(1:6)

par(new=TRUE)
plot(x,y1,ylab="소비자물가상승률",type="o",col="red",ylim=c(0.3,1.5))

par(new=TRUE)
plot(x,y2,lty="dotted",ylab="소비자물가상승률",type="l",col="blue",ylim=c(0.3,1.5))

legend(locator(1),legend=c('2015년','2016년'),lty=1,bg="yellow",col=c('red','blue'))

#막대기본-1
plot.new()
x<-c(100,200,300,350,500)
barplot(x,name=c('a','b','c','d','e'),col='yellow')

#막대그래프-응용1
data<-read.csv("c:\\r1\\seoulpopulation.csv",sep=",",header=TRUE, fileEncoding = "euc-kr")
data
data1<-subset(data,남자>=230000)
data1
gu<-data1$자치구
barplot(data1$남자,names=gu,las=1,col="darkgreen",horiz=TRUE, main="서울 남성23만명 이상 거주 자치구")
barplot(data1$남자,names=gu,col="darkgreen", main="서울 남성23만명 이상 거주 자치구")

#히스토그램
plot.new()
x<-c(23,33,32,45,37,28,15,35,43,27,46,33,38,46,50,25)
hist(x,main="연령분포",xlim=c(15,50),col="pink")

#상자도표
plot.new()
data<-read.csv("c:\\r1\\birthdie.csv",sep=",",header=TRUE, fileEncoding = "euc-kr")
data
boxplot(data$출생,data$사망,names=c('출생','사망'),col=c("pink","darkgreen"),
main="서울2013-2014출생사망자 비교")

#원형그래프
x<-c(27,43,15)
pie(x,labels=c("한식","일식","중식"))
pie(x,labels=c("한식","일식","중식"),init.angle=90,col=rainbow(length(x)))

#3차원 파이차트
install.packages("plotrix")
library(plotrix)

x<-c(9,15,20,6)
label<-c("영업1팀","영업2팀","영업3팀","영업4팀")
pie3D(x,labels=label,explode=0.1,labelcex=0.8,main="부서별 영업실적")

##ggplot2는 그래프를 만들 때 가장 많이 사용하는 패키지이다.
install.packages("ggplot2")
library(ggplot2)

#그래프 기본 틀 만들기
ggplot(데이터세트,aes(데이터속성))

# mpg 데이터로 그래프를 그려보자
# x축은 displ, y축은 hwy로 지정해 기본 틀 설정
ggplot(mpg, aes(x = displ, y = hwy))

# 산점도 만들기
# 배경에 산점도 추가
ggplot(mpg, aes(x = displ, y = hwy)) + geom_point()

# x축 범위 3~6으로 지정
ggplot(mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3, 6)

#  x축 범위 3~6, y축 범위 10~30으로 지정
ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  xlim(3, 6) + 
  ylim(10, 30)


# airquality 데이터로 그래프를 그려보자
# airquality 데이터에서 날짜별 온도를 시각화해보자. x축은 날짜(Day), y축은 온도(Temp)
str(airquality)
ggplot(airquality, aes(x = Day, y = Temp))

# 산점도 만들기
ggplot(airquality, aes(x = Day, y = Temp)) + geom_point()
# 크기를 3, 색상을 빨강으로 적용하여 산점도 만들기
ggplot(airquality, aes(x = Day, y = Temp)) + geom_point(size=3,color="red")
# 산점도 차트에 텍스트 추가하기
ggplot(airquality, aes(x = Day, y = Temp)) + geom_point()+
geom_text(aes(label = Temp, vjust = 0, hjust = 0 ))


## 막대 그래프-집단 간 차이 표현하기 ##
install.packages("dplyr")
library(dplyr)

#집단별 평균표만들기
df_mpg <- mpg %>% 
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

df_mpg

#막대 그래프 생성하기
ggplot(df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()
#크기 순으로 정렬하기
ggplot(df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

#빈도 막대 그래프 만들기
ggplot(mpg, aes(x = drv)) + geom_bar()

ggplot(mpg, aes(x = hwy)) + geom_bar()

#mtcars 데이터에서 실린더별 빈도수를 빈도 막대 그래프 만들기
ggplot(mtcars, aes(x = cyl)) + geom_bar()
ggplot(mtcars, aes(x = cyl)) + geom_bar(width=0.5)
ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(width=0.5)
#gear에 따른 빈도 막대 그래프를 그리고 그래프의 제목, 축제목 입력해보기
ggplot(mtcars, aes(x = cyl)) + geom_bar() +
labs(x = "기어수", y = "자동차수", title = "변속기 기어별 자동차수")

#테마설정해보기
ggplot(mtcars, aes(x = cyl)) + geom_bar() +
labs(x = "기어수", y = "자동차수", title = "변속기 기어별 자동차수") +
theme_bw()

#누적 막대 그래프 만들기, 실린더 종류별 gear 빈도까지 파악해보자.
ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(aes(fill=factor(gear)))
#누적 막대 그래프를 선버스트 차트로 변환하기
ggplot(mtcars, aes(x = factor(cyl))) + 
geom_bar(aes(fill=factor(gear))) +
coord_polar()
#선버스트 차트를 다시 원형으로 변환
ggplot(mtcars, aes(x = factor(cyl))) + 
geom_bar(aes(fill=factor(gear))) +
coord_polar(theta="y")

## 선 그래프##
#시계열 그래프 만들기
ggplot(economics, aes(x = date, y = unemploy)) + geom_line()

ggplot(airquality, aes(x = Day, y = Temp)) + geom_line()

ggplot(airquality, aes(x = Day, y = Temp)) + geom_line() + geom_point()

## 상자 그림-집단 간 분포 차이 표현하기 ##
#상자 그림 만들기
ggplot(mpg, aes(x = drv, y = hwy)) + geom_boxplot()

ggplot(airquality, aes(x = Day, y = Temp, group= Day)) + geom_boxplot()

#히스토그램 그리기
ggplot(airquality, aes(Temp)) + geom_histogram()

#실습
1
x<-c(9,15,20,6)
y<-c("영업 1팀","영업 2팀","영업 3팀","영업 4팀")
pie(x,labels=Y,main="부서별 영업 실적")
pie(x,labels=Y,main="부서별 영업 실적",init.angle=90,col=rainbow(length(x)))
2
x<-c(9,15,20,6)
y<-c("영업 1팀","영업 2팀","영업 3팀","영업 4팀")
barplot(x,names=y, main="부서별 영업 실적")
barplot(x,names=y, main="부서별 영업 실적",col=rainbow(length(x)))
barplot(x,names=y, main="부서별 영업 실적",
col=rainbow(lenght(x)),ylim=c(0,25),xlab="부서",ylab="영업실적(억원)")
3
col=rainbow(lenght(x)),ylim=c(0,25),xlab="부서",ylab="영업실적(억원)",
roix=TRUE,las=1)
col=rainbow(lenght(x)),xlim=c(0,25),ylab="부서",xlab="영업실적(억원)",
roix=TRUE,las=1)

4 mpg 데이터의 cty(도시 연비)와 hwy(고속도로 연비) 간에 어떤 관계가 있는지 알아보기
위해 x축은 cty, y축은 hwy로 산점도를 만들어 보세요.
ggplot (mpg,aes(x=cty, y=hwy))+geom_point()+
xlim(10,35)+
ylim(20,40)

5. 미국 지역별 인구 통계 정보를 담은 ggplot2 패키지의 midwest 데이터를 이용해 전체 인구와 아시아 인구 간에 어떤 관계가 있는지 알아보려고 합니다. x축은 poptotal(전체인구), y
축은 popasian(아시아인 인구)으로 된 산점도를 그려 보세요. 전체 인구는 50만명 이하, 아시아인 인구는 1만명 이하인 지역만 산점도에 표시되게 설정하세요
ggplot(midwest, aes(x=poptotal, y=popasian))+ geom_point() +
xlim(0,500000) +
ylim(0,10000)


#### 한국복지패널데이터 분석 ####
https://www.koweps.re.kr
#### 가구의 경제활동을 연구해 정책 지원에 반영할 목적으로 발간하는 조사자료이다. 
전국에서 7000여 가구를 선정해 조사한 자료로 경제활동, 생활실태, 복지욕구 등 다양한 변수를 담고 있다. 
이 데이터를 분석하면 대한민국 사람들이 어떻게 살아가는지 알 수 있다.####


## 데이터분석 준비하기 ##
install.packages("foreign")  # spss에서 작성된 파일을 불러올 수 있는 foreign 패키지 설치
library(foreign)             # foreign 패키지 로드
install.packages("dplyr")    # 전처리에 필요한 dplyr 패키지 설치
library(dplyr)               # dplyr 패키지 로드
install.packages("ggplot2")  # 시각화에 필요한 ggplot2 패키지 설치
library(ggplot2)             # ggplot2 패키지 로드
install.packages("readxl")   # 엑셀 파일을 불러올 수 있는 readxl 패키지 설치
library(readxl)              # readxl 패키지 로드

## 데이터 불러오기 ##
setwd("c:\\r1")
welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav")

# R에서 크기가 큰 SPSS 파일을 불러올때면 다음과 같은 경고 메시지가 뜨곤합니다.
# Warning message:
# In read.spss(file = "Koweps_hpc10_2015_beta1.sav", to.data.frame = T) :
# Koweps_hpc10_2015_beta1.sav: Compression bias (0) is not the usual value of 100

#오늘 여러 구문에서 이런 에러가 난다면,
#에러는 아니고 주의할 사항을 알려주는 것이라 무시하고 진행하셔도 됩니다.
#결국 정확한 원인은 파악할 수 없고, 용량이 큰 파일의 경우 그런다고 합니다. 

str(welfare)

welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)  

# 복사본 만들기
welfare1 <- welfare

# 데이터 검토하기
head(welfare1)
tail(welfare1)
View(welfare1)
dim(welfare1)
str(welfare1)
summary(welfare1)

## 변수명 바꾸기 ##
welfare1 <- rename(welfare,
                  sex = h10_g3,            # 성별
                  birth = h10_g4,          # 태어난 연도
                  income = p1002_8aq1,     # 월급
                  code_job = h10_eco9,     # 직업 코드
                  code_region=h10_reg7)

#### 데이터 분석 절차 ####
##1단계:변수 검토 및 전처리##
##2단계:변수간 관계분석##

## 성별에 따른 월급차이-"성별에 따라 월급이 다를까? ##
## 성별변수 전처리 ##
class(welfare1$sex)
table(welfare1$sex) # 이상치 확인

# 이상치 결측처리
welfare1$sex <- ifelse(welfare1$sex == 9, NA, welfare1$sex)

# 성별 항목 이름 부여
welfare1$sex <- ifelse(welfare1$sex == 1, "male", "female")
table(welfare1$sex)
qplot(welfare1$sex)

## 월급변수 전처리 ##
class(welfare1$income)
summary(welfare1$income)
qplot(welfare1$income)
qplot(welfare1$income) + xlim(0, 1000)

# 이상치 확인
summary(welfare1$income)

# 이상치 결측 처리
welfare1$income <- ifelse((welfare1$income==0 | welfare1$income==9999), NA, welfare1$income)
welfare1$income <- ifelse(welfare1$income %in% c(0, 9999), NA, welfare1$income)

# 결측치 확인
table(is.na(welfare1$income))


## 성별에 따른 월급 차이 분석하기 ##
sex_income <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(sex) %>%
  summarise(mean_income = mean(income))

sex_income

ggplot(data = sex_income, aes(x = sex, y = mean_income)) + geom_col()


## 나이와 월급의 관계-"몇 살 때 월급을 가장 많이 받을까? ##
## 나이변수 검토 및 전처리 ##
class(welfare1$birth)
summary(welfare1$birth)
qplot(welfare1$birth)

# 이상치 확인
summary(welfare1$birth)

# 결측치 확인
table(is.na(welfare1$birth))

# 이상치 결측처리
welfare1$birth <- ifelse(welfare1$birth == 9999, NA, welfare1$birth)
table(is.na(welfare1$birth))


## 파생변수-나이만들기 ##
welfare1$age <- 2015 - welfare1$birth + 1
summary(welfare1$age)
qplot(welfare1$age)


## 나이와 월급의 관계분석 ##
## 나이에 따른 월급 평균표 만들기 ##
age_income <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(age) %>%
  summarise(mean_income = mean(income))

head(age_income)

ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()


## 연령대에 따른 월급 차이-"어떤 연령대의 월급이 가장 많을까? ##

## 연령대 변수 전처리-파생변수 만들기 ##
welfare1 <- welfare1 %>%
  mutate(ageg = ifelse(age < 30, "young",
                       ifelse(age <= 59, "middle", "old")))

table(welfare1$ageg)
qplot(welfare1$ageg)


## 연령대에 따른 월급 차이 분석하기 ##
ageg_income <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(ageg) %>%
  summarise(mean_income = mean(income))

ageg_income

ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) + geom_col()


## 그래프가 나이순으로 정렬되도록 설정 ##
ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) +
  geom_col() +
  scale_x_discrete(limits = c("young", "middle", "old"))


## 연령대 및 성별 월급 차이-"성별 월급 차이는 연령대별로 다를까? ##

## 연령대 및 성별 월급 평균표 만들기 ##
sex_income <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(ageg, sex) %>%
  summarise(mean_income = mean(income))

sex_income

##그래프 만들기 ##
ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex)) +
  geom_col() +
  scale_x_discrete(limits = c("young", "middle", "old"))

ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex)) +
  geom_col(position = "dodge") +
  scale_x_discrete(limits = c("young", "middle", "old"))


## 나이 및 성별 월급 차이 분석하기 ##
# 성별 연령별 월급 평균표 만들기4
sex_age <- welfare1 %>%
  filter(!is.na(income)) %>%
  group_by(age, sex) %>%
  summarise(mean_income = mean(income))

head(sex_age)

# 그래프 만들기
ggplot(data = sex_age, aes(x = age, y = mean_income, col = sex)) + geom_line()

