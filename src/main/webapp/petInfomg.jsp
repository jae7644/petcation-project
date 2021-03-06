<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.add {
	border-radius: 25px;
	background-color: #04AA6D;
	color: white;
	padding: 10px 10px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 12%;
}

.delete {
	border-radius: 25px;
	background-color: #04AA6D;
	color: white;
	padding: 10px 10px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 12%;
}

input[type=text] {
	border-radius: 25px;
	width: 95%;
	padding: 15px;
	margin: 5px 0 10px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus {
	background-color: #ddd;
	outline: none;
}

@media screen and (min-width: 800px)and (max-width:1250px) {
	.out_container {
		display: grid;
		grid-template-columns: 20% 80%;
		padding-bottom: 5%;
		text-align: center;
		height: 100%;
		padding-right: 0;
	}
	input[type=text] {
		border-radius: 25px;
		width: 95%;
		padding: 15px;
		margin: 5px 0 10px 0;
		display: inline-block;
		border: none;
		background: #f1f1f1;
	}
	/* Add a background color when the inputs get focus */
	input[type=text]:focus {
		background-color: #ddd;
		outline: none;
	}
}

/* Set a style for all buttons */
button {
	border-radius: 25px;
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancel, .save {
	width: 28%;
}

.cancel {
	margin-left: 3%;
}

#name, #age, #kind {
	margin: 0;
	width: 58%;
}

#age, #kind {
	margin-top: 22px;
}

.imagetext {
	width: 95%;
	display: inline-block;
	text-align: right;
	margin-top: 2%;
	margin-bottom: 1%;
	height: 180px;
}

.filebox label {
	width: 40%;
	float: left;
	margin-right: 2%;
	height: 180px;
	display: block;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}
.filebox label>img {
	width: 100%;
	height: 180px;
}

.filebox input[type="file"] { /* ?????? ?????? ????????? */
	width: 0px;
	height: 0px;
	padding: 0;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

h2 {
	text-align: left;
}

.upload-box {
  width: 100%;
  margin-right: 30px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

 .upload-box .drag-file {
  position: relative;
  width: 100%;
  height: 180px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  border: 3px dashed #dbdbdb;
}

 .upload-box .drag-file .image {
  width: 40px;
}
 .upload-box .drag-file .message {
  margin-bottom: 0;
}
 .upload-box .drag-file .preview {
  display: none;
  position: absolute;
  left: 0;
  height: 0;
  width: 100%;
  height: 100%;
}
 .upload-box .file-label {
	  margin-top: 30px;
  background-color: #5b975b;
  color: #fff;
  text-align: center;
  padding: 10px 0;
  width: 65%;
  border-radius: 6px;
  cursor: pointer;
}
 .upload-box .file {
  display: none;
}

@media (max-width: 700px) {
   {
    display: flex;
    flex-direction: column;
    margin-top: 30px;
  }
   .upload-box {
    width: 100%;
    box-sizing: border-box;
    margin-right: 0;
  }
   .upload-box .drag-file {
    height: 100px;
  }
   .files {
    width: 100%;
    box-sizing: border-box;
    margin-right: 0;
    overflow: initial;
  }
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-latest.min.js"
	type="application/javascript"></script>
<script type="application/javascript" src="js/hangjungdong.js"></script>

<link rel="stylesheet" href="css/common2.css">

<meta name="viewport" content="width=device-width, initial-scale=1">


<title>???????????? ????????????</title>
</head>
<body>
	<%
		String cookie = "";
		Cookie[] cookies = request.getCookies(); //????????????
		if (cookies != null && cookies.length > 0)
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("id")) { // ?????? ????????? ????????? ????????? ??? ??????
			cookie = cookies[i].getValue();
				}
			}
		System.out.println("???????????? ??????, ???????????? :" + cookie);
	%>
	<div style="height: 100%; width: 100%;">
		<div id="id01" class="modal" style="min-height: 1200px;">
			<div id="body-content">

				<form class="modal-content" name="petinfo" id="petinfo"
					action="reservation.jsp" onsubmit="return false">
					<input type="hidden" name="user_Id" id="user_Id" value="<%=cookie %>">
					<div class="head">
						<h1 style="font-size: 3vw; text-align: center;">??????????????????</h1>
					</div>
					<div class="out_container">
						<div class="sidebar">
							<div class="sidenav">
								<h1
									style="font-size: 2vw; text-align: center; margin-top: 10px; margin-bottom: 10px">???????????????</h1>
								<hr style="margin-bottom: 20px">
								<a href="manageUserInfo">????????????</a>
								<a href="petInfo_list.pets">??????????????????</a>
								<a href="#services">????????????</a>
								<a href="#services">??????????????????</a>
								<a href="deleteUserInfo.jsp">????????????</a>
							</div>
						</div>
						<div class="container"
							style="width: 100%; padding-bottom: 5%; min-height: 300px; margin-top: 50px;">
							<div class="container">
								<div class="regist" style="margin-left: 47%">
									<!-- <input type="button" id="addbutton" name="addbutton"
										class="add" value="??????" onclick="add()"> <input
										type="button" class="delete" id="deletebutton"
										name="deletebutton" value="??????" onclick="recont()"> -->
								</div>
								<div style="padding-left: 20%; padding-right: 20%;">
									<table border="1" width="100%" cellpadding="0" cellspacing="0"
										align="center" id="pettable">
										<tr height="30" class="contmenu" name="contents">
											
											<td width="100%">??????????????????</td>
											
										</tr>
										
										<tr height="30" class="contmenu">
											<th align="center" width="100%">???????????? ????????????</th>
										</tr>

										<tr height="30" id="contents" name="contents">
											<td align="center" width="100%" colspan="3">
												<div class="imagetext">
													<div class="filebox">
														<label for="fileupload" onclick = "ok()">
															<div class="upload-box">
																<div id="drop-file" class="drag-file">
																	<img
																		src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
																		alt="?????? ?????????" class="image">
																	<p class="message">Click here to upload</p>
																	<img src="" alt="???????????? ?????????" class="preview">
																</div>
															</div>
														</label>
														<input type="file" id="fileupload" onchange="dropFile.handleFiles(this.files)" accept="image/*" style="display:none;">
													</div>
													<input type="text" placeholder="??????" name="name" id="name">
													<input type="text" placeholder="??????" name="age" id="age">
													<input type="text" placeholder="??????" name="kind" id="kind">
												</div> <input type="text" placeholder="?????? ??????" name="detailkind"
												id="detailkind"> <input type="text" placeholder="??????"
												name="gender" id="gender"> <input type="text"
												placeholder="?????????" name="weight" id="weight"> <input
												type="text" placeholder="??????" name="disease" id="disease">
												<input type="text" placeholder="????????????" name="detailinfo"
												id="detailinfo">
												<input type = "hidden" id="filename" name="filename" value = ""/>
											</td>
										</tr>

									</table>
								</div>
								<div class="clearfix">
									<button type="button" id="uploadClick" class="save">??????</button>
									<button type="button" class="cancel">??????</button>
								</div>
								
							</div>
							<br>
						</div>
					</div>

					<div class="header">
				<nav>
		            <ul class="topnav" id = "myTopnav">
		                <li class="menu_a"> <a href="main.jsp"><img src="images/logo.png" id = "logo"/></a> </li>
		                <c:if test="${not empty userVO}">
		                <li class="menu_a"> <a href="findpetName.pet">????????????</a> </li>
		                </c:if>
		            	<c:if test="${empty userVO}">
		                <li class="menu_a"> <a href="javascript:void(0);" onclick="alert('????????? ????????? ???????????? ??? ????????????!')">????????????</a> </li>
						</c:if>		                
		                <li class="menu_a"> <a href="searchHosp.jsp">????????????</a> </li>
		                <c:if test="${not empty userVO}">
		                <li class="menu_a"> <a href="#myHosp">MY??????</a> </li>
		                </c:if>
		                <c:if test="${empty userVO}">
		                <li class="menu_a"> <a href="javascript:void(0);" onclick="alert('????????? ????????? ???????????? ??? ????????????!')">MY??????</a> </li>
		                </c:if>
		                <li class="menu_a"> <a href="#cusCenter">????????????</a> </li>
		                <c:if test="${not empty userVO}">
		                <c:if test="${userVO.user_authority == 2}">
		                <li class="menu_a"> <a href="watchmgHosInfo.pet">????????????</a> </li> 
		                </c:if>
		                <c:if test="${userVO.user_authority != 2}">
		                <li class="menu_a"> <a href="hoscheckpw.jsp">????????????</a> </li> 
		                </c:if>
		                </c:if>
		                <c:if test="${empty userVO}">
		                <li class="menu_a"> <a href="javascript:void(0);" onclick="alert('????????? ????????? ???????????? ??? ????????????!')">????????????</a> </li> 
		                </c:if>            
		            	<li class="space"></li>
		            	<c:if test="${not empty userVO}">
		            		<li class="menu_a"><a href="logout.pet">????????????</a></li>
		            		<li class="menu_a"><a href="checkpw.jsp">???????????????</a></li>
		            	</c:if>
		            	<c:if test="${empty userVO}">
		            		<li class="menu_a"><a href="login.jsp">?????????</a></li>
							<li class="menu_a"><a href="joinAgree.jsp">????????????</a></li>
		            	</c:if>
						<li2 class="menu_a" onclick="myFunction()"><a href="javascript:void(0);" class="icon">
		    			<i class="fa fa-bars" id="icon"></i>
		  				</a></li2>
					</ul>
				</nav>
		</div>
				</form>
			</div>
		</div>

		<div id="footer-content"
			style="position: relative; display: flex; flex-direction: row; height: 220px; align-items: center; justify-content: center; padding-top: 5%; padding-bottom: 5%;">
			<div>
				<img src="images/footer_logo.png"
					style="width: 100%; height: 148px;" />
			</div>
			<div style="padding: 0;">
				<p style="font-size: 2vh;">
					<strong>??????</strong> : ??????????????? ????????? ????????????1???31??? 24-5<br> <strong>??????</strong>
					: ????????????<br> <strong>????????????</strong> : <a href="tel:000-1111-2222"
						target="_blank"
						style="text-decoration-line: none; color: inherit;">000-111-2222</a><br>
					<br> Copyright ??? 2021 ????????????. All rights reserved. Designed by
					Petcation.
				<p style="font-size: 1vh;">
					??? ??? ??????????????? ????????? ????????? ?????? ???????????? ???????????? ?????? ????????????, ?????? ?????? ??? ???????????????????????? ?????? ?????? ?????? ???
					????????????.<br> ????????? ????????? ????????? ???????????? ???????????? ??????, ??????, ????????????, ??????, ??????, ??????,
					2??????????????? ????????? ???????????? ????????? ?????? [????????????] ??? 136??? ??? 1?????? ????????? 5??? ????????? ?????? ?????? 5?????????
					????????? ????????? ???????????????.
				</p>
			</div>
		</div>
	</div>
	
	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
		
		function DropFile(dropAreaId, fileListId) {
			  let dropArea = document.getElementById(dropAreaId);
			  let fileList = document.getElementById(fileListId);

			  function preventDefaults(e) {
			    e.preventDefault();
			    e.stopPropagation();
			  }

			  function handleDrop(e) {
			    unhighlight(e);
			    let dt = e.dataTransfer;
			    let files = dt.files;

			    handleFiles(files);

			    const fileList = document.getElementById(fileListId);
			    if (fileList) {
			      fileList.scrollTo({ top: fileList.scrollHeight });
			    }
			  }

			  function handleFiles(files) {
			    files = [...files];
			    // files.forEach(uploadFile);
			    files.forEach(previewFile);
			  }

			  function previewFile(file) {
			    renderFile(file);
			  }

			  function renderFile(file) {
			    let reader = new FileReader();
			    reader.readAsDataURL(file);
			    reader.onloadend = function () {
			      let img = dropArea.getElementsByClassName("preview")[0];
			      
			      img.src = reader.result;
			      img.style.display = "block";
			    };
			  }

			  dropArea.addEventListener("drop", handleDrop, false);

			  return {
			    handleFiles
			  };
			}

			const dropFile = new DropFile("drop-file", "files");
	</script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$('#uploadClick').on('click', function() {
			alert("??????");
			if($("#fileupload")[0].files[0] != null){
				alert("?????? ??????");
			var file = $("#fileupload")[0].files[0];
			var filename = file.name;
			alert(filename);
			$('input[name=filename]').attr('value',filename);
			alert("??????");
			var reader = new FileReader();
			reader.onload = function(e) {
				// ????????? ????????? reader.result??? ?????????.
				var base64data = reader.result;
				console.log(base64data);
				// ????????? ????????? ???????????????.
				// ????????? ???data: ?????? ??????; base64, ?????????????????????.
				var data = base64data.split(',')[1];
				//data??? ?????? ????????? ?????????.
				//?????? ajax??? ???????????? ??? ????????? ???????????? ???????????? ????????? ????????? ????????? ?????????????????? ?????????????????? ????????? ???????????? ?????? ?????? 1??? ????????? ??????????????????.
				var sendsize = 1024;
				var filelength = data.length;
				var pos = 0;
				var upload = function() {
					$.ajax({
						type : 'POST',
						dataType : 'json',
						data : {
							filename : filename,
							filelength : filelength,
							filepos : pos,
							data : data.substring(pos, pos + sendsize)
						},
						url : './upload',
						success : function(data) {
							// ????????? ????????? ?????????
							if (pos < filelength) {
								// ??????
								setTimeout(upload, 1);
							}
							pos = pos + sendsize;
							if (pos > filelength) {
								pos = filelength;
							}
							$('#progress').text(pos + ' / ' + filelength);
							
						},
						error : function(jqXHR, textStatus, errorThrown) {
							console.log(jqXHR);
						},
						complete : function(jqXHR, textStatus) {
						}
					});
				};
				setTimeout(upload, 1);
			}
			// base64??? ????????????.
			reader.readAsDataURL(file);			
			
			setTimeout(function petInfo_submit(){
				document.petinfo.target = "_self";
				document.petinfo.action = "save.pet";
				document.petinfo.submit();
			}, 1000);
			}
			else{
				alert("?????? ??????");
				document.petinfo.target = "_self";
				document.petinfo.action = "save.pet";
				document.petinfo.submit();
			}
		});
		
		function ok(){
			alert("ok");
		}
	</script>
</body>
</html>