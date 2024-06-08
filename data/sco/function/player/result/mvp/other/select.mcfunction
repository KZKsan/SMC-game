#>sco:player/result/mvp/other/select
#@within sco:player/result/mvp/rank_make
$data modify storage sco:data mvp_result.objective set from storage sco:data mvp_result.score_names[$(num)]
$data modify storage sco:data mvp_result.text set from storage sco:data mvp_result.text_tables[$(num)]