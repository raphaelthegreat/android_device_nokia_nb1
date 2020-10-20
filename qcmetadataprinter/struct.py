#!/bin/python

with open('../camera/QCamera2/stack/common/cam_intf.h', 'r') as f:
    data = f.read()
f.closed

start = data.find('    INCLUDE(CAM_INTF_META_HISTOGRAM')
end = data.find('} metadata_data_t;')
data = data[start:end]
metadata = data.split("\n")

metalist = list()

for line in metadata:
    if (line.startswith('    INCLUDE')):
        foo = line.split(',')
        foo[0] = foo[0].replace('INCLUDE', 'MACRO')
        
        metalist.append(foo[0] + ')')

with open('param_ids.h', 'w') as f:
    f.write("#include <cam_intf.h>\n\n")
    f.write("#define FOR_EVERY_PARAM_ID(MACRO) \\\n")

    for item in metalist:
        f.write("%s \\\n" % item)

f.closed