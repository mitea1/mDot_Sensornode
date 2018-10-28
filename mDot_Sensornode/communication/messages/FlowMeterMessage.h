/*
 * FlowMeterMessage.h
 *
 *  Created on: 23.10.2018
 *      Author: Adrian
 */

#ifndef MESSAGES_FLOWMETERMESSAGE_H_
#define MESSAGES_FLOWMETERMESSAGE_H_

#include <stdio.h>
#include <stdint.h>
#include <string>
#include <vector>

#include "../communication/messages/SensorMessage.h"

class FlowMeterMessage: public SensorMessage {
public:
	FlowMeterMessage();
	virtual ~FlowMeterMessage();

	void setCurrentFlowrate(double currentFlowrate);
	double getCurrentFlowrate();
	void setCurrentVolume(double currentVolume);
	double getCurrentVolume();
	void setTotalFlowrate(double totalFlowrate);
	double getTotalFlowrate();
	void setTotalVolume(double totalVolume);
	double getTotalVolume();
	virtual char* getLoRaMessageString();
private:
	std::string flowMessage;
	std::vector<std::string> flowMessageId;

	double currentFlowrate;
	double currentVolume;
	double totalFlowrate;
	double totalVolume;

};

void pulesInputInterrupt(void);
#endif /* MESSAGES_FLOWMETERMESSAGE_H_ */
