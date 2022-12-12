
# ベースとなるDockerイメージ指定
FROM node:14.18.0

# コンテナログイン時のディレクトリ指定
WORKDIR /var/www/html/app

# yarn install
RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

# ポート開放
EXPOSE 3000
