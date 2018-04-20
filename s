def ttc(vl, cod):
        not_inv = ""
        for k in range(len(cod)):
                for i in range(5):
                        for j in range(5):
                                if cod[k] == vl[i][j]:
                                        not_inv +=(str(i)+ str(i) + str(j) + "#" + str(j) + str(j) + str(i) + ";")
        print(invert(not_inv))
        choice()
        
def ctt(vl, text):
        des = ""      #desinverter
        sv = []       #separar virgula 
        sh = []       #separar #
        
        des = invert(text) 
        sv  = des.split(";")
        for i in range(len(sv) - 1):
                sh.append(sv[i].split("#"))
        
        print(sh)

        

        
        choice()
        
def invert(text):
        # inverter letras
        var = ""
        for i in range(0, len(text)):
                var += ((text[(len(text) - 1) - i]))
        return var 
                
def choice():
        vl = [["a","b","c","d","e"],
              ["f","g","h","i","j"],
              ["l","m","n","o","p"],
              ["q","r","s","t","u"],
              ["v","w","x","y","z"]]
        print("1. text to code")
        print("2. code to text")
        opt = input()
        
        if opt == "1":
                text = input("Texto : ")
                ttc(vl, text)
        elif opt == "2":
                text = input("Texto : ")
                ctt(vl, text) 
        else:
                choice()
               
choice()
