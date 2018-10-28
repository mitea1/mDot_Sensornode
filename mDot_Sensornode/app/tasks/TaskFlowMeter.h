/*
 * TaskFlowMeter.h
 *
 *  Created on: 23.10.2018
 *      Author: Adrian
 */

#ifndef TASKS_TASKFLOWMETER_H_
#define TASKS_TASKFLOWMETER_H_

#include "FlowMeter.h"
#include "main.h"
#include "../communication/messages/FlowMeterMessage.h"

class TaskFlowMeter{
public:
	TaskFlowMeter(FlowMeter*, Mutex*, Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>*);
	TaskFlowMeter(FlowMeter*, Mutex*, Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>*,
			osPriority, uint32_t, unsigned char*);
	virtual ~TaskFlowMeter();

	/**
	 * Starts the task by building and its measurement
	 * @return
	 */
	osStatus start();

	/**
	 * Stops the task. Should only be used after start() was used
	 * @return
	 */
	osStatus stop();


	/**
	 * Gets the actual state of the Task either RUNNING or SLEEPING
	 * @return
	 */
	TASK_STATE getState();
private:
	rtos::Thread* thread;
	rtos::Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>* queue;
	rtos::Mutex* mutexFlowMeter ;
	osPriority priority;
	uint32_t stack_size;
	unsigned char *stack_pointer;

	TASK_STATE state;

	FlowMeter* flowMeter;


	/**
	 * @brief A Callback function thats called by the mbed::Thread of this TaskClass
	 * @param
	 */
	static void callBack(void const *);

	/**
	 * @brief Attaches the idle_hook for this task
	 * @param
	 */
	void attachIdleHook(void (*fptr) (void));

	/**
	 * @brief Threadsafe method that measures actual flow
	 */
	void measure();

	/**
	 * @brief Sets the message Queue of the Task where the measured values will be stored
	 * after the measurement
	 * @param queueAcceleration the queue where the MPU9250AccelerationMessage will be stored
	 */
	void setQueue(Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>* queueFlowMeter);

	/**
	 * @brief Sets the mutex thats used for a thread safe measurement
	 * @param mutexI2C the I2C mutex
	 */
	void setMutex(Mutex* mutexI2C);

	/**
	 * @brief Sets the priority of the Task
	 * @param priority priority of the Task
	 */
	void setPriority(osPriority priority);

	/**
	 * @brief Sets the size of the Task
	 * @param stackSize the stack size in Bytes
	 */
	void setStackSize(uint32_t stackSize);

	/**
	 * @brief Sets the stack pointer of for the task stack
	 * @param stackPointer
	 */
	void setStackPointer(unsigned char* stackPointer);


	/**
	 * @brief Sets the actual state of the Task
	 * @param taskState either RUNNING or SLEEPING
	 */
	void setState(TASK_STATE taskState);
};

//todo implement all member function don't inherit
#endif /* TASKS_TASKFLOWMETER_H_ */
