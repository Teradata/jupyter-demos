import os
home_dir = '/home/jovyan/JupyterLabRoot/'
menu_dir = home_dir + "Menus/"
menu_cnt = 0

filelist = os.listdir()
for fn in filelist:
    if fn.endswith(".txt"):
        md_name = fn.replace(".txt",".md")
        
        txt_file = open(fn, "r", encoding="iso-8859-1")
        txt_content = txt_file.read()
        txt_file.close()       

        f = open(md_name, "w", encoding="utf-8")
        f.write(txt_content)
        f.close
        
        menu_cnt = menu_cnt + 1

print ("created", menu_cnt, "Menus")    
    