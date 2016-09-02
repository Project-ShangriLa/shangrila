# shangriLa

## 概要

アニメ情報を提供するshangriLa APIのDB登録を行うオペレーションシステムです。
ソースはマイグレーション中ですがRailsで実装されています

## DDL

DDLはRailsのマイグレーションで生成しますが
API実装に必要な最新版のDDLをSQL単体で格納しています。


### DBマイグレーション

shangrilaのDDLは、[flyway](https://flywaydb.org/)でのDBマイグレーションをサポートしています。  
マイグレーションには、以下のディレクトリ配下のファイルをご利用ください。

```
flyway-migration/anime_admin_development
```
