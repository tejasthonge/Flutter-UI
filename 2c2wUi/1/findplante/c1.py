



class Demo:

    def __init__(self):
        print("in demo constructor ")

    print("jay shree ram")
    
    def instanceMethod(self):
        print("in instance maethod")


    @staticmethod
    def staticMethod():
        print("in static method ")



obj = Demo()

obj.instanceMethod()
Demo.staticMethod()
