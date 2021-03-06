<%@ page language = "java" pageEncoding="UTF-8"  %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core"  prefix ="c" %>
<!DOCTYPE html>
<html>
<c:set var="basePath" scope="request">${pageContext.request.contextPath}</c:set>

	<head>
		<meta charset="UTF-8">
		<title>广告展位管理</title>
	<link rel="stylesheet" type="text/css" href="${basePath}/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${basePath}/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="${basePath}/css/advertisingBooth.css"/>
		<script src="${basePath}/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${basePath}/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${basePath}/js/shelf.js" type="text/javascript" charset="utf-8"></script>
		<script src="${basePath}/js/AdvertisingBooth.js" type="text/javascript" charset="utf-8"></script>
		</head>
	
	
	<body>
		<div id="container">
			<!--位置提醒-->
			<div class="posiRemind">您当前的位置：<span>公告资讯/关于企业</span> > <strong>公告资讯</strong></div>
			
			<div id="content">
		<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<!--标题-->
						<th class="text-center">申请编号</th>
						<th class="text-center">所属店铺</th>
						<th class="text-center">图片</th>
						<th class="text-center">链接商品编号</th>
						<th class="text-center">状态</th>
						<th class="text-center">操作</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="anno" items="${requestScope.Object.list }"  varStatus="st">
					<c:choose>
								<c:when test="${st.count%2==0}">
									<tr id="content" class="warning">
								</c:when>
								<c:otherwise>
									<tr id="content"  class="info">
								</c:otherwise>
							</c:choose>
							<!--第1行-->
							<td class="text-center">${anno.advId }</td>
							<td class="text-center">${anno.storeName }</td>
							<td class="text-center"><img src="${basePath}/resource/${anno.imgAddr }" /></td>
							<td class="text-center">${anno.goodsId }</td>
							<td class="text-center">${anno.status }</td>
							<td class="text-center"><button onclick="Modify(${anno.advId})"	class="btn btn-danger btn-sm">替换</button></td>
						</tr>
					</c:forEach>
				
				</tbody>
			</table>
		</div>
		</div> 

	</body>
</html>
