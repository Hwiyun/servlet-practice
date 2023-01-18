package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {
	public static void main(String[] args) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("둘");
		vo.setPassword("123");
		vo.setMessage("dooly@gmail.com");
//		vo.setDate("2023-01-17");
		
//		testInsert(vo);
//		testDeleteByEmail("dooly@gmail.com");
		testFindAll();		
	}
	private static void testInsert(GuestbookVo vo) {
		new GuestbookDao().insert(vo);
	}

	private static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}
	private static void testDeleteByGuestbook(String guestbook) {
//		new GuestbookDao().deleteByGuestbook(guestbook);
	}

}
