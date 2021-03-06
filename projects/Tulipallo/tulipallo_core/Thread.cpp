/*
 * Tulipallo - The Java Finite Volume Method Simulation
 * Copyright (C) 2010 M2 Astronautics
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see http://www.gnu.org/licenses/.
 *
 */

#include "Thread.h"

Thread::Thread() {
    this->priority = 1;
    this->policy   = SCHED_FIFO;
    this->running  = false;
    
    this->runningMutex = new pthread_mutex_t;
    this->attributes   = new pthread_attr_t;
    
    Thread::initialize(this->runningMutex);
    Thread::initialize(this->attributes);
}

pthread_t Thread::getThread() {
    return this->thread;
}

bool Thread::isRunning() {
    bool local = false;
    
    lock(this->runningMutex);
    local = this->running;
    unlock(this->runningMutex);
    
    return local;
}

void Thread::initialize() 
        throw (ThreadException) {    
    lock(this->runningMutex);
    
    if(!this->running) {
        struct sched_param param;
        param.__sched_priority = this->priority;

        Thread::setSchedulePolicy(this->attributes, this->policy);
        Thread::setScheduleParameter(this->attributes, param);

        this->running = true;
        
        try {
            Thread::create(this->thread, this->attributes, threadExecute, 
                           this);
        }
        // not catching by reference so I can re-throw by value.
        catch(ThreadException e) {
            this->running = false;
            throw e;
        }
    }
    
    unlock(this->runningMutex);
}

void Thread::terminate() 
        throw (ThreadException) {
    lock(this->runningMutex);
    
    if(this->running) {
        this->running = false;
        Thread::cancel(this->thread);
    }
    
    unlock(this->runningMutex);
}

void Thread::execute() {
    pthread_cleanup_push(threadCleanup, this);
    
    pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, NULL);
    pthread_setcanceltype(PTHREAD_CANCEL_DEFERRED, NULL);
    
    pthread_testcancel();
    this->run();
    
    pthread_cleanup_pop(0);
}

int Thread::getPriority() {
    return this->priority;
}

void Thread::setPriority(int priority) {
    this->priority = priority;
}

int Thread::getPolicy() {
    return this->policy;
}

void Thread::setPolicy(int policy) {
    this->policy = policy;
}

void Thread::join() {
    join(this->thread);
}

bool Thread::equals(Thread& thread) {
    if(pthread_equal(this->thread, thread.thread) == 0)
        return true;
    else
        return false;
}

Thread::~Thread() {
    Thread::destroy(this->runningMutex);
    Thread::destroy(this->attributes);
    
    delete this->runningMutex;
    delete this->attributes;
}

