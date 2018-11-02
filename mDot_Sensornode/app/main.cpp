#include "Application.h"
#include "ApplicationConfig.h"

int main() {
	Application application;

	application.init(APPLICATION_MODE_TEST);
    while (true) {
    	sleep();
    }

    return 0;
}
