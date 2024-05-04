import os
import math

data = []
fp = open(str(os.path.dirname(__file__)+"\\load.mcfunction"), "w")
data.append('#>trigonometricf/load\n#@within setup\n')
data.append('\n#>\n#@public\n#declare storage trigonometricf\n')

data.append('data modify storage trigonometricf sin set value [')
for i in range(359):
    data.append(str(int(math.sin(math.radians(i))*1000000)))
    data.append(',')
del data[-1]
data.append(']\n')

data.append('data modify storage trigonometricf cos set value [')
for i in range(359):
    data.append(str(int(math.cos(math.radians(i))*1000000)))
    data.append(',')
del data[-1]
data.append(']\n')

fp.writelines(data)
fp.close