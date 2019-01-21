## 概要

MySQL の表構造を Markdown で吐き出す機構。
動作再現のために Docker を利用している。

## 手順

1. `$ docker-compose up -d`でコンテナ起動
2. `$ docker exec -it dump-mysql bash`でログイン
3. `# sh generate.sh`実行で`schema.md`が出力される
4. `# exit`でログアウト(これでいいかは覚えていない ←)
5. `$ docker-compose down`で停止、邪魔であれば`$ docker-compose down --rmi all`でイメージも吹っ飛ぶ^^

## 内容

1. `xsltproc`をインストールしておく([Dockerfile](mysql/Dockerfile)に記述済み)
2. `.xml`を`.md`に変換するためのスタイル定義を作成`[mysql/docs/style.xsl](mysql/docs/style.xsl)`
3. `mysqldump`で表構造のみ xml 形式で出力
4. `xsltproc`で出力した xml ファイルを`[mysql/docs/style.xsl](mysql/docs/style.xsl)`を元に Markdown 形式に出力
5. wiki にぺたぺた

※ 3,4 については[mysql/docs/generate.sh](mysql/docs/generate.sh)に記載している

### xsltproc とは

XSLT のコマンドラインプロセッサ。
XSLT は XML の構造変換や、スタイル付けができる。

### mysql/docs/style.xsl

XML を望む形に変換するためのスタイルシート。
ここでは Markdown 形式に出力できるように作成している。

### 変換結果

[mysql/docs/schema.md](mysql/docs/schema.md)

## 改良点

上記手順でコマンド叩いているのがそもそも面倒なので、自動的に動くようにしておきたいと思ったが~~めんどくさかった~~いい方法が思いつかなかった。
cron で定期的に動くようにするのが一番楽な気がした。
できれば mysql の表構造が変化したときに任意に実行されるような機構が欲しい(切実)
