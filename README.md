# CAMAGRU

> It is version 4, updated on Sep 22, 2022.

## How To Install

1. .env.template 를 보고 .env 파일 만들기
2. generate_ssl_files.sh 실행하여 https 인증에 필요한 임시 인증서 발급받기

```shell
$ docker-compose up --build
```

## Notes

- 배포할 때는 build node container 만들어서 사전에 tailwindcss 변환해주어야 함.

tailwind.config.js 파일이 있는 /app에 들어가서

```shell
$ npx tailwindcss -i ./src/styles/global.css -o ./src/styles/tailwind.css --watch
```

## Progress

### 230129

- Docker-compose 이용하여 Nginx + PHP + MySQL 컨테이너 만들기
- Nginx에 https 적용하기

#### References

- [docker-compose로 nginx + php + mysql 서버 만들기](https://velog.io/@e3hope/docker-compose%EB%A1%9C-nginx-php-mysql-%EC%84%9C%EB%B2%84-%EB%A7%8C%EB%93%A4%EA%B8%B0)
- [What is fastcgi_index in nginx used for?](https://stackoverflow.com/questions/30802025/what-is-fastcgi-index-in-nginx-used-for)
- [[ft_server] 총 정리 : 도커 설치부터 워드프레스 구축까지](https://velog.io/@hidaehyunlee/ftserver-%EC%B4%9D-%EC%A0%95%EB%A6%AC-%EB%8F%84%EC%BB%A4-%EC%84%A4%EC%B9%98%EB%B6%80%ED%84%B0-%EC%9B%8C%EB%93%9C%ED%94%84%EB%A0%88%EC%8A%A4-%EA%B5%AC%EC%B6%95%EA%B9%8C%EC%A7%80)

### 230130

- PHP로는 Backend 로직만 짜는게 맞지 않나? 뷰는 따로 떼어 놓는게 맞지.
  - HTML에서 HTML Import 해서 layout 만들기 -> 한계가 너무 많고, 일단 베스트 프랙티스가 아님
  - PHP를 사용하는 한, 뷰까지 PHP에서 짜는게 맞음. PHP는 언어의 탄생부터가 프론트와 백이 디커플링되어있지 않음.
- tailwindcss 비슷한 utility css 파일을 일일이 만들바에야 tailwindcss를 그냥 쓰면 되지.

#### References

- [tailwindcss Installation](https://tailwindcss.com/docs/installation)
- [백엔드와 프론트엔드를 나눠서 개발하는 방식에 대해 문의 드립니다.](https://www.clien.net/service/board/cm_app/17563519)

### 230131

#### References

- [Sticky Footer](https://philipwalton.github.io/solved-by-flexbox/demos/sticky-footer/)
