from util.DBConnUtil import Dbc

class test(Dbc):
    def __init__(self):
        pass
    def main(self):
        self.open()
        self.c.execute('Select * From Customers')
        print(self.c.fetchall())
        self.close()

if __name__ == "__main__":
    test().main()
