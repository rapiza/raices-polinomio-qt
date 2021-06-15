
import sys
from Dns_GUI3 import *
import numpy as np

class MyApp(QtWidgets.QMainWindow, Ui_MainWindow):

    def __init__(self):
        QtWidgets.QMainWindow.__init__(self)
        Ui_MainWindow.__init__(self)
        self.setupUi(self)
        self.btn.clicked.connect(self.calculos)

    def calculos(self):
        P = np.zeros([3])
        P[0] = float(self.crtico.toPlainText())
        P[1] = float(self.lineal.toPlainText())
        P[2] = float(self.indpt.toPlainText())
        raiz_str = 'Su resultado es:\n' + str(np.roots(P))
        self.rsult.setText(raiz_str)

if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    window = MyApp()
    window.show()
    sys.exit(app.exec_())