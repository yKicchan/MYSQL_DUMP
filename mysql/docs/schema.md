

# テーブル定義

## adventurers

|テーブル名|コメント|
|--------|--------|
|adventurers|\-|

#### カラム情報

|カラム名|データ型|NULL|デフォルト|キー|コメント|Extra|
|----|----|----|----|----|---|---|
|id|int(10) unsigned|NO|\-|PRI|\-|auto_increment|
|name|varchar(20)|NO|\-|\-|\-|\-|
|gender|varchar(5)|NO|\-|\-|\-|\-|
|role_id|int(10) unsigned|NO|\-|MUL|\-|\-|
|created_at|timestamp|NO|CURRENT_TIMESTAMP|\-|\-|\-|
|updated_at|timestamp|NO|CURRENT_TIMESTAMP|\-|\-|on update CURRENT_TIMESTAMP|


#### インデックス情報

|インデックス名|カラム|複合キー順序|NULL|UNIQ|
|----|----|----|----|----|
|PRIMARY|id|1|NO|YES|
|fk_role|role_id|1|NO|NO|

## roles

|テーブル名|コメント|
|--------|--------|
|roles|\-|

#### カラム情報

|カラム名|データ型|NULL|デフォルト|キー|コメント|Extra|
|----|----|----|----|----|---|---|
|id|int(10) unsigned|NO|\-|PRI|\-|auto_increment|
|name|varchar(20)|NO|\-|\-|\-|\-|
|created_at|timestamp|NO|CURRENT_TIMESTAMP|\-|\-|\-|
|updated_at|timestamp|NO|CURRENT_TIMESTAMP|\-|\-|on update CURRENT_TIMESTAMP|


#### インデックス情報

|インデックス名|カラム|複合キー順序|NULL|UNIQ|
|----|----|----|----|----|
|PRIMARY|id|1|NO|YES|

