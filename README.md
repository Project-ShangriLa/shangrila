# mandala-db-migration

## 概要

Mandalaが利用するDBのテーブル定義を管理するリポジトリです。


## DDL

API実装に必要な最新版のDDLをSQL単体で格納しています。


### DBマイグレーション

MandalaのDDLは、[flyway](https://flywaydb.org/)でのDBマイグレーションをサポートしています。  
マイグレーションには、以下のディレクトリ配下のファイルをご利用ください。

```
flyway-migration/mandala
```

mandala-ansibleでflywayの環境を構築した場合は、以下のコマンドで実行することができます。

```
$ flyway -locations=filesystem:<マイグレーションファイルのディレクトリ> migrate

例）
$ flyway -locations=filesystem:/home/vagrant/repositories/mandala-db-migration/flyway-migration/mandala migrate
```
