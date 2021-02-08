# mysql80-ja
MySQL8.0の公式のDockerイメージに日本語化設定を追加したもの

# 使い方

## イメージをローカルでビルド
```shell
$ git clone https://github.com/delhi09/docker-mysql80-ja.git
$ cd docker-mysql80-ja
$ docker build -t kamatimaru/mysql80-ja .
```

## コンテナ起動
```shell
$ docker run --name mysql80-ja -e MYSQL_ROOT_PASSWORD=password -d p 3306:3306 kamatimaru/mysql80-ja:latest
```

## コンテナへのログイン
```shell
$ docker exec -it mysql80-ja /bin/bash
```

## mysqlへのログイン
```shell
$ mysql -u root -p -h 127.0.0.1
Enter password: # 「password」と入力
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.23 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```