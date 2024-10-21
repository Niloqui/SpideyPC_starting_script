import subprocess
import time
import json

with open("SpideyPC_low_volume_config.json", "r") as f:
    configs = f.read()

print(configs)

configs = json.loads(configs)
volume = configs['Volume']
nircmdc_path = configs['nircmdc path']
sleep_time = configs['Sleep time in seconds']
keep_open = configs['Keep command prompt window open']


#subprocess.call("SpideyPC.exe", shell=True)
subprocess.Popen(["SpideyPC.exe"]) # , shell=True

time.sleep(sleep_time)

subprocess.Popen([nircmdc_path, "setappvolume", "SpideyPC.exe", volume])


print("End.\n")

if keep_open:
    subprocess.call("PAUSE", shell=True)