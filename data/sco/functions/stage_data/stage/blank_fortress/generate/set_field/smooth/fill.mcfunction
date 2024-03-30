#>sco:stage_data/stage/blank_fortress/generate/set_field/smooth/fill
#@within sco:stage_data/stage/blank_fortress/generate/set_field/smooth/loop
$execute positioned $(pos) if block ^ ^ ^ red_sandstone run fill ^-1 ^ ^-1 ^1 ^ ^1 red_sandstone replace lapis_block
$execute positioned $(pos) if block ^ ^ ^ lapis_block run fill ^-1 ^ ^-1 ^1 ^ ^1 lapis_block replace red_sandstone