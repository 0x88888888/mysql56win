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
��((page_no & (UNIV_PAGE_SIZE - 1))== FSP_IBUF_BITMAP_OFFSET)
˵��page address is an ibuf bitmap page address

��ҳ�濪ʼ��ÿ��XDES_DESCRIBED_PER_PAGE��ҳ�棬����һ��Bitmap Page

�ڶ��� page�� page type =FIL_PAGE_IBUF_BITMAP, 
��Ҫ���ڸ�������ÿ��page��change buffer��Ϣ
ʹ��4��bit������ÿ��page��change buffer��Ϣ
*/
#define FSP_IBUF_BITMAP_OFFSET		1	/* !< insert buffer bitmap */
				/* The ibuf bitmap pages are the ones whose
				page number is the number above plus a
				multiple of XDES_DESCRIBED_PER_PAGE */

/*
������page��page type =FIL_PAGE_INODE,����segments
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
���ڴ洢change buffer�ĸ�page��change bufferĿǰ�洢��Ibdata�У�
�䱾����Ҳ��һ��btree��rootҳΪ�̶�page��Ҳ����Ibdata�ĵ�5��page

IBUF HEADER Page (FSP_IBUF_HEADER_PAGE_NO) �� 
Root Page (FSP_IBUF_TREE_ROOT_PAGE_NO)����������ibuf������ҳ���й���
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
ibdata�ĵ�8��page�������洢���ݴʵ�����Ϣ 
��ֻ���õ����ݴʵ�����ܸ������д洢�ı���Ϣ��
��һ���ҵ����Ӧ�ı�ռ䣬�Լ���ľۼ��������ڵ�page no��
*/
#define FSP_DICT_HDR_PAGE_NO		7	/*!< data dictionary header
						page, in tablespace 0 */

/*
Macro	                bytes	Desc
DICT_HDR	            38      Pageͷ
DICT_HDR_ROW_ID	        8       �������ֵ��row id�����������ڸ�δ���������ı���Ϊ�����ص�������ֵ������btree
DICT_HDR_TABLE_ID	    8       ��ǰϵͳ������������ID��ÿ����һ���±�������һ��Ψһ��table id��Ȼ�����
DICT_HDR_INDEX_ID   	8       ���ڷ�������ID
DICT_HDR_MAX_SPACE_ID	4       ���ڷ���space id
DICT_HDR_MIX_ID_LOW	    4	 
DICT_HDR_TABLES	        4       SYS_TABLESϵͳ��ľۼ�����root page
DICT_HDR_TABLE_IDS	    4       SYS_TABLE_IDS������root page
DICT_HDR_COLUMNS	    4       SYS_COLUMNSϵͳ��ľۼ�����root page
DICT_HDR_INDEXES	    4       SYS_INDEXESϵͳ��ľۼ�����root page
DICT_HDR_FIELDS	        4       SYS_FIELDSϵͳ��ľۼ�����root page

*/

/*--------------------------------------*/
/* @} */

#endif /* fsp0types_h */
