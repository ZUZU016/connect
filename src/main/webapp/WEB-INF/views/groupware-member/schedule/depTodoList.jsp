<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="container-xxl flex-grow-1 container-p-y">
	<div class="app-kanban">
		<div class="row">
			<div class="col-12">
				<div
					class="d-flex justify-content-between flex-wrap align-items-center mb-2">
					<div class="kanban-board-header">전체 일정</div>
					<button type="button" data-bs-toggle="modal"
						data-bs-target="#modalCenter" aria-controls="modalCenter"
						class="kanban-add-board-btn btn btn-link"
						id="kanban-add-board-btn">
						<i class="bx bx-plus"></i> <span class="align-middle">일정추가</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${empty todoList }">
		부서일정이 없습니다.
</c:if>


	<c:if test="${not empty todoList }">
		<div class="kanban-wrapper">
			<main class="kanban-drag">
				<c:forEach items="${todoList}" var="todoList">
					<div class="kanban-item"
						style="width: 250px; margin-left: 12px; margin-right: 12px;">
						<c:url value="/gw/todoList/empTodoDetail.do"
							var="empTodoDetailUrl">
							<c:param name="what" value="${todoList.todoNo }" />
						</c:url>
						<a class="offcanClass" id="offcan" data-bs-toggle="offcanvas"
							href="#offcanvasRight" role="button"
							aria-controls="offcanvasRight"
							data-detail-url="${empTodoDetailUrl }"> ${todoList.todoTitle}
						</a>
					</div>
				</c:forEach>
			</main>
		</div>
		<div class="kanban-wrapper">
			<main class="kanban-drag"></main>
		</div>

	</c:if>
	<!-- 일정쓰기 모달 -->
<div class="modal fade" id="modalCenter" tabindex="-1"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<form  method="post"
					action="${cPath }/gw/todoList/depTodoListInsert.do">
					<div class="modal-header">
						<h5 class="modal-title" id="modalCenterTitle">부서일정추가</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col mb-4">
								<label for="title" class="form-label">제목</label> <input
									type="text" id="title" name="todoTitle" class="form-control"
									placeholder="제목을 입력해주세요." />
							</div>
						</div>
						<div class="row">
							<div class="col mb-4">
								<label for="content" class="form-label">내용</label>
								<textarea id="content" name="todoContent" class="form-control"
									placeholder="내용을 입력해주세요."></textarea>
							</div>
						</div>
						<div class="row">

							<div class="col mb-0">
								<label for="dday" class="form-label">일정 시작일</label> <input
									type="datetime-local" name="todoStart" id="dday"
									class="form-control dob-picker flatpickr-input active"
									placeholder="YYYY-MM-DD">
							</div>
							<div class="col mb-0">
								<label for="dday" class="form-label">일정 종료일</label> <input
									type="datetime-local" name="todoEnd" id="dday"
									class="form-control dob-picker flatpickr-input active"
									placeholder="YYYY-MM-DD">
							</div>
						</div>
						<div class="row">
							<div class="col mb-4">
								<label for="title" class="form-label">화상회의</label> <input
									type="text" id="title" name="todoConno" class="form-control"
									placeholder="화상회의링크를 입력해주세요." />
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<span>주의) 부서일정은 부서원에게 공유됩니다</span>
						<button type="submit" class="btn btn-primary">저장</button>
						<button type="button" class="btn btn-label-secondary"
							data-bs-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- 상세일정 오프캔버스 -->
	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
		aria-labelledby="offcanvasRightLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasRightLabel">상세 일정</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body"></div>
	</div>

	<script defer src="${cPath}/resources/groupwareMember/assets/js/app-kanban.js"></script>
	<script src="${cPath}/resources/js/app/jhjUa/depTodoList.js"></script>