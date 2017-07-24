#include "BufferPool.h"

BufferPool::BufferPool(int initialBuffers, int bufferSize) {

	this->bufferSize = bufferSize;
	this->buffers.reserve(initialBuffers);
	for (int i = 0; i < initialBuffers; i++) {
		this->buffers.push_back(createNewBuffer());
	}
	sem_init(&poolLock, 0, 1);
}

BufferPool::~BufferPool() {
	sem_wait(&poolLock);
	while (!buffers.empty()) {
		char* back = buffers.back();
		buffers.pop_back();
		delete back;
	}
	sem_post(&poolLock);
}

char* BufferPool::take() {
	sem_wait(&poolLock);
	char* back;
	if (buffers.empty()) {
		back = createNewBuffer();
	} else {
		back = buffers.back();
		buffers.pop_back();
	}
	sem_post(&poolLock);
	return back;
}

void BufferPool::give(char* elem) {
	sem_wait(&poolLock);
	buffers.push_back(elem);
	sem_post(&poolLock);
}

char* BufferPool::createNewBuffer() {
	return new char[bufferSize];
}
