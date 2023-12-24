#>sco:stage_data/stage/endroll/reset
#@within sco:stage_data/reset
forceload add -469 -248 -479 -263
forceload add -573 -281 -563 -266

place template sco:stage_data/endroll/theater -573 -27 -281
place template sco:stage_data/endroll/theater -469 -27 -248 180

execute if data storage sco:data options{time:0b} run time set noon
execute if data storage sco:data options{time:1b} run time set night
execute if data storage sco:data options{time:2b} run time set midnight

forceload remove -469 -248 -479 -263
forceload remove -573 -281 -563 -266