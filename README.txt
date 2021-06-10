# backup

인증키

Local PC
key 생성
ssh-keygen -t rsa -b 2048
cd ~/.ssh
id_rsa.pub 의 (키)내용을

Server PC
cd ~/.ssh
authorized_keys 생성 및 로컬 PC에서 복사한 키 입력

참조 :https://angelhyun.tistory.com/entry/sftp-%EC%A0%91%EC%86%8D%EC%8B%9C-key-%EC%9D%B8%EC%A6%9D%EC%9C%BC%EB%A1%9C-%EC%A0%91%EC%86%8D%ED%95%98%EA%B8%B0-%ED%8C%A8%EC%8A%A4%EC%9B%8C%EB%93%9C-%EB%AF%B8%EC%9E%85%EB%A0%A5


vi 분할 편집
:sp {filename}

창이동 ctrl+ w,w

복사 yy

붙여넣기 p

행의 맨앞 ^
행의 맨끝 $

