#include <iostream>
#include "src/lib/Greeting.h"

int main()
{
    int i;
    Greeting *greet = new Greeting();
    std::cout << greet->getGreetingMessage() << std::endl;
     
}
