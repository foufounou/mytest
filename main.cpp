#include <iostream>
#include <string>
#include <QWidget>
#include <QApplication>

void print(std::string s) {
    std::cout << s << std::endl;
}

int main(int argc, char** argv) {
    print("hello world");
    
    QApplication a(argc, argv);
    QWidget w;
    
    return a.exec();
}
