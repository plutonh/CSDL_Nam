#include <iostream>
#include <iomanip>

using namespace std;

 enum Color {
    COLOR_BLACK,
    COLOR_RED,
    COLOR_BLUE,
    COLOR_GREEN
 };

void floatExample() {
    float f = 123.456f;
    double d = 123.456;

    std::cout << std::setprecision(20);
    std::cout << "Float value: " << f << std::endl;
    std::cout << "Double value: " << d << std::endl;
}

void characterExample() {
    char ch = 'A';
    std::cout << "character: " << " value is "<< static_cast<int>(ch) << std::endl;
}

void cinExample() {
    cout << "your name? ";
    string name;
    cin >> name;

    cout << "your age? ";
    string age;
    getline(cin, age);
    //cin >> age;

    cout << name;
    cout << age;
}

void enumExample() {
    Color paint = COLOR_BLACK;
    Color house(COLOR_BLUE);
    Color apple(COLOR_RED);

    cout << paint << endl;    
}

void getinExample() {
    cout << "Enter: ";
    int x;
    cin >> x;
    cin.ignore(32767, '\n');
}

void printArray(const int array[], const int length) {
    for (int index = 0; index < length; ++index) {
        cout << array[index] << " ";
    }
    cout << endl;
}

void printArrayTest() {
    const int length = 5;
    int array[length] = {3, 5, 2, 1, 4};
    cout << "Your first value is: " << endl;
    printArray(array, length);
    for (int i = 0; i<length - 1; ++i) {
        int smallestindex = i;
        for (int j = i + 1; j < length; ++j) {
            if (array[smallestindex] > array[j])
                smallestindex = j;
        }

        int temp = array[smallestindex];
        array[smallestindex] = array[i];
        array[i] = temp;

        cout << "your array is: " << endl;
        printArray(array, length);
    }
    cout << "Now your array is: " << endl;
    printArray(array, length);
}

int main() {
    // floatExample();
    // characterExample();
    // cinExample();
    // enumExample();
    printArrayTest();
    return 0;
}