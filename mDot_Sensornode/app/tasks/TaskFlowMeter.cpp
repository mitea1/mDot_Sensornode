/*
 * TaskFlowMeter.cpp
 *
 *  Created on: 23.10.2018
 *      Author: Adrian
 */

#include "TaskFlowMeter.h"

TaskFlowMeter::TaskFlowMeter(FlowMeter* flowMeter, Mutex* mutex, Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>* queue) {
	this->flowMeter = flowMeter;
	setMutex(mutex);
	setQueue(queue);
}
TaskFlowMeter::TaskFlowMeter(FlowMeter* flowMeter, Mutex* mutex, Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>* queue,
		osPriority priority, uint32_t stackSize, unsigned char* stackPointer):TaskFlowMeter(flowMeter,mutex,queue){
	setPriority(priority);
	setStackSize(stackSize);
	setStackPointer(stackPointer);
	setState(SLEEPING);
}

TaskFlowMeter::~TaskFlowMeter() {
	// TODO Auto-generated destructor stub
}

osStatus TaskFlowMeter::start(){
	this->setState(RUNNING);
	this->thread = new rtos::Thread(callBack,this);
}

osStatus TaskFlowMeter::stop(){
	thread->terminate();
	setState(SLEEPING);
	delete this->thread;
}

void TaskFlowMeter::callBack(void const* data){
	// WOODHAMMER METHOD of Casting!
	const TaskFlowMeter* constInstance = static_cast<const TaskFlowMeter* >(data);
	TaskFlowMeter* instance = const_cast<TaskFlowMeter*>(constInstance);

	instance->measure();
}

void TaskFlowMeter::attachIdleHook(void (*fptr) (void)){
	this->thread->attach_idle_hook(fptr);
}

void TaskFlowMeter::measure(){
	FlowMeterMessage flowMeterMessage;

	while(true){
		mutexFlowMeter->lock(osWaitForever);
		flowMeterMessage.setCurrentFlowrate(flowMeter->getCurrentFlowrate());
		flowMeterMessage.setCurrentVolume(flowMeter->getCurrentVolume());
		flowMeterMessage.setTotalFlowrate(flowMeter->getTotalFlowrate());
		flowMeterMessage.setTotalVolume(flowMeter->getTotalVolume());
		mutexFlowMeter->unlock();

		queue->put(&flowMeterMessage,osWaitForever);
		osDelay(FLOWMETER__TASK_DELAY_MS);
	}
}

void TaskFlowMeter::setQueue(Queue<FlowMeterMessage,FLOWMETER_QUEUE_LENGTH>* queueFlowMeter){
	this->queue = queueFlowMeter;
}

void TaskFlowMeter::setMutex(Mutex* mutex){
	this->mutexFlowMeter = mutex;
}

void TaskFlowMeter::setPriority(osPriority priority){
	this->priority = priority;
}

void TaskFlowMeter::setStackSize(uint32_t stackSize){
	this->stack_size = stackSize;
}

void TaskFlowMeter::setStackPointer(unsigned char* stackPointer){
	this->stack_pointer = stackPointer;
}

void TaskFlowMeter::setState(TASK_STATE taskState){
	this->state = taskState;
}

TASK_STATE  TaskFlowMeter::getState(){
	return this->state;
}
