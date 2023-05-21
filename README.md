# SCO-game

スマッシュコアオンラインのデータパック

**sco_items**

> functions
> :ここにアイテムのコマンドを作る

> loot_tables
> :アイテム本体はここで作る

> advancements
> :複雑なトリガーとかに使う

***ショップを出すコマンド***

>/function enderface:set_ender_chest/shop/0

***取引設定方法***

1.data\enderface\functions\gui_layoutes\shop\set_trade_data\category\のカテゴリ設定用functionを開く

2.以下の画像のとおりコマンドを書く

![alt](https://media.discordapp.net/attachments/1099504204407648326/1106398886907613224/image.png?width=936&height=654)

カテゴリを追加する場合

1.data\enderface\functions\gui_layoutes\shop\set_trade_data\category\のカテゴリ設定用functionを作る

2.以下のコマンドを書く

```mcfunction
#>enderface:gui_layoutes/shop/set_trade_data/category/<カテゴリ名(このfunctionの名前)>
#@within tag/function enderface:set_trade_data
## 取引内容を初期化
data modify storage sco:shop <カテゴリ名> set value []

## ここに取引の内容を書いていく
## ...
```

3.作ったカテゴリ設定用functionのパスをdata\enderface\tags\functions\set_trade_data.jsonに追加する

4.data\enderface\functions\gui_layoutes\shop\<カテゴリ名>.mcfunctionを作成し、以下のコマンドを書く

```mcfunction
#>enderface:gui_layoutes/shop/<カテゴリ名>
#@within enderface:gui_layoutes/load

data modify storage sco:shop _ set from storage sco:shop <カテゴリ名>

function enderface:gui_layoutes/shop/generic
```

5.data\enderface\functions\gui_layoutes\load.mcfunctionに以下のコマンドを書く

```mcfunction
#>enderface:gui_layoutes/load
#@within enderface:**

##ここより上の文はいじらない

# 追加して書く
execute if data storage enderface:data {gui_name:"shop/<カテゴリ名>"} run function enderface:gui_layoutes/shop/<カテゴリ名>

##ここより下の文はいじらない
function enderface:gui_data/copy
```

6.data\enderface\functions\gui_layoutes\shop\0.mcfunctionに以下のコマンドを書く

```mcfunction
#>enderface:gui_layoutes/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

##ここより上の文はいじらない

##ここでGUIのボタンを作る
item replace entity @s enderchest.<スロット> with iron_sword{click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"shop/<カテゴリ名>"},enderfaceItem:1b}

##ここより下の文はいじらない
function marker_storage/get
data remove entity @e[predicate=marker_storage,limit=1] data.preview_trade
data modify entity @e[predicate=marker_storage,limit=1] data.page set value 0
```

7.データパックを再読み込みする
