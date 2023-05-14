import os

def template (slot_nmu):
    data = []
    data.append("#>enderface:gui/processing/shop/trade/remove_item/slot/"+ str(slot_nmu) +"\n#@within enderface:gui/processing/shop/trade/remove_item/\n")
    data.append("execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:"+ str(slot_nmu) + "b}].Count\n")
    return data

#hotbar : Slot:0~8
max = 9
for i in range(max):
    data = []
    data = template(i)
    data.append(f"item modify entity @s hotbar.{i} remove_item")
    fp = open(str(os.path.dirname(__file__) + "\\" + str(i) + ".mcfunction"), "w")
    fp.writelines(data)
    fp.close

#hotbar : Slot:9~35
max = 27
for i in range(max):
    data = []
    data = template(i+9)
    data.append(f"item modify entity @s inventory.{i} remove_item")
    fp = open(str(os.path.dirname(__file__) + "\\" + str(i+9) + ".mcfunction"), "w")
    fp.writelines(data)
    fp.close

#armor : Slot:100~103
max = 4
armor = ["feet","legs","chest","head"]
for i in range(max):
    data = []
    data = template(i+100)
    data.append(f"item modify entity @s armor.{armor[i]} remove_item")
    fp = open(str(os.path.dirname(__file__) + "\\" + str(i+100) + ".mcfunction"), "w")
    fp.writelines(data)
    fp.close

#offhand : Slot:-106
data = []
data = template(-106)
data.append(f"item modify entity @s weapon.offhand remove_item")
fp = open(str(os.path.dirname(__file__) + "\\" + str(-106) + ".mcfunction"), "w")
fp.writelines(data)
fp.close

print("Success!!")