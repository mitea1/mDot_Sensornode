/**
 * @file LoRaConfig.h
 *
 * @author Adrian
 * @date Jun 11, 2016
 *
 */

#include <string>
#include <stdint-gcc.h>
#include <vector>
#ifndef LORACONFIG_H_
#define LORACONFIG_H_

#define LORA_NETWORK_NAME			"conduitgwy"
#define LORA_NETWORK_PASSPHRASE		"conduitgwy"

#define LORA_SUBBAND_0						0
#define LORA_SUBBAND_1						1
#define LORA_SUBBAND_2						2
#define LORA_SUBBAND_3						3
#define LORA_SUBBAND_4						4
#define LORA_SUBBAND_5						5
#define LORA_SUBBAND_6						6
#define LORA_SUBBAND_7						7
#define LORA_SUBBAND_8						8

#define LORA_SPREADING_FACTOR_7				7
#define LORA_SPREADING_FACTOR_8				8
#define LORA_SPREADING_FACTOR_9				9
#define LORA_SPREADING_FACTOR_10			10
#define LORA_SPREADING_FACTOR_11			11
#define LORA_SPREADING_FACTOR_12			12

#define LORA_TX_POWER_2_DBM					2
#define LORA_TX_POWER_4_DBM					4
#define LORA_TX_POWER_8_DBM					8
#define LORA_TX_POWER_16_DBM				16
#define LORA_TX_POWER_20_DBM				20

#define LORA_ACKNOWLEDGE_RETRIES_0			0
#define LORA_ACKNOWLEDGE_RETRIES_1			1
#define LORA_ACKNOWLEDGE_RETRIES_2			2

/**
 * LoRa Modes.
 */
enum LORA_MODE{
	LORA_MODE_0_OFF = 0,//!< LORA_MODE_0
	LORA_MODE_1 = 1,//!< LORA_MODE_1
	LORA_MODE_2 = 2,//!< LORA_MODE_2
	LORA_MODE_3 = 3,//!< LORA_MODE_3
	LORA_MODE_4 = 4,//!< LORA_MODE_4
	LORA_MODE_5 = 5,//!< LORA_MODE_5
};

/**
 * Join Modes for LoRa
 */
enum JOIN_MODE{
	OTA = 0,//!< OTTA
	ABP = 1 //!< ABP
};

//static uint8_t LORA_APP_EUI_MSB[] = { 0x70, 0xB3, 0xD5, 0x7E, 0xD0, 0x01, 0x35, 0x27 };//lsb{ 0x27, 0x35, 0x01, 0xD0, 0x7E, 0xD5, 0xB3, 0x70 };
//static uint8_t LORA_APP_KEY_MSB[]   = { 0xE8, 0x6B, 0x78, 0x6D, 0x2C, 0xF8, 0xF8, 0x9C, 0x76, 0xBA, 0x29, 0x57, 0xEA, 0xF7, 0xBA, 0x04 };//lsb{ 0x04, 0xBA, 0xF7, 0xEA, 0x57, 0x29, 0xBA, 0x76, 0x9C, 0xF8, 0xF8, 0x2C, 0x6D, 0x78, 0x6B, 0xE8 };
//static uint8_t LORA_DEVICE_EUI_MSB[] = { 0x00, 0xA8, 0x78, 0x61, 0x4A, 0xD2, 0xB4, 0x88 };//lsb{ 0x88, 0xB4, 0xD2, 0x4A, 0x61, 0x78, 0xA8, 0x00 };

static uint8_t LORA_APP_EUI_MSB[] = { 0x70, 0xB3, 0xD5, 0x7E, 0xF0, 0x00, 0x41, 0x78 };
static uint8_t LORA_APP_KEY_MSB[]   = { 0x0B, 0xC0, 0x6E, 0x37, 0x33, 0x80, 0xC3, 0xE9, 0x6D, 0xD4, 0xBD, 0x3A, 0x34, 0x3E, 0xFC, 0xB4 };
static uint8_t LORA_DEVICE_EUI_MSB[] = {0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77};
/**
 * @class LoRaConfig
 * @brief A configuration container for the LoRa Module.
 * All its configuration values are stored an held inside
 * this Class. Depending on the LORA_MODE it sets all the configuration values.
 */
class LoRaConfig {
public:
	LoRaConfig();
	virtual ~LoRaConfig();

	/**
	 * @brief Generates a configuration according to the chosen LORA_MODE
	 * by setting all LoRa Module specific configuration values depending on the chosen LORA_MODE
	 * @param desiredMode the mode to build the configuration according to
	 */
	void build(LORA_MODE desiredMode);

	/**
	 * @brief Gets info if the Network to which the LoRa Module sings up
	 * is public or not from its Configuration
	 */
	bool isPublic();

	/**
	 * @brief Gets info if LoRa Module will be active and run or not
	 * from its Configuration
	 * @return
	 */
	bool isActiv();

	/**
	 * @brief Gets the name of the Network to which the LoRa Module sings up
	 * from its Configuration
	 * @return
	 */
	std::string getNetworkName();

	/**
	 * @brief Gets the Passphrase of the Network to which the LoRa Module sings up
	 * from its Configuration
	 * @return
	 */
	std::string getNetworkPassphrase();

	/**
	 * @brief Gets the Network Address. Only used when using ABP JoinMode
	 * @return
	 */
	std::string getNetworkAddress();

	/**
	 * @brief Gets the App EUI
	 * @return
	 */
	std::vector<uint8_t> getAppEUI();

	/**
	 * @brief Gets the App Key
	 * @return
	 */
	std::vector<uint8_t> getAppKey();

	/**
	 * @brief Gets the Device EUI
	 * @return
	 */
	std::vector<uint8_t> getDeviceEUI();

	/**
	 * @brief Gets the frequency SubBand that will be used by the LoRa Module to
	 * send and receive its data from its Configuration
	 * @return
	 */
	uint8_t getFrequencySubBand();

	/**
	 * @brief Gets the spreading Factor that the LoRa Module will us for data transmission
	 * from its Configuration
	 * @return
	 */
	uint8_t getSpreadingFactor();

	/**
	 * @brief Gets the transmission Power of the LoRa Module from its Configuration
	 * @return
	 */
	uint8_t getTxPowerdBm();

	/**
	 * @brief Gets the number of Acknowledgment Retries that will be made
	 * from its Configuration
	 * @return
	 */
	uint8_t getAcknowledgeRetries();

	/**
	 * @brief Gets the Actual LORA_MODE of the built LoRaConfiguration
	 * from its Configuration
	 * @return
	 */
	LORA_MODE getLORA_MODE();

	/**
	 * @brief Gets the Actual JOIN_MODE of the built LoRaConfiguration
	 * form its Configuration
	 * @return
	 */
	JOIN_MODE getJOIN_MODE();


private:
	std::string* networkName;
	std::string* networkPassphrase;
	std::string* networkAddress;
	std::vector<uint8_t>* appEUI;
	std::vector<uint8_t>* appKey;
	std::vector<uint8_t>* deviceEUI;
	bool publicity;
	bool activity;
	uint8_t frequencySubBand;
	uint8_t spreadingFactor;
	uint8_t txPowerdBm;
	uint8_t acknowledgeRetries;

	LORA_MODE loraMode;
	JOIN_MODE joinMode;


	/**
	 * @brief Sets the Network publicity of the network that will be used in the Configuration
	 * @param
	 */
	void setNetworkPublicity(bool publicity);

	/**
	 * @brief Sets the Activity of the LoRa module for the Configuration
	 * @param activity true = module will be active false = module will not be active
	 */
	void setActivity(bool activity);

	/**
	 * @brief Sets the Name of the Network that will be used in the Configuration
	 * @param networkName the name of the network
	 */
	void setNetworkName(char* networkName);

	/**
	 * @brief Sets the Passphrase of the Network that will be used in the Configuration
	 * @param networkPassphrase passphrase of the Network
	 */
	void setNetworkPassphrase(char* networkPassphrase);

	/**
	 * @brief Sets the Networkaddress of the Network that will be used in the Configuration
	 * @param networkAddress
	 */
	void setNetworkAddress(char* networkAddress);

	/**
	 * @brief Sets the APP EUI for OTAA
	 * @param appEUI
	 */
	void setAppEUI();

	/**
	 * @brief Sets the APP Key for OTAA
	 * @param appKey
	 */
	void setAppKey();

	/**
	 * @brief Sets the device EUI for OTAA
	 * @param deviceEUI
	 */
	void setDeviceEUI();


	/**
	 * @brief Sets the SubBand that will be used in by the LoRa Module in the Configuration
	 * @param subBand the SubBand that will be used
	 */
	void setFrequencySubBand(uint8_t subBand);

	/**
	 * @brief Sets the spreading Factor of a LoRa Data Transmission in the Configuration
	 * @param spreadingFactor
	 */
	void setSpreadingFactor(uint8_t spreadingFactor);

	/**
	 * @brief Sets the Data transmission Power via LoRa in the Configuration
	 * @param
	 */
	void setTxPowerdBm(uint8_t );

	/**
	 * @brief Set the Acknowledgment Retries in the Configuration
	 * @param
	 */
	void setAcknowledgeRetries(uint8_t);

	/**
	 * @brief Sets the LORA_MODE of the Configuration
	 * @param
	 */
	void setLORA_MODE(LORA_MODE);

	/**
	 * @brief Sets the Join Mode to a Network
	 * @param
	 */
	void setJOIN_MODE(JOIN_MODE);

};

#endif /* LORACONFIG_H_ */
