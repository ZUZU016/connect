package kr.or.ddit.atchfile.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.AtchFileDetailVO;
import kr.or.ddit.vo.AtchFileVO;

/**
 * 첨부파일의 메타데이터를 위한 CRUD interface
 */
@Mapper
public interface AtchFileMapper {
	/**
	* 첨부파일 저장을 위한 메소드, 파라미터 맵을 형성하기 위해 @Param 사용함.
	*/
	public int insertAtchFile(AtchFileVO atchFile);

	/**
	 * 첨부파일 한건 조회를 위한 메소드
	 */
	public AtchFileDetailVO selectAtchFileDetail(@Param("atchFileId") int atchFileId, @Param("fileSn") int fileSn);
	
	/**
	 * 사용중인 첨부파일 그룹 전체 조회
	 */
	public AtchFileVO selectAtchFileEnable(@Param("atchFileId") int atchFileId);
	/**
	 * 사용 여부에 따른 파일 그룹 조회 
	 * @param atchFileId
	 * @param enable
	 * @return
	 */
	public AtchFileVO selectAtchFile(@Param("atchFileId") int atchFileId, @Param("enable") boolean enable);

	/**
	 * downcount 증가
	 */
	public int incrementDowncount(@Param("atchFileId") int atchFileId, @Param("fileSn") int fileSn);

	/**
	 * 첨부파일 한건 삭제
	 */
	public int deleteAtchFileDetail(@Param("atchFileId") int atchFileId, @Param("fileSn") int fileSn);

	
	/**
	 * 특정글의 첨부파일 그룹 전체 사용중지 처리
	 */
	public int disableAtchFile(@Param("atchFileId") int atchFileId);
	
	/**
	 * 첨부파일 전체 그룹 내의 모든 파일 삭제
	 * @param atchFileId
	 * @return
	 */
	public int deleteDisabledAtchFileDetails(@Param("atchFileId") int atchFileId);

	/**
	 * 첨부 파일 그룹 데이터 삭제
	 * @param atchFileId
	 * @return
	 */
	public int deleteDisabledAtchFile(@Param("atchFileId") int atchFileId);
	
	/**
	 * 첨부파일 한건을 UUID를 통해 조회
	 * @param UUID
	 * @return
	 */
	public AtchFileDetailVO selectAtchFileDetailByUUID(String streFileNm);
	
	/**
	 * 마지막에 넣은 첨부파일 번호(PK) 조회
	 * @return
	 */
	public int selectAtchFileMaxId();
}
