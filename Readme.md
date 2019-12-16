# go-db
シス研のMySQL講義用

## 使い方
Makefile読めばだいたい分かる

## migration tool 環境構築
gooseというgo製のマイグレーションツール使います。

### mac
macはterminalで以下のコマンドを実行すれば入る。
```sh
$ make init/mac
```

このmakeの中身はMakefile読めば分かるけど↓の通り
```sh
$ brew install golang-migrate
$ migrate --version
```

### manjaroとか
多分以下の通り
参考: http://tech.high5.science/2018/05/16/migrate-20180516/
```sh
# pathの通ったディレクトリに移動（~/bin とかでもよい）
$ make init/manjaro
```

このmakeの中身はMakefile読めば分かるけど↓の通り
```sh
# pathの通ったディレクトリに移動（~/bin とかでもよい）
$ curl -L https://github.com/golang-migrate/migrate/releases/download/v3.2.0/migrate.linux-amd64.tar.gz | tar xvz
$ mv migrate.linux-amd64 migrate
$ migrate --version
```
