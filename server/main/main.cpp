#include <iostream>
#include "third/jsonxx/jsonxx.h"

using namespace std;

int main()
{
    cout << "__SERVER_VERSION__:" << __SERVER_VERSION__ << endl;
    cout << "__SERVER_INNER_VERSION__:" << __SERVER_INNER_VERSION__ << endl;
    jsonxx::Object obj;
    obj << "name" << "james";
    cout << obj.json() << endl;
    return 0;
}
