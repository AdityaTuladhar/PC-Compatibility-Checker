import pymysql
import ast

con = pymysql.connect(host="localhost", user="root", password="", db="compatibility_check")
cur = con.cursor()


def check(search: 'string', relation: 'dict') -> 'list':
    return_list = []
    return_dict = []
    if search == "psu":
        cur.execute("SELECT `physical` FROM `graphics_card` WHERE `name`=%s", relation["graphics_card"])
        gpu_six_pin = 0
        gpu_eight_pin = 0
        for row in cur:
            temp_dict = ast.literal_eval(row[0])
            if 'Power Connectors' in temp_dict.keys():
                connectors = temp_dict['Power Connectors'].split(",")
                for connector in connectors:
                    count = connector.split("× ")
                    if count[1][0] == '6':
                        gpu_six_pin = int(count[0].strip())
                    elif count[1][0] == '8':
                        gpu_eight_pin = int(count[0].strip())
        cur.execute("SELECT * FROM psu")
        for row in cur:
            psu_six_pin = int(row[4].split("/")[0]) if row[4].split("/")[0].isnumeric() else 0
            psu_eight_pin = int(row[4].split("/")[1]) if row[4].split("/")[1].isnumeric() else 0
            if psu_six_pin >= gpu_six_pin and psu_eight_pin >= gpu_eight_pin:
                return_list.append(row[3])
                details = f"Company Name={row[1]};Series={row[2]};Model={row[3]};PciE pins 6/8={row[4]};Max Power={row[5]}"
                image = ""
                return_dict.append({"name": row[3], "image": image, "details": details})

    elif search == "pc_case":
        form_factor = ""
        cur.execute("SELECT `general information` FROM `motherboard` WHERE `name`=%s", relation["motherboard"])
        for row in cur:
            temp_dict = ast.literal_eval(row[0])
            if 'Form Factor' in temp_dict.keys():
                form_factor = temp_dict["Form Factor"]
        if form_factor == "":
            cur.execute("SELECT * FROM pc_case")
            for row in cur:
                return_list.append(row[3])
        else:
            cur.execute("SELECT * FROM pc_case WHERE `form_factor`=%s", form_factor)
            for row in cur:
                return_list.append(row[3])
        for return_value in return_list:
            cur.execute("SELECT * FROM pc_case WHERE `name`=%s", return_value)
            details = ""
            image = ""
            for row in cur:
                details = f"Form Factor={row[2]}"
                image = row[1]
            return_dict.append({"name": return_value, "image": image, "details": details})

    elif search == "cpu_cooler":
        if relation["cpu"] != "":
            cpu_socket = ""
            amd_cpu = False
            intel_cpu = True
            cur.execute("SELECT `cpu_socket` FROM intel_cpu WHERE `model`=%s", relation["cpu"])
            if cur.rowcount == 0:
                cur.execute("SELECT `cpu_socket` FROM amd_cpu WHERE `model`=%s", relation["cpu"])
                intel_cpu = False
                amd_cpu = True
            for row in cur:
                cpu_socket = row[0]
            if amd_cpu:
                if cpu_socket == "AM4":
                    cur.execute("SELECT * FROM pc_cooler WHERE `AMD AM4`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
                elif cpu_socket == "TR4" or cpu_socket == "SP3":
                    cur.execute("SELECT * FROM pc_cooler WHERE `AMD TR4, SP3`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
            elif intel_cpu:
                if cpu_socket == "FCLGA2066":
                    cur.execute("SELECT * FROM pc_cooler WHERE `LGA 2066`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
                elif cpu_socket == "FCLGA1200" or cpu_socket[0:-1] == "FCLGA115":
                    cur.execute("SELECT * FROM pc_cooler WHERE `LGA 115X, 1200`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
        elif relation["motherboard"] != "":
            motherboard_socket = ""
            cur.execute("SELECT `general information` FROM `motherboard` WHERE `name`=%s", relation["motherboard"])
            for row in cur:
                temp_dict = ast.literal_eval(row[0])
                if 'Socket(s)' in temp_dict.keys():
                    motherboard_socket = temp_dict["Socket(s)"]
            if motherboard_socket != "":
                if motherboard_socket == "AM4":
                    cur.execute("SELECT * FROM pc_cooler WHERE `AMD AM4`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
                elif motherboard_socket == "TR4" or motherboard_socket == "SP3":
                    cur.execute("SELECT * FROM pc_cooler WHERE `AMD TR4, SP3`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
                elif motherboard_socket == "LGA 2066":
                    cur.execute("SELECT * FROM pc_cooler WHERE `LGA 2066`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
                elif motherboard_socket == "LGA 1200" or motherboard_socket[0:-1] == "LGA 115":
                    cur.execute("SELECT * FROM pc_cooler WHERE `LGA 115X, 1200`=%s", "Yes")
                    for row in cur:
                        return_list.append(row[3])
        else:
            cur.execute("SELECT * FROM pc_cooler")
            for row in cur:
                return_list.append(row[3])
        for return_value in return_list:
            cur.execute("SELECT * FROM pc_cooler WHERE `model`=%s", return_value)
            details = ""
            image = ""
            for row in cur:
                details = f"Brand={row[2]};Height={row[4]};Width={row[5]};Depth={row[6]};AMD AM4={row[7]};AMD TR4={row[8]};AMD SP3={row[8]};LGA 115X={row[9]};LGA 1200={row[9]};LGA 2066={row[10]}"
                image = row[1]
            return_dict.append({"name": return_value, "image": image, "details": details})

    elif search == "storage":
        if relation["motherboard"] != "":
            m2_slot = False
            cur.execute("SELECT `m.2 slot` FROM `motherboard` WHERE `name`=%s", relation["motherboard"])
            for row in cur:
                temp_dict = ast.literal_eval(row[0])
                if len(temp_dict.keys()) > 0:
                    m2_slot = True
            if not m2_slot:
                cur.execute("SELECT `name` FROM `pc_storage`")
                for row in cur:
                    if "NVMe" not in row[0] and "M.2" not in row[0]:
                        return_list.append(row[0])
            else:
                cur.execute("SELECT `name` FROM `pc_storage`")
                for row in cur:
                    return_list.append(row[0])
        else:
            cur.execute("SELECT `name` FROM `pc_storage`")
            for row in cur:
                return_list.append(row[0])
        for return_value in return_list:
            cur.execute("SELECT * FROM pc_storage WHERE `name`=%s", return_value)
            details = ""
            image = ""
            for row in cur:
                details = f"Capacity={row[3]};Interface={row[4]}"
                image = row[2]
            return_dict.append({"name": return_value, "image": image, "details": details})

    elif search == "memory":
        motherboard_memory_protocol = ""
        if relation["motherboard"] != "":
            cur.execute("SELECT `memory` FROM `motherboard` WHERE `name`=%s", relation["motherboard"])
            for row in cur:
                temp_dict = ast.literal_eval(row[0])
                if 'Slot Protocol' in temp_dict.keys():
                    motherboard_memory_protocol = temp_dict["Slot Protocol"]
            cur.execute("SELECT `product_name` FROM pc_ram WHERE `memory_type`=%s", motherboard_memory_protocol)
            for row in cur:
                return_list.append(row[0])
        if relation["cpu"] != "":
            cpu_memory_type = ""
            cur.execute("SELECT * FROM `amd_cpu` WHERE `model`=%s", relation["cpu"])
            if cur.rowcount != 0:
                for row in cur:
                    cpu_memory_type = row[6]
            else:
                cur.execute("SELECT * FROM `intel_cpu` WHERE `model`=%s", relation["cpu"])
                for row in cur:
                    cpu_memory_type = row[6]
            if motherboard_memory_protocol == "":
                cur.execute("SELECT `memory_type`,`product_name` FROM pc_ram")
                for row in cur:
                    if row[0] in cpu_memory_type and row[0] != "":
                        return_list.append(row[1])
            else:
                if motherboard_memory_protocol not in cpu_memory_type:
                    return_list = []
        if relation["motherboard"] == "" and relation["cpu"] == "":
            cur.execute("SELECT `product_name` FROM pc_ram")
            for row in cur:
                return_list.append(row[0])
        for return_value in return_list:
            cur.execute("SELECT * FROM pc_ram WHERE `product_name`=%s", return_value)
            details = ""
            image = ""
            for row in cur:
                details = f"Memory Type={row[3]};Form Factor={row[4]};Capacity={row[5]};Speed={row[6]}"
                image = row[1]
            return_dict.append({"name": return_value, "image": image, "details": details})

    elif search == "cpu":
        motherboard_socket = ""
        if relation["motherboard"] != "":
            cur.execute("SELECT `general information` FROM `motherboard` WHERE `name`=%s", relation["motherboard"])
            for row in cur:
                temp_dict = ast.literal_eval(row[0])
                if 'Socket(s)' in temp_dict.keys():
                    motherboard_socket = temp_dict["Socket(s)"]
                    temp_list = motherboard_socket.split(" ")
                    if len(temp_list) == 2:
                        motherboard_socket = "FC"+temp_list[0]+temp_list[1]
            cur.execute("SELECT `model` FROM `amd_cpu` WHERE `cpu_socket`=%s", motherboard_socket)
            for row in cur:
                return_list.append(row[0])
            cur.execute("SELECT `model` FROM `intel_cpu` WHERE `cpu_socket`=%s", motherboard_socket)
            for row in cur:
                return_list.append(row[0])
        if relation["memory"] != "":
            ram_memory_type = ""
            cur.execute("SELECT `memory_type` FROM `pc_ram` WHERE `product_name`=%s", relation["memory"])
            for row in cur:
                ram_memory_type = row[0]
            cur.execute("SELECT `model` FROM `amd_cpu` WHERE `system_memory_type`=%s", ram_memory_type)
            memory_list = []
            for row in cur:
                memory_list.append(row[0])
            cur.execute("SELECT `model`,`system_memory_type` FROM `intel_cpu`")
            for row in cur:
                if ram_memory_type in row[1]:
                    memory_list.append(row[0])
            if motherboard_socket != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(memory_list))
                return_list = intersection
            else:
                return_list = memory_list
        if relation["cpu_cooler"] != "":
            cooler_sockets = []
            cur.execute("SELECT `AMD AM4`,`AMD TR4, SP3`,`LGA 115X, 1200`,`LGA 2066` FROM `pc_cooler` WHERE `model`=%s", relation["cpu_cooler"])
            for row in cur:
                if row[0] == "Yes":
                    cooler_sockets.append("AM4")
                if row[1] == "Yes":
                    cooler_sockets.append("TR4")
                    cooler_sockets.append("SP3")
                if row[2] == "Yes":
                    cooler_sockets.append("FCLGA115")
                    cooler_sockets.append("FCLGA1200")
                if row[2] == "Yes":
                    cooler_sockets.append("FCLGA2066")
            cooler_list = []
            cur.execute("SELECT `model`,`cpu_socket` FROM `amd_cpu`")
            for row in cur:
                for socket in cooler_sockets:
                    if socket in row[1]:
                        cooler_list.append(row[0])
                        break
            cur.execute("SELECT `model`,`cpu_socket` FROM `intel_cpu`")
            for row in cur:
                for socket in cooler_sockets:
                    if socket in row[1]:
                        cooler_list.append(row[0])
                        break
            if len(return_list) != 0:
                return_set = set(return_list)
                intersection = list(return_set.intersection(cooler_list))
                return_list = intersection
            else:
                return_list = cooler_list
        if relation["memory"] == "" and relation["motherboard"] == "" and relation["cpu_cooler"] == "":
            cur.execute("SELECT `model` FROM `amd_cpu`")
            for row in cur:
                return_list.append(row[0])
            cur.execute("SELECT `model` FROM `intel_cpu`")
            for row in cur:
                return_list.append(row[0])
        for return_value in return_list:
            cur.execute("SELECT * FROM amd_cpu WHERE `model`=%s", return_value)
            if cur.rowcount == 0:
                cur.execute("SELECT * FROM intel_cpu WHERE `model`=%s", return_value)
            details = ""
            image = ""
            for row in cur:
                details = f"Family Name={row[2]};CPU Socket={row[3]};PciE Version={row[4]};Default TDP={row[5]};System Memory Type={row[6]}"
            return_dict.append({"name": return_value, "image": image, "details": details})

    elif search == "graphics_card":
        if relation["motherboard"] != "":
            graphic_expansion_slots = []
            cur.execute("SELECT `expansion slots` FROM motherboard WHERE `name`=%s", relation["motherboard"])
            for row in cur:
                temp_dict = ast.literal_eval(row[0])
                if 'Slots' in temp_dict.keys():
                    graphic_expansion_slots = temp_dict["Slots"].split(",")
            cur.execute("SELECT * FROM `graphics_card`")
            for row in cur:
                temp_dict = ast.literal_eval(row[6])
                if 'Interface' in temp_dict.keys():
                    for slot in graphic_expansion_slots:
                        if slot[9:-5].strip(" ") == temp_dict['Interface'][12:]:
                            return_list.append(row[1])
                            details = ""
                            some_dict = ast.literal_eval(row[2])
                            for k in some_dict.keys():
                                details = details + k + "=" + some_dict[k] + ";"
                            image = row[8][4:-1]
                            return_dict.append({"name": row[1], "image": image, "details": details[0:-1]})
                            break
        if relation["psu"] != "":
            psu_list = []
            cur.execute("SELECT `pcie_pin_6/8` FROM `psu` WhERE `model`=%s", relation["psu"])
            psu_six_pin = 0
            psu_eight_pin = 0
            for row in cur:
                psu_six_pin = int(row[0].split("/")[0]) if row[0].split("/")[0].isnumeric() else 0
                psu_eight_pin = int(row[0].split("/")[1]) if row[0].split("/")[1].isnumeric() else 0
            cur.execute("SELECT * FROM `graphics_card`")
            for row in cur:
                gpu_six_pin = 0
                gpu_eight_pin = 0
                temp_dict = ast.literal_eval(row[6])
                if 'Power Connectors' in temp_dict.keys():
                    connectors = temp_dict['Power Connectors'].split(",")
                    for connector in connectors:
                        count = connector.split("× ")
                        if count[1][0] == '6':
                            gpu_six_pin = int(count[0].strip())
                        elif count[1][0] == '8':
                            gpu_eight_pin = int(count[0].strip())
                    if psu_six_pin >= gpu_six_pin and psu_eight_pin >= gpu_eight_pin:
                        psu_list.append(row[1])
                        if row[1] not in return_list:
                            details = ""
                            some_dict = ast.literal_eval(row[2])
                            for k in some_dict.keys():
                                details = details + k + "=" + some_dict[k] + ";"
                            image = row[8][4:-1]
                            return_dict.append({"name": row[1], "image": image, "details": details[0:-1]})
            if relation["motherboard"] != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(psu_list))
                return_list = intersection
            else:
                return_list = psu_list
            del_dict = []
            for x in return_dict:
                if x["name"] not in return_list:
                    del_dict.append(x)
            for x in del_dict:
                return_dict.remove(x)
        if relation["motherboard"] == "" and relation["psu"] == "":
            cur.execute("SELECT * FROM `graphics_card`")
            for row in cur:
                return_list.append(row[1])
                details = ""
                temp_dict = ast.literal_eval(row[2])
                for k in temp_dict.keys():
                    details = details + k + "=" + temp_dict[k] + ";"
                image = row[8][4:-1]
                return_dict.append({"name": row[1], "image": image, "details": details[0:-1]})

    elif search == "motherboard":
        if relation["pc_case"] != "":
            case_form_factor = ""
            cur.execute("SELECT `form_factor` FROM pc_case WHERE `name`=%s", relation["pc_case"])
            for row in cur:
                case_form_factor = row[0]
            cur.execute("SELECT * FROM `motherboard`")
            for row in cur:
                temp_dict = ast.literal_eval(row[3])
                if 'Form Factor' in temp_dict.keys():
                    if temp_dict["Form Factor"] == case_form_factor:
                        return_list.append(row[2])
                        details = ""
                        some_dict = ast.literal_eval(row[3])
                        for k in some_dict.keys():
                            details = details + k + "=" + some_dict[k] + ";"
                        image = row[1]
                        return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})
        if relation["cpu_cooler"] != "":
            socket_list = []
            cur.execute("SELECT `AMD AM4`,`AMD TR4, SP3`,`LGA 115X, 1200`,`LGA 2066` FROM `pc_cooler` WHERE `model`=%s",relation["cpu_cooler"])
            for row in cur:
                if row[0] == "Yes":
                    socket_list.append("AM4")
                if row[1] == "Yes":
                    socket_list.append("TR4")
                    socket_list.append("SP3")
                if row[2] == "Yes":
                    socket_list.append("LGA 115")
                    socket_list.append("LGA 1200")
                if row[2] == "Yes":
                    socket_list.append("LGA 2066")
            cur.execute("SELECT * FROM `motherboard`")
            secondary_list = []
            for row in cur:
                temp_dict = ast.literal_eval(row[3])
                if 'Socket(s)' in temp_dict.keys():
                    for socket in socket_list:
                        if socket in temp_dict["Socket(s)"]:
                            secondary_list.append(row[2])
                            if row[2] not in return_list:
                                details = ""
                                some_dict = ast.literal_eval(row[3])
                                for k in some_dict.keys():
                                    details = details + k + "=" + some_dict[k] + ";"
                                image = row[1]
                                return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})

            if relation["pc_case"] != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(secondary_list))
                return_list = intersection
            else:
                return_list = secondary_list
            del_dict = []
            for x in return_dict:
                if x["name"] not in return_list:
                    del_dict.append(x)
            for x in del_dict:
                return_dict.remove(x)
        if relation["storage"] != "":
            m_2_slot = True
            cur.execute("SELECT `name` FROM `pc_storage` WHERE `name`=%s", relation["storage"])
            for row in cur:
                if "NVMe" not in row[0] and "M.2" not in row[0]:
                    m_2_slot = not m_2_slot
            cur.execute("SELECT * FROM `motherboard`")
            secondary_list = []
            if m_2_slot:
                for row in cur:
                    temp_dict = ast.literal_eval(row[7])
                    if len(temp_dict.keys()) > 0:
                        secondary_list.append(row[2])
                        if row[2] not in return_list:
                            details = ""
                            some_dict = ast.literal_eval(row[3])
                            for k in some_dict.keys():
                                details = details + k + "=" + some_dict[k] + ";"
                            image = row[1]
                            return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})
            else:
                for row in cur:
                    secondary_list.append(row[2])
                    if row[2] not in return_list:
                        details = ""
                        some_dict = ast.literal_eval(row[3])
                        for k in some_dict.keys():
                            details = details + k + "=" + some_dict[k] + ";"
                        image = row[1]
                        return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})
            if relation["pc_case"] != "" or relation["cpu_cooler"] != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(secondary_list))
                return_list = intersection
            else:
                return_list = secondary_list
            del_dict = []
            for x in return_dict:
                if x["name"] not in return_list:
                    del_dict.append(x)
            for x in del_dict:
                return_dict.remove(x)
        if relation["memory"] != "":
            memory_type = ""
            cur.execute("SELECT `memory_type` FROM pc_ram where `product_name`=%s",relation["memory"])
            for row in cur:
                memory_type = row[0]
            cur.execute("SELECT * FROM `motherboard`")
            secondary_list = []
            for row in cur:
                temp_dict = ast.literal_eval(row[6])
                if 'Slot Protocol' in temp_dict.keys():
                    if temp_dict["Slot Protocol"] == memory_type:
                        secondary_list.append(row[2])
                        if row[2] not in return_list:
                            details = ""
                            some_dict = ast.literal_eval(row[3])
                            for k in some_dict.keys():
                                details = details + k + "=" + some_dict[k] + ";"
                            image = row[1]
                            return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})
            if relation["pc_case"] != "" or relation["cpu_cooler"] != "" or relation["storage"] != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(secondary_list))
                return_list = intersection
            else:
                return_list = secondary_list
            del_dict = []
            for x in return_dict:
                if x["name"] not in return_list:
                    del_dict.append(x)
            for x in del_dict:
                return_dict.remove(x)
        if relation["cpu"] != "":
            cpu_socket = ""
            cur.execute("SELECT `cpu_socket` FROM `amd_cpu` WHERE `model`=%s", relation["cpu"])
            for row in cur:
                cpu_socket = row[0]
            if cpu_socket == "":
                cur.execute("SELECT `cpu_socket` FROM `intel_cpu` WHERE `model`=%s", relation["cpu"])
                for row in cur:
                    cpu_socket = row[0]
            cur.execute("SELECT * FROM `motherboard`")
            secondary_list = []
            for row in cur:
                temp_dict = ast.literal_eval(row[3])
                if 'Socket(s)' in temp_dict.keys():
                    motherboard_socket = temp_dict["Socket(s)"]
                    temp_list = motherboard_socket.split(" ")
                    if len(temp_list) == 2:
                        motherboard_socket = "FC" + temp_list[0] + temp_list[1]
                    if motherboard_socket == cpu_socket:
                        secondary_list.append(row[2])
                        if row[2] not in return_list:
                            details = ""
                            some_dict = ast.literal_eval(row[3])
                            for k in some_dict.keys():
                                details = details + k + "=" + some_dict[k] + ";"
                            image = row[1]
                            return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})
            if relation["pc_case"] != "" or relation["cpu_cooler"] != "" or relation["storage"] != "" or relation["memory"] != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(secondary_list))
                return_list = intersection
            else:
                return_list = secondary_list
            del_dict = []
            for x in return_dict:
                if x["name"] not in return_list:
                    del_dict.append(x)
            for x in del_dict:
                return_dict.remove(x)
        if relation["graphics_card"] != "":
            interface = ""
            cur.execute("SELECT `physical` FROM `graphics_card` WHERE `name`=%s", relation["graphics_card"])
            for row in cur:
                temp_dict = ast.literal_eval(row[0])
                if 'Interface' in temp_dict.keys():
                    interface = temp_dict['Interface'][12:]
            cur.execute("SELECT * FROM motherboard")
            secondary_list = []
            for row in cur:
                graphic_expansion_slots = []
                temp_dict = ast.literal_eval(row[5])
                if 'Slots' in temp_dict.keys():
                    graphic_expansion_slots = temp_dict["Slots"].split(",")
                for slot in graphic_expansion_slots:
                    if slot[9:-5].strip(" ") == interface:
                        secondary_list.append(row[2])
                        if row[2] not in return_list:
                            details = ""
                            some_dict = ast.literal_eval(row[3])
                            for k in some_dict.keys():
                                details = details + k + "=" + some_dict[k] + ";"
                            image = row[1]
                            return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})
            if relation["pc_case"] != "" or relation["cpu_cooler"] != "" or relation["storage"] != "" or relation["memory"] != "" or relation["cpu"] != "":
                return_set = set(return_list)
                intersection = list(return_set.intersection(secondary_list))
                return_list = intersection
            else:
                return_list = secondary_list
            del_dict = []
            for x in return_dict:
                if x["name"] not in return_list:
                    del_dict.append(x)
            for x in del_dict:
                return_dict.remove(x)
        if relation["pc_case"] == "" and relation["cpu_cooler"] == "" and relation["storage"] == "" and relation["memory"] == "" and relation["cpu"] == "" and relation["graphics_card"] == "":
            cur.execute("SELECT * FROM `motherboard`")
            for row in cur:
                return_list.append(row[2])
                details = ""
                some_dict = ast.literal_eval(row[3])
                for k in some_dict.keys():
                    details = details + k + "=" + some_dict[k] + ";"
                image = row[1]
                return_dict.append({"name": row[2], "image": image, "details": details[0:-1]})

    return return_dict
