<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
$(function() {
	$("form").submit(function() {
		const $input = $("input[type=search]");
		if($input.val().trim() == '') {
			alert('검색어를 입력하세요');
			$input.focus();
			return false
		}
	})
})

</script>
</head>
<body>
	<div class="container">
		<form action = 'field_select'>
			<h3>검색할 컬럼명을 연결하세요</h3>
				<input type="search" name="search" class="form-control mb-3" placeholder= "검색어를 입력하세요">
				<button type="submit" class="btn btn-primary">Submit </button>
			</form>
			<script>
	</div>
</body>
</html>