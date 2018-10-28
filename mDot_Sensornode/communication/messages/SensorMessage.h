/**
 * @file SensorMessage.h
 *
 * @author Adrian
 * @date 01.06.2016
 *
 */

#ifndef MESSAGES_SENSORMESSAGE_H_
#define MESSAGES_SENSORMESSAGE_H_

/**
 * @class SensorMessage
 * @brief The Base Class of a Container that can hold acquired values from a Sensor. The container will be
 * transported via a MessageQueue between different Tasks.
 */
class SensorMessage {
public:
	SensorMessage();
	virtual ~SensorMessage();

	/**
	 * Gets a small LoRaMessage Type Formated String from the SensorMessage.
	 * This String can later be used for transportation via LoRa
	 * @return
	 */
	virtual char* getLoRaMessageString();

private:
//	virtual char* getLoRaMessageId();

};

#endif /* MESSAGES_SENSORMESSAGE_H_ */
