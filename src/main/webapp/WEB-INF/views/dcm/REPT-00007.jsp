<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table class="table">
    <colgroup>
        <!-- 컬럼 너비는 colgroup을 통해 지정합니다. -->
        <col span="16">
    </colgroup>
    <tbody>
        <tr>
            <td colspan="16">회사명</td>
        </tr>
        <tr>
            <td colspan="16">회사 주소 입력</td>
        </tr>
        <tr>
            <td colspan="3">
                담당자 : <span>기안자</span>
            </td>
            <td colspan="3">
                전화 : <span>핸드폰번호</span>
            </td>
            <td colspan="4">
                팩스 : <span>팩스</span>
            </td>
            <td colspan="6">
                이메일 : <span>기안자이메일</span>
            </td>
        </tr>
        <tr>
            <th colspan="2">문서번호 :</th>
            <td colspan="14"><span>문서번호</span></td>
        </tr>
        <tr>
            <th colspan="2">수신처 :</th>
            <td colspan="14"><span>수신자</span></td>
        </tr>
        <tr>
            <th colspan="2">제목 :</th>
            <td colspan="14">
                <input class="form-control bg-white" type="text">
            </td>
        </tr>
        <tr>
            <td colspan="16"><span id="editor">에디터(본문)</span></td>
        </tr>
    </tbody>
</table>

