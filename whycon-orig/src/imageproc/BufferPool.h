#ifndef __BUFFERPOOL_H__
#define __BUFFERPOOL_H__

#include <semaphore.h>
#include <vector>

class BufferPool {

public:

	/** Create a pool of buffers with the specified number of
	 * initialBuffers of the specified size. This pool will
	 * automatically grow as needed until the specified maximum
	 * number of buffers. */
	BufferPool(int initialBuffers, int bufferSize);
	~BufferPool();
	char* take();
	void give(char*);

private:

	sem_t poolLock;
	int bufferSize;
	std::vector<char *> buffers;

	char * createNewBuffer();
};

#endif

/* end of BufferPool.h */
