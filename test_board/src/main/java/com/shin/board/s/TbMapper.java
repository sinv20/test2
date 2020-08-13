package com.shin.board.s;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shin.board.d.TbDTO;

@Service
public class TbMapper {
	
	@Autowired
	private SqlSession sqlSsion;
	 
	public TbDTO getBoard(int num){ 
		TbDTO dto = sqlSsion.selectOne("getBoard",num);
		return dto;
    }
	
	public List<TbDTO> listBoard(){
		List<TbDTO> list = sqlSsion.selectList("listBoard");
		return list;
	}
	
	public int insertBoard(TbDTO dto){
		int res = sqlSsion.insert("insertBoard",dto);
		return res;
	}
	
	public int deleteBoard(int num){
		int res = sqlSsion.insert("deleteBoard",num);
		return res;
	}
	
	public int updateBoard(TbDTO dto){
		int res = sqlSsion.update("updateBoard",dto);
		return res;
	}
	 public void plusReadcount(int num) {
	      sqlSsion.update("readcountBoard",num);
	   }

	
}















