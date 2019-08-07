# TrialRails－App

突発的にRailsを動かしたくなったのと、他の環境でも動かしたかったので上げました。突発的にやっているので更新頻度はかなーり低いです。なお、Docker環境があることが大前提です。

## ・開発環境(コンテナ)

* Ruby version: 2.4.5(Dockerコンテナ内のバージョンです。Dockerコンテナ動いているのでローカルにRubyのインストールは不要です。)

* Rails version: 5.0.0(死ぬ死ぬ言われながら結局死なない。なんだかんだ皆好きなんすねぇ)

* MySQL version: 5.7(あたりまえだよなぁ？)

* Node.js: 無いとRailsが動かない。

* Docker: そもそもコレがインストールされてることが大前提。開発環境に一貫性持たせられるっていいよね。

## ・リポジトリを落としたら

* 落としたディレクトリでDockerコマンド打つだけです。

* Railsイメージのビルド実行コマンド<br>
  ``$ docker-compose build``

* コンテナをバックグラウンドで実行するコマンド<br>
  `$ docker-compose up -d`
* RailsのコンテナでDB作成のタスクを実行するコマンド<br>
  `$ docker-compose run web bundle exec rake db:create`
