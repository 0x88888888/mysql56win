/*
 *  File Layout :
 *
 *     SOF                                  max_key_len(int)
 *     SOF + sizeof(int)                    crashed(bool)
 *     SOF + sizeof(int) + sizeof(bool)     DATA BEGINS HERE
 *
 */

#include "my_global.h"
#include "my_sys.h"

const long METADATA_SIZE = sizeof(int) + sizeof(bool);

/*
 * this is the node stores the key and file
 * position for the data row
 */
struct SDE_INDEX {
	uchar key[128];
	long long pos;
	int length;
};


//defines (doubly) linked list for internal list
struct SDE_NDX_NODE {
	SDE_INDEX key_ndx;
	SDE_NDX_NODE *next;
	SDE_NDX_NODE *prev;
};

class Spartan_index
{
public:
	Spartan_index();
	Spartan_index(int keylen);
	~Spartan_index();
	
	int open_index(char *path);
	int create_index(char *path, int keylen);
	int insert_key(SDE_INDEX *ndx, bool allow_dups);
	int delete_key(uchar *buf, long long pos, int key_len);
	int update_key(uchar *buf, long long pos, int key_len);
	long long get_index_pos(uchar *buf, int key_len);
    long long get_first_pos();
    uchar *get_first_key();
    uchar *get_last_key();
    uchar *get_next_key();
    uchar *get_prev_key();

    int close_index();
    int load_index();
    int destroy_index();
    SDE_INDEX *seek_index(uchar *key, int key_len);
    SDE_NDX_NODE *seek_index_pos(uchar *key, int key_len);
    int save_index();
    int trunc_index();
private:
	File index_file;
	int max_key_len;
	SDE_NDX_NODE *root;
	SDE_NDX_NODE *range_ptr;
	int block_size;
	bool crashed;
	int read_header();
	int write_header();
	long long write_row(SDE_INDEX *ndx);
	SDE_INDEX *read_row(long long position);
	long long curfpos();
};




