<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 제목 및 내용 시작 -->
<table class="table">
    <colgroup>
        <col>
        <col>
    </colgroup>
    <tbody>
        <tr>
            <th>제목</th>
            <td><input class="form-control bg-white" type="text"></td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="table">
                    <tbody>
                        <tr>
                            <th>1. 지원기준</th>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <colgroup>
                        <col>
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>지원대상</th>
                            <td>정규직 임직원 본인, 배우자 및 자녀의 의료비</td>
                        </tr>
                        <tr>
                            <th>지원항목</th>
                            <td>
                                - 건강보험의 적용을 받아 본인이 부담하는 치료목적의 의료비 중 월 단위 2만원 초과금액의 100%를 지원(년 한도 100만원)
                                1. 건강보험 급여항목 중 본인부담금
                                2. 비 급여 항목 중 식대, 지정진료비(선택진료료), 치료목적을 위한 CT, MRI, 초음파검사(출산초음파 포함)
                                3. 의사의 처방전에 근거한 치료목적의 약제비 (급여 성 본인부담금)
                            </td>
                        </tr>
                        <tr>
                            <th>지원금 기준</th>
                            <td>지원항목의 의료비 합계액 중 월단위 2만원 초과금액의 100%</td>
                        </tr>
                        <tr>
                            <th>지원 한도</th>
                            <td>년간 100만원 한도</td>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <tbody>
                        <tr>
                            <th>2. 신청 및 지원 Process</th>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <colgroup>
                        <col>
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>신청</th>
                            <td>
                                - 그룹웨어內 의료비 신청 - 의료비 신청서 Print후 <span>영수증 사본</span>과 함께 인사.총무그룹 담당자에게 제출
                                <span>* 진료비 납입확인서 및 카드/현금영수증은 증빙으로 사용할 수 없음</span>
                            </td>
                        </tr>
                        <tr>
                            <th>지원</th>
                            <td>- 증빙 접수건 서류 검토 및 금액 확정 - 매월 10일까지 신청 및 증빙접수된 건에 대해 20일 급여계좌로 지원</td>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <tbody>
                        <tr>
                            <th>3. 신청자 정보</th>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <colgroup>
                        <col>
                        <col>
                        <col>
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>팀/그룹</th>
                            <td><input class="form-control bg-white" type="text"></td>
                            <th>성명</th>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                        <tr>
                            <th>사번</th>
                            <td><input class="form-control bg-white" type="text"></td>
                            <th>직위</th>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                        <tr>
                            <th>연락처</th>
                            <td><input class="form-control bg-white" type="text"></td>
                            <th>신청일</th>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <tbody>
                        <tr>
                            <th>3. 신청내용(총 <input class="form-control bg-white" type="text"> 개월)</th>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <colgroup>
                        <col>
                        <col>
                        <col>
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>신청월</th>
                            <td><input class="form-control bg-white" type="text"> 월</td>
                            <th>내역추가</th>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                        <tr>
                            <td colspan="4">※ 사업자등록번호와 상호를 정확히 입력하세요 연말정산 반영)</td>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <colgroup>
                        <col>
                        <col>
                        <col>
                        <col>
                        <col>
                        <col>
                        <col>
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <td></td>
                            <th colspan="2">지급처</th>
                            <th rowspan="2">금액</th>
                            <th colspan="4">대상자정보</th>
                        </tr>
                        <tr>
                            <th>연번</th>
                            <th>사업자 등록번호</th>
                            <th>상호</th>
                            <th>성명</th>
                            <th>관계</th>
                            <th>주민번호</th>
                            <th>경로/장애</th>
                        </tr>
                        <tr>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                        <tr>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                        <tr>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                            <td><input class="form-control bg-white" type="text"></td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
<!-- 제목 및 내용 끝 -->

