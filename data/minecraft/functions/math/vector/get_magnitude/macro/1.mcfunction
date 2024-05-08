#>math/vector/get_magnitude/macro/1
#@within math/vector/get_magnitude/

$data modify storage _ math.vector.get_magnitude.num.sin_y set from storage trigonometricf sin[$(y)]
#$data modify storage _ math.vector.get_magnitude.num._sin_y set from storage trigonometricf sin[$(_y)]
$data modify storage _ math.vector.get_magnitude.num.cos_y set from storage trigonometricf cos[$(y)]
$data modify storage _ math.vector.get_magnitude.num.sin_x set from storage trigonometricf sin[$(x)]
#$data modify storage _ math.vector.get_magnitude.num._sin_x set from storage trigonometricf sin[$(_x)]
$data modify storage _ math.vector.get_magnitude.num.cos_x set from storage trigonometricf cos[$(x)]