/*****************************************************************************

Copyright (c) 1995, 2009, Oracle and/or its affiliates. All Rights Reserved.

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

/******************************************************
@file include/fsp0types.h
File space management types

Created May 26, 2009 Vasil Dimov
*******************************************************/

#ifndef fsp0types_h
#define fsp0types_h

#include "univ.i"

#include "fil0fil.h" /* for FIL_PAGE_DATA */

/** @name Flags for inserting records in order
If records are inserted in order, there are the following
flags to tell this (their type is made byte for the compiler
to warn if direction and hint parameters are switched in
fseg_alloc_free_page) */
/* @{ */
#define	FSP_UP		((byte)111)	/*!< alphabetically upwards */
#define	FSP_DOWN	((byte)112)	/*!< alphabetically downwards */
#define	FSP_NO_DIR	((byte)113)	/*!< no order */
/* @} */

/** 
File space extent size (one megabyte) in pages 
FSP_EXTENT_SIZE == 64
*/
#define	FSP_EXTENT_SIZE		(1048576U / UNIV_PAGE_SIZE)

/** File space extent size (one megabyte) in pages for MAX page size */
#define	FSP_EXTENT_SIZE_MAX	(1048576 / UNIV_PAGE_SIZE_MAX)

/** File space extent size (one megabyte) in pages for MIN page size */
#define	FSP_EXTENT_SIZE_MIN	(1048576 / UNIV_PAGE_SIZE_MIN)


// FIL_PAGE_DATA   38
/** On a page of any file segment, data may be put starting from this
offset */
#define FSEG_PAGE_DATA		FIL_PAGE_DATA

/** @name File segment header
The file segment header points to the inode describing the file segment. */
/* @{ */
/** Data type for file segment header */
typedef	byte	fseg_header_t;

#define FSEG_HDR_SPACE		0	/*!< space id of the inode */
#define FSEG_HDR_PAGE_NO	4	/*!< page number of the inode */
#define FSEG_HDR_OFFSET		8	/*!< byte offset of the inode */

#define FSEG_HEADER_SIZE	10	/*!< Length of the file system
					header, in bytes */
/* @} */

/** Flags for fsp_reserve_free_extents @{ */
#define FSP_NORMAL	1000000
#define	FSP_UNDO	2000000
#define FSP_CLEANING	3000000
/* @} */

/* Number of pages described in a single descriptor page: currently each page
description takes less than 1 byte; a descriptor page is repeated every
this many file pages */
/* #define XDES_DESCRIBED_PER_PAGE		UNIV_PAGE_SIZE */
/* This has been replaced with either UNIV_PAGE_SIZE or page_zip->size. */

/** @name The space low address page map
The pages at FSP_XDES_OFFSET and FSP_IBUF_BITMAP_OFFSET are repeated
every XDES_DESCRIBED_PER_PAGE pages in every tablespace. */
/* @{ */
/*--------------------------------------*/
#define FSP_XDES_OFFSET			0	/* !< extent descriptor */

/* 
当((page_no & (UNIV_PAGE_SIZE - 1))== FSP_IBUF_BITMAP_OFFSET)
说明page address is an ibuf bitmap page address

此页面开始，每隔XDES_DESCRIBED_PER_PAGE个页面，就是一个Bitmap Page

第二个 page， page type =FIL_PAGE_IBUF_BITMAP, 
主要用于跟踪随后的每个page的change buffer信息
使用4个bit来描述每个page的change buffer信息
*/
#define FSP_IBUF_BITMAP_OFFSET		1	/* !< insert buffer bitmap */
				/* The ibuf bitmap pages are the ones whose
				page number is the number above plus a
				multiple of XDES_DESCRIBED_PER_PAGE */

/*
第三个page，page type =FIL_PAGE_INODE,管理segments
*/
#define FSP_FIRST_INODE_PAGE_NO		2	/*!< in every tablespace */
				/* The following pages exist
				in the system tablespace (space 0). */

/*
page type = FIL_PAGE_TYPE_SYS
*/
#define FSP_IBUF_HEADER_PAGE_NO		3	/*!< insert buffer
						header page, in
						tablespace 0 */
/*
用于存储change buffer的根page，change buffer目前存储于Ibdata中，
其本质上也是一颗btree，root页为固定page，也就是Ibdata的第5个page

IBUF HEADER Page (FSP_IBUF_HEADER_PAGE_NO) 和 
Root Page (FSP_IBUF_TREE_ROOT_PAGE_NO)联合起来对ibuf的数据页进行管理。
*/
#define FSP_IBUF_TREE_ROOT_PAGE_NO	4	/*!< insert buffer
						B-tree root page in
						tablespace 0 */
				/* The ibuf tree root page number in
				tablespace 0; its fseg inode is on the page
				number FSP_FIRST_INODE_PAGE_NO */
#define FSP_TRX_SYS_PAGE_NO		5	/*!< transaction
						system header, in
						tablespace 0 */
#define	FSP_FIRST_RSEG_PAGE_NO		6	/*!< first rollback segment
						page, in tablespace 0 */

/*
ibdata的第8个page，用来存储数据词典表的信息 
（只有拿到数据词典表，才能根据其中存储的表信息，
进一步找到其对应的表空间，以及表的聚集索引所在的page no）
*/
#define FSP_DICT_HDR_PAGE_NO		7	/*!< data dictionary header
						page, in tablespace 0 */

/*
Macro	                bytes	Desc
DICT_HDR	            38      Page头
DICT_HDR_ROW_ID	        8       最近被赋值的row id，递增，用于给未定义主键的表，作为其隐藏的主键键值来构建btree
DICT_HDR_TABLE_ID	    8       当前系统分配的最大事务ID，每创建一个新表，都赋予一个唯一的table id，然后递增
DICT_HDR_INDEX_ID   	8       用于分配索引ID
DICT_HDR_MAX_SPACE_ID	4       用于分配space id
DICT_HDR_MIX_ID_LOW	    4	 
DICT_HDR_TABLES	        4       SYS_TABLES系统表的聚集索引root page
DICT_HDR_TABLE_IDS	    4       SYS_TABLE_IDS索引的root page
DICT_HDR_COLUMNS	    4       SYS_COLUMNS系统表的聚集索引root page
DICT_HDR_INDEXES	    4       SYS_INDEXES系统表的聚集索引root page
DICT_HDR_FIELDS	        4       SYS_FIELDS系统表的聚集索引root page

*/

/*--------------------------------------*/
/* @} */

#endif /* fsp0types_h */
