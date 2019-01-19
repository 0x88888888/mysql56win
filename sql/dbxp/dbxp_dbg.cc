#include "dbxp_dbg.h"

#include "my_global.h"                          /* NO_EMBEDDED_ACCESS_CHECKS */
#include "sql_priv.h"
#include "unireg.h"                    // REQUIRED: for other includes
#include "sql_insert.h"
#include "sql_update.h"                         // compare_record
#include "sql_base.h"                           // close_thread_tables
#include "sql_cache.h"                          // query_cache_*
#include "key.h"                                // key_copy
#include "lock.h"                               // mysql_unlock_tables
#include "sp_head.h"
#include "sql_view.h"         // check_key_in_view, insert_view_fields
#include "sql_table.h"        // mysql_create_table_no_lock
#include "sql_acl.h"          // *_ACL, check_grant_all_columns
#include "sql_trigger.h"
#include "sql_select.h"
#include "sql_show.h"
#include "rpl_slave.h"
#include "sql_parse.h"                          // end_active_trans
#include "rpl_mi.h"
#include "transaction.h"
#include "sql_audit.h"
#include "debug_sync.h"
#include "opt_explain.h"
#include "delayable_insert_operation.h"
#include "sql_tmp_table.h"    // tmp tables
#include "sql_optimizer.h"    // JOIN
#include "global_threads.h"
#ifdef WITH_PARTITION_STORAGE_ENGINE
#include "sql_partition.h"
#include "partition_info.h"            // partition_info
#endif /* WITH_PARTITION_STORAGE_ENGINE */

#include "debug_sync.h"

/*
sql_yacc.yyÖÐÓÐ
            lex->field_list.empty();
            lex->many_values.empty();
            lex->insert_list=0;


*/

void insert_comand_debug(char* FILE_NAME,
						 unsigned int LINE,
						 THD *thd, TABLE_LIST *table_list,
                  List<Item> &fields,
                  List<List_item> &values_list,
                  List<Item> &update_fields,
				  List<Item> &update_values) {
	 List_item *p_value_list;
	 Item *p_field;
	
     printf("%s , %08x\n:",FILE_NAME,LINE);
	 TABLE_LIST* t=table_list;
	 printf("all table name:\n");
	 /*
	 while (t)
	 {
		 printf("\t table_name : %s \n" ,t->table_name);

		 List_iterator<Item> fields_iter=fields;

		 while (p_field=fields_iter++)
		 {
			 *p_field->;
		 }
		 
		 List_iterator<List_item> value_iter=values_list;
		 while(p_value_list=value_iter++){
			  
		 }
		 

		 t=t->next_leaf;
	 }
	 */
	 
}




