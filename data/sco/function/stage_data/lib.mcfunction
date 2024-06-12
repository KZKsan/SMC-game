#>sco:stage_data/lib
#@private

#>
#@within sco:stage_data/**
#declare storage sco:data {stage:"",shop:""}
#declare storage sco:data {options:{reset:false,gimmick:false}}

## stage: "ステージid" tp用のmacroに使用します

## shop: "ショップid" or ""(空白) tp用のmacroに使用します

## options: ステージに何かしらのコマンドを仕込むときに使用します(省略可能)
###  reset: ステージ見学,対戦の開始前に1回だけ実行される
###  gimmick: ステージ見学,対戦の間常に実行される

## 例1: {stage:"test", shop:""}  例2: {stage:"bar", shop:"foo", options:{reset:true}}