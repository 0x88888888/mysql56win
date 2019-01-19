/*****************************************************************************

Copyright (c) 2007, 2016, Oracle and/or its affiliates. All Rights Reserved.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; version 2 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Suite 500, Boston, MA 02110-1335 USA

*****************************************************************************/

/**************************************************//**
@file include/lock0priv.h
Lock module internal structures and methods.

Created July 12, 2007 Vasil Dimov
*******************************************************/

#ifndef lock0priv_h
#define lock0priv_h

#ifndef LOCK_MODULE_IMPLEMENTATION
/* If you need to access members of the structures defined in this
file, please write appropriate functions that retrieve them and put
those functions in lock/ */
#error Do not include lock0priv.h outside of the lock/ module
#endif

#include "univ.i"
#include "dict0types.h"
#include "hash0hash.h"
#include "trx0types.h"
#include "ut0lst.h"

/** A table lock 
   表锁数据结构
*/
struct lock_table_t {
	dict_table_t*	table;		/*!< database table in dictionary
					cache */
	UT_LIST_NODE_T(lock_t)
			locks;		/*!< list of locks on the same
					table，在同一个table上的所有锁 */
};

/** Record lock for a page 
    其中的bitmap负责整个page的记录锁,一个page对应这么一个结构
*/
struct lock_rec_t {
	ulint	space;			/*!< space id */
	ulint	page_no;		/*!< page number */
	ulint	n_bits;			/*!< number of bits in the lock
					bitmap; NOTE: the lock bitmap is
					placed immediately after the
					lock struct ，page 上锁的位图， n_bits与page的n_recs值一样 或者大一些 */
};

/** Lock struct; protected by lock_sys->mutex 
数据结构 lock_t是根据每个事务的页(或者每个表)进行定义的，
然而事务可能在不同的页上有多个行锁，因此这里还需要变量trx_locks将一个事务的所有锁信息进行链接
这样可以快速的查询一个事务中所有的锁信息trx_locks

每个事务都对应这么一个lock_t intance,一个页对应这么一个lock_t对象
trx中的  lock(trx_lock_t)中的wait_lock和trx_locks成员就是 lock_t结构


*/
struct lock_t {
	trx_t*		trx;		/*!< transaction owning the
					lock */
	UT_LIST_NODE_T(lock_t)
			trx_locks;	/*!< 
			一个事务可能不同的页上有不同奥的锁，
			所以用这个trx_locks链表连接不同的页的锁信息,
			所以事务可以根据这个链表信息去查询一个事务所拥有所有的锁信息。
			
			list of the locks of the transaction */
	ulint		type_mode;	/*!< 
                    
					第0-3位是LOCK_MODE ，这个为枚举lock_mode中定义的值 LOCK_IS = 0,
                                                                  LOCK_IX,
                                                                  LOCK_S,
                                                                  LOCK_X,
                                                                  LOCK_AUTO_INC,
                                                                  LOCK_NONE
					第4-7位是LOCK_TYPE :REC_LOCK,TABLE_LOCK，目前只用了第4和第5的bit
					
					第8位是LOCK_WAIT，LOCK_WAIT表示当前请求的锁没有被授权，处于等待的模式
					第9位是LOCK_GAP，LOCK_GAP表示该锁是一个GAP锁,只锁住before的区间,不需要锁住记录本身
					第10位是LOCK_REC_NOT_GAP,LOCK_REC_NOT_GAP表示只锁住记录
					第11位是LOCK_INSERT_INTENTION，表示插入意向锁，用于insert时检查锁冲突
					LOCK_TYPE==0表示LOCK_ORDINARY(=0)，锁住记录的同时，锁住before区间,就是 next-key lock ，锁住记录本身和记录之前的 gap
					LOCK_CONV_BY_OTHER(4096)		 表示锁是由其它事务创建的(比如隐式锁转换) 

				    lock type, mode, LOCK_GAP or
					LOCK_REC_NOT_GAP,
					LOCK_INSERT_INTENTION,
					wait flag, ORed */
	hash_node_t	hash;		/*!< 用于hash表中cells(buckets)上的链表,hash chain node for a record lock */
	dict_index_t*	index;		/*!< index for a record lock */
	union {
		lock_table_t	tab_lock;/*!< table lock */
		lock_rec_t	rec_lock;/*!< record lock */
	} un_member;			/*!< lock details */
};

/*********************************************************************//**
Gets the type of a lock.
@return	LOCK_TABLE or LOCK_REC */
UNIV_INLINE
ulint
lock_get_type_low(
/*==============*/
	const lock_t*	lock);	/*!< in: lock */

/*********************************************************************//**
Gets the previous record lock set on a record.
@return	previous lock on the same record, NULL if none exists */
UNIV_INTERN
const lock_t*
lock_rec_get_prev(
/*==============*/
	const lock_t*	in_lock,/*!< in: record lock */
	ulint		heap_no);/*!< in: heap number of the record */

/*********************************************************************//**
Cancels a waiting lock request and releases possible other transactions
waiting behind it. */
UNIV_INTERN
void
lock_cancel_waiting_and_release(
/*============================*/
	lock_t*	lock);	/*!< in/out: waiting lock request */

/*********************************************************************//**
Checks if some transaction has an implicit x-lock on a record in a clustered
index.
@return	transaction id of the transaction which has the x-lock, or 0 */
UNIV_INLINE
trx_id_t
lock_clust_rec_some_has_impl(
/*=========================*/
	const rec_t*		rec,	/*!< in: user record */
	const dict_index_t*	index,	/*!< in: clustered index */
	const ulint*		offsets)/*!< in: rec_get_offsets(rec, index) */
	MY_ATTRIBUTE((nonnull, warn_unused_result));

#ifndef UNIV_NONINL
#include "lock0priv.ic"
#endif

#endif /* lock0priv_h */
