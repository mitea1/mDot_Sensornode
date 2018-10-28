/*
 * FlowMeterMessage.cpp
 *
 *  Created on: 23.10.2018
 *      Author: Adrian
 */

#include "FlowMeterMessage.h"
#include "main.h"

FlowMeterMessage::FlowMeterMessage() {
	this->flowMessageId.push_back(FLOWMETER_CURRENT_FLOW_MESSAGE_ID);
	this->flowMessageId.push_back(FLOWMETER_CURRENT_VOLUME_MESSAGE_ID);
	this->flowMessageId.push_back(FLOWMETER_TOTAL_FLOW_MESSAGE_ID);
	this->flowMessageId.push_back(FLOWMETER_TOTAL_VOLUME_MESSAGE_ID);

}

FlowMeterMessage::~FlowMeterMessage() {
	// TODO Auto-generated destructor stub
}

void FlowMeterMessage::setCurrentFlowrate(double currentFlowrate){
	this->currentFlowrate = currentFlowrate;
}
double FlowMeterMessage::getCurrentFlowrate(){
	return this->currentFlowrate;
}
void FlowMeterMessage::setCurrentVolume(double currentVolume){
	this->currentVolume = currentVolume;
}
double FlowMeterMessage::getCurrentVolume(){
	return this->currentVolume;
}
void FlowMeterMessage::setTotalFlowrate(double totalFlowrate){
	this->totalFlowrate = totalFlowrate;
}
double FlowMeterMessage::getTotalFlowrate(){
	return this->totalFlowrate;
}
void FlowMeterMessage::setTotalVolume(double totalVolume){
	this->totalVolume = totalVolume;
}
double FlowMeterMessage::getTotalVolume(){
	return this->totalVolume;
}
char* FlowMeterMessage::getLoRaMessageString(){
	char buffer[20];
	flowMessage.clear();
	sprintf(buffer,"%s:%.3f,",flowMessageId.at(0).c_str(),(float)getCurrentFlowrate());
	flowMessage.append(buffer);
	sprintf(buffer,"%s:%.3f,",flowMessageId.at(1).c_str(),(float)getCurrentVolume());
	flowMessage.append(buffer);
	sprintf(buffer,"%s:%.3f,",flowMessageId.at(2).c_str(),(float)getTotalFlowrate());
	flowMessage.append(buffer);
	sprintf(buffer,"%s:%.3f,",flowMessageId.at(3).c_str(),(float)getTotalVolume());
	flowMessage.append(buffer);
	return (char*) flowMessage.c_str();
}
