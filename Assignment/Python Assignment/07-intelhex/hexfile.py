#Implement a python to check the intel hex file is corrupted or not corrupted.

appFile = open("MyAppFile.hex")

appLines = appFile.readlines()

appFile = open("MyAppFile.hex").read()

EOF = appLines[len(appLines)-1]

if EOF != (":00000001FF\n"):
    print("No EOF record in last line of file. File may be corrupted.")
else:
    with open("MyAppFile and Boot.hex", "a") as appStrip:
        appStrip.writelines([item for item in appLines[:-1]])

    with open("MyAppFile and Boot.hex", "r") as appFile:
        appObcode = appFile.read()

    with open("MyBootFile.hex", "r") as bootFile:
        bootObcode = bootFile.read()

    comboData = appObcode + bootObcode

    with open("Boot.hex", "w") as comboFile:
        comboFile.write(comboData)
