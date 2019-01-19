#include "dbg_redolog.h"


/*
从函数recv_parse_log_rec、mlog_parse_initial_log_record可知
根据redo log的格式，一个字节的type

*/
void dbg_print_redo_log(void* bytes, int len) {

   /* 可以直接调用mlog_parse_initial_log_record去得到type,space,page_no 这些值 */
}
