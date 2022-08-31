package com.ds4.dao;

import java.util.ArrayList;

import com.ds4.dto.FileDto;
import com.ds4.dto.ReplyDto;
import com.ds4.dto.BoardDto;
import com.ds4.dto.MMemberDto;
import com.ds4.dto.MemberDto;
import com.ds4.dto.CalDto;
import com.ds4.dto.LockDto;
import com.ds4.dto.LockrentDto;

public interface IDao {

	//member 관련 dao 메서드
	public void joinDao(String mid, String mpw ,String mname ,String memail,String mtel, String maddress,String maddresss ,String maddressss );
	public int checkIdDao(String mid);//회원가입 여부 체크 메서드(아이디가 존재하면 1, 아니면 0이 반환)
	public int checkIDPwDao(String mid ,String mpw);//아이디와 비밀번호 일치 되는지
	public MemberDto memberInfoDao(String mid); //id로 검색해서 해당 id의 모든 정보를 반환한는 메서드
	public void infomodifyDao( String mpw ,String mname, String memail, String mtel ,String mid);
	public void mDeleteDao(String mid,String mpw);
	public MemberDto findDao( String mname ,String memail);
	public MemberDto findpwDao(String mid, String mname ,String memail);
	//=====================================================================
	
	public void mjoinDao(String mmid, String mmpw ,String mmname ,String mmemail,String mmtel );
	public int mcheckIdDao(String mmid);//회원가입 여부 체크 메서드(아이디가 존재하면 1, 아니면 0이 반환)
	public int mcheckIDPwDao(String mmid ,String mmpw);//아이디와 비밀번호 일치 되는지
	public MMemberDto mmemberInfoDao(String mmid); //id로 검색해서 해당 id의 모든 정보를 반환한는 메서드
	public void minfomodifyDao( String mmpw ,String mmname, String mmemail, String mmtel ,String mmid);
	public void mmDeleteDao(String mmid,String mmpw);
	
	//회원 정보 수정 메서드
	
	//=====================================================================
	//board 관련 dao 메서드
	public void writeDao(String qid, String qname ,String qcontent, String qemail); //게시판글쓰기
	public ArrayList<BoardDto> listDao();
	public BoardDto contentViewDao(String qnum);
	public BoardDto fbViewDao(String qnum);
	public void deleteDao(String qnum);
	public void qmodifyDao(String qname, String qcontent, String qemail ,String qnum);
	
	public ArrayList<BoardDto> qTitleSearchlist(String keyword);
	//자유게시판 제목으로 검색한 결과 리스트 가져오기
	
	public ArrayList<BoardDto> qContentSearchlist(String keyword);
	//자유게시판 내용으로 검색한 결과 리스트 가져오기
	
	public ArrayList<BoardDto> qNameSearchlist(String keyword);
	//자유게시판 글쓴이으로 검색한 결과 리스트 가져오기
	
	//=====================================================================
	//calendar dao 메서드
	public void calwriteDao(String cid, String cname,String cstartdate, String cenddate, String cenjoy ,String ctech ,String cmemo);
	public ArrayList<CalDto> callistDao();
	public CalDto calcontentViewDao(String cnum);
	public void caldeleteDao(String cnum);
	public void calqmodifyDao(String cname, String ccontent, String cemail ,String cnum);
	public CalDto calmemberInfoDao(String cid);
	
	public ArrayList<CalDto> calTitleSearchlist(String keyword);
	//자유게시판 제목으로 검색한 결과 리스트 가져오기
	
	public ArrayList<CalDto> calContentSearchlist(String keyword);
	//자유게시판 내용으로 검색한 결과 리스트 가져오기
	
	public ArrayList<CalDto> calNameSearchlist(String keyword);
	//자유게시판 글쓴이으로 검색한 결과 리스트 가져오기
	
	
	
	public LockrentDto lockrentinfoDao(String rid);
	
	
	//=====================================================================
	//rent dao  메서드
	public ArrayList<LockDto> LockDao();
	public LockDto LockInfoDao(String lnum); //id로 검색해서 해당 id의 모든 정보를 반환한는 메서드	
	public void usecheck(int use ,String lnum);
	//rentgo dao 메서드
	public void rentDao(String rid, String rname ,  String rtel ,String rnum, String rprice , String rsdate , String redate);
	
	
	//===============================================================================================
	//파일첨부
	
	public void fbfileInsertDao(int boardnum, String filename, String orifilename,String fileurl, String fileextension);//파일 업로드
	//파일 업로드(파일이 첨부된 게시글 번호, 변경된 파일이름, 원본 파일이름, 파일 저장 경로, 파일의 확장자)
	public FileDto fbGetfileinfoDao(String qnum);//파일이 첨부된 게시글의 번호로 검색하여 첨부된 파일의 정보 불러오기
	
	
	//==========================================================================================
	
	//댓글 용 dao
		public void rbwriteDao(int boardnum , String rbid , String rbcontent);
		public ArrayList<ReplyDto> rblistDao(int qnum);//댓글이 달린 원글의 게시판 번호로 검색하여 모든 댓글리스트를 반환
}
