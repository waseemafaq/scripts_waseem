import os

with open("D:\Scripts\Data_Scripts\ping_test.txt") as file:
    ip_file = file.read()
    ip_file = ip_file.splitlines()

    for ip in ip_file:
        
        # # os.system('cls')
        # print("Pinging now:", ip)
        # print("-"*60)
        # os.system("Ping  -n 2 {}" .format(ip))

        response = os.popen(f"ping {ip} -n 2").read()
        if "Received = 2" and "Approximate" in response:
            print(f"UP {ip} Ping is Sucessful")
        else:
            print(f"DOWN {ip} Ping is Unsucessful")
