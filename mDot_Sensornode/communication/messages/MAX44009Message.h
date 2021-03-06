/**
 * @file MAX44009Message.h
 *
 * @author Adrian
 * @date 01.06.2016
 *
 */

#ifndef MESSAGES_MAX44009MESSAGE_H_
#define MESSAGES_MAX44009MESSAGE_H_

#include <string>
#include <vector>
#include <stdio.h>

#include "../communication/messages/SensorMessage.h"

/**
 * @class MAX44009Message
 * @brief A Container that can hold acquired lux values from the MAX44009. The container will be
 * transported via a MessageQueue between different Tasks.
 */
class MAX44009Message:public SensorMessage {
public:
	MAX44009Message();
	virtual ~MAX44009Message();

	/**
	 * Sets the lux value of the MAX44009 Message
	 * @param lux lux value to be stored
	 */
	void setLux(float lux);

	/**
	 * Gets the lux value from the MAX44009 Message
	 * @return
	 */
	float getLux();


	/**
	 * Gets a small LoRaMessage Type Formated String from the MAX44009Message.
	 * This String can later be used for transportation via LoRa
	 * @return
	 */
	virtual char* getLoRaMessageString();

private:
	std::string loraMessage;
	std::vector<std::string> loraMessageId;

	float lux;

};

#endif /* MESSAGES_MAX44009MESSAGE_H_ */
