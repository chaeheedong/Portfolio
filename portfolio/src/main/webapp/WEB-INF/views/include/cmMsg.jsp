<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	window.onload = function() {
		var msg = '${msg}';
		var redirect = '${redirect}';

		if (msg != "") {
			alert(msg);
		}

		if (redirect != "") {
			location.href = redirect;
		}

	}
</script>