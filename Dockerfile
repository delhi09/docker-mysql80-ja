FROM mysql:8.0

LABEL maintainer "kamatimaru"

# ロケールを「ja_JP.UTF-8」に設定
RUN apt-get update && apt-get install -y locales
RUN sed -i -E 's/# (ja_JP.UTF-8 UTF-8)/\1/' /etc/locale.gen && locale-gen
RUN update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8

# タイムゾーンをAsia/Tokyoに設定
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime