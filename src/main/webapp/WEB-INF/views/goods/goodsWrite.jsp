<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>글작성</title>
</head>
<script>
function chkSubmit(){  // 폼 검증
	frm = document.forms["frm"];
	
	var goodsname = frm["goodsname"].value.trim();
	var goodsprice = frm["goodsprice"].value.trim();
	var goodsContent = frm["goodsContent"].value.trim();
	var goodsSort = frm["goodsSort"].value.trim();
	var goodsCustom = frm["goodsCustom"].value.trim();
	var goodsTotal = frm["goodsTotal"].value.trim();
	var goodsLeft = frm["goodsLeft"].value.trim();
	var goodsLike = frm["goodsLike"].value.trim();
	var goodspic1 = frm["goodspic1"].value.trim();
	var goodspic2 = frm["goodspic2"].value.trim();

	
	if(goodsname == ""){alert("상품 이름은 반드시 작성해야 합니다");frm["goodsname"].focus();	return false;}
	if(goodsprice == ""){alert("상품 가격은 반드시 작성해야 합니다");frm["goodsprice"].focus();	return false;}
	if(goodsContent == ""){alert("상품 설명은 반드시 작성해야 합니다");frm["goodsContent"].focus();	return false;}
	if(goodsSort == ""){alert("상품 종류는 반드시 작성해야 합니다");frm["goodsSort"].focus();	return false;}
	if(goodsCustom == ""){alert("상품 유형은 반드시 작성해야 합니다");frm["goodsCustom"].focus();	return false;}
	if(goodsTotal == ""){alert("판매 가능 수량은 반드시 작성해야 합니다");frm["goodsTotal"].focus();	return false;}
	if(goodsLeft == ""){alert("판매수량은 반드시 작성해야 합니다");frm["goodsLeft"].focus();	return false;}
	if(goodsLike == ""){alert("좋아요는 반드시 작성해야 합니다");frm["goodsLike"].focus();	return false;}
	
	if(!goodspic1){ alert("상품 썸네일에 들어갈 파일을 첨부해 주세요"); return false; }
	if(!goodspic2){ alert("상품 상세이미지 파일을 첨부해 주세요"); return false; }
	
	
	
	return true;
}

</script>
<body>
  <%@ include file="../header.jsp" %>


<div class="form-bg" style="padding-top: 30px; padding-bottom: 30px;">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <form class="form-horizontal" name="frm" action="goodsWriteOk?${_csrf.parameterName }=${_csrf.token }" method="post" onsubmit="return chkSubmit()" >
                  <!--  enctype="multipart/form-data" -->
                    <div class="header">물건 등록</div>
                    <div class="form-content">
                    
                        <h4 class="heading">상품 기본 정보 </h4>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label" for="exampleInputName2"><i class="fa fa-user"></i></label>
                                <input class="form-control" id="exampleInputName2" placeholder="상품명" type="text" name="goodsname">
                            </div>
                            <div class="col-sm-6">
                                <label class="control-label" for="exampleInputName2"><i class="fa fa-envelope-o"></i></label>
                                <input class="form-control" id="exampleInputName2" placeholder="가격" type="number" name="goodsprice" value=1000>
                            </div>
                        </div>
                        
                       <h4 class="heading">상품 상세 설명 </h4>
                       <div class="form-group">
                            <div class="col-sm-12">
                                <label class="control-label" for="exampleInputName2"><i class="fa fa-calendar"></i></label>
                                <textarea class="form-control" placeholder="상품 설명" name="goodsContent">asddas</textarea>
                            </div>
                        </div>
                        
                       <h4 class="heading">상품 분류 </h4>
                        
                        <div class="form-group">
                            <div class="col-sm-6">
		                        <div class="sel sel--black-panther">
								  <select name="goodsSort" id="select-profession" >
								    <option value="0">전체</option>
								    <option value="1">핸드폰케이스</option>
								    <option value="2">버즈케이스</option>
								    <option value="3">그립톡</option>
								    <option value="4">키링</option>
								    <option value="5">파우치</option>
								  </select>
								</div>
						    </div>
							<div class="col-sm-6" style="">	
								<div class="sel sel--superman">
								  <select name="goodsCustom" id="select-superpower">
								    <option value="0">전체</option>
								    <option value="1">일반</option>
								    <option value="2">글귀</option>
								    <option value="3">그림</option>
								  </select>
								</div>
							</div>
					    </div>

                        <br>
                        
                        <h4 class="heading">상품 개수 </h4>
                        <div class="form-group">
                            <div class="col-sm-4">
                                <label class="control-label" for="exampleInputName2"><i class="fa fa-user"></i></label>
                                <input class="form-control" id="exampleInputName2" placeholder="전체 개수" type="number" name="goodsTotal" value=1000>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label" for="exampleInputName2"><i class="fa fa-envelope-o"></i></label>
                                <input class="form-control" id="exampleInputName2" placeholder="판매된 개수  디폴트 0" type="number" name="goodsLeft" value=1000>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label" for="exampleInputName2"><i class="fa fa-envelope-o"></i></label>
                                <input class="form-control" id="exampleInputName2" placeholder="좋아요 개수 디폴트 0" type="number" name="goodsLike" value=1000>
                            </div>
                        </div>
                        
                        <h4 class="heading col-sm-6">상품 썸네일 사진 </h4>
                         <h4 class="heading col-sm-6">상품 상세 사진 </h4>
                        <div class="form-group">
						  <div class="col-sm-6">
	                        <div class="filebox1"> 
	                        <input class="upload-name1" value="파일선택" disabled="disabled" style="width: 150px;font-size: 15px; height: 33px; padding-left: 10px;"> 
	                        <label for="ex_filename1" style="width: 75px;font-size: 14px;text-align: center;">업로드</label> 
	                        <input type="file" id="ex_filename1" class="upload-hidden1" accept="image/*" onchange="imgfileCheck2(this)" name="goodspic1"> 
	                        </div>
						  </div>
						  <div class="col-sm-6">
	                        <div class="filebox2"> 
	                        <input class="upload-name2" value="파일선택" disabled="disabled" style="width: 150px;font-size: 15px; height: 33px; padding-left: 10px;"> 
	                        <label for="ex_filename2" style="width: 75px;font-size: 14px;text-align: center;">업로드</label> 
	                        <input type="file" id="ex_filename2" class="upload-hidden2" accept="image/*" onchange="imgfileCheck2(this)" name="goodspic2"> 
	                        </div>
						  </div>
						</div>
						
						 <div class="form-group">
						  <div class="col-sm-6">
	                        <div class="filebox1">
                        <div class="select_img1"><img src="" /></div>
                        </div></div>
                        
                        <div class="col-sm-6">
	                        <div class="filebox2">
                        <div class="select_img2"><img src="" /></div>
                        </div></div>
                        </div>
						
						
                        <div class="clearfix">
                            <button type="submit" class="btn btn-default"> Register</button>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>

<button type="button" onclick="location.href='goodsList'" class="btn btn-default">목록으로</button>

</body>
</html>

<style>

.form-bg{
    background: #e4e6e6;
}
form{
    font-family: 'Roboto', sans-serif;
}
.form-horizontal .header{
    background: #3f9cb5;
    padding: 30px 25px;
    font-size: 30px;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    border-radius: 3px 3px 0 0;
}
.form-horizontal .heading{
    font-size: 16px;
    color: #3f9cb5;
    margin: 10px 0 20px 0;
    text-transform: capitalize;
}
.form-horizontal .form-content{
    padding: 25px;
    background: #fff;
}
.form-horizontal .form-control{
    padding: 12px 16px 12px 39px;
    height: 50px;
    font-size: 14px;
    color: #2b2a2a;
    border: none;
    border-bottom: 2px solid #ccc;
    border-radius: 0;
    box-shadow: none;
    margin-bottom: 15px;
}
.form-horizontal .form-control:focus{
    border-color: #3f9cb5;
    box-shadow: none;
}
.form-horizontal .control-label{
    font-size: 17px;
    color: #ccc;
    position: absolute;
    top: 5px;
    left: 27px;
    text-align: center;
}
.form-horizontal textarea.form-control{
    resize: vertical;
    height: 130px;
}
.btn{
    font-size: 18px;
    color: #4e4e4e;
    float: right;
    margin: 10px 0;
    border: 2px solid #ccc;
    border-radius: 0;
    padding: 10px 25px;
    transition: all 0.5s ease 0s;
}
.btn:hover{
    background: #fff;
    border-color: #3f9cb5;
}

</style>
<style>

.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.filebox1 input[type="file"] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox1 label {
    display: inline-block;
    padding: .5em .75em;
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

/* named upload */
.filebox1 .upload-name {
    display: inline-block;
    padding: .5em .75em;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  width: 150px;
}

.filebox1.bs3-primary label {
  color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
}	

.filebox2 input[type="file"] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox2 label {
    display: inline-block;
    padding: .5em .75em;
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

/* named upload */
.filebox2 .upload-name {
    display: inline-block;
    padding: .5em .75em;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  width: 150px;
}

.filebox2.bs3-primary label {
  color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
}	
</style>

<style>


/* ===== Actual Styles ===== */

/* ===== Horizontal Rule ===== */
.rule {
  margin: 10px 0;
  border: none;
  height: 1.5px;
  background-image: linear-gradient(left, #f0f0f0, #c9bbae, #f0f0f0);
}

/* ===== Select Box ===== */
.sel {
  display: inline-block;
  background-color: transparent;
  position: relative;
  cursor: pointer;
  width: 85%;
  margin-left: 5%;
}

.sel::before {
  position: absolute;
  content: '\f063';
  font-family: 'FontAwesome';
  color: #FFF0;
  right: 20px;
  top: calc(50% - 0.5em);
}

.sel.active::before {
  transform: rotateX(-180deg);
}

.sel__placeholder {
  display: block;
  font-family: 'Quicksand';
  color: #838e95;
  padding: 0.2em 0.5em;
  text-align: left;
  pointer-events: none;
  user-select: none;
  visibility: visible;
}

.sel.active .sel__placeholder {
  visibility: hidden;
}

.sel__placeholder::before {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 0.2em 0.5em;
  content: attr(data-placeholder);
  visibility: hidden;
}

.sel.active .sel__placeholder::before {
  visibility: visible;
}

.sel__box {
  position: absolute;
  top: calc(100% + 4px);
  left: -4px;
  display: none;
  width: 200px;
  
  list-style-type: none;
  text-align: left;
  font-size: 1em;
  background-color: #FFF;
  width: calc(100% + 8px);
  box-sizing: border-box;
}

.sel.active .sel__box {
  display: block;
  animation: fadeInUp 500ms;
}

.sel__box__options {
  display: list-item;
  font-family: 'Quicksand';
  color: #838e95;
  padding: 0.5em 1em;
  user-select: none;
}

.sel__box__options::after {
  content: '\f00c';
  font-family: 'FontAwesome';
  margin-left: 5px;
  display: none;
}

.sel__box__options.selected::after {
  display: inline;
}

.sel__box__options:hover {
  background-color: #ebedef;
}

/* ----- Select Box Black Panther ----- */
.sel {
  border-bottom: 4px solid rgba(0, 0, 0, 0.3);
}

.sel--black-panther {
  z-index: 3;
}

/* ----- Select Box Superman ----- */
.sel--superman {
/*   display: none; */
  z-index: 2;
}

/* ===== Keyframes ===== */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translate3d(0, 20px, 0);
  }

  to {
    opacity: 1;
    transform: none;
  }
}

@keyframes fadeOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

</style>



<script>
$(document).ready(function(){
	  var fileTarget = $('.filebox1 .upload-hidden1');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            var filename = $(this)[0].files[0].name;
	        } else {
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        }

	        $(this).siblings('.upload-name1').val(filename);
	        
	    if(this.files && this.files[0]) {
	        var reader1 = new FileReader;
	        reader1.onload = function(data) {
	         $(".select_img1 img").attr("src", data.target.result).height(200);        
	        }
	        reader1.readAsDataURL(this.files[0]);
	       }
	        
	    });
	}); 

$(document).ready(function(){
	  var fileTarget = $('.filebox2 .upload-hidden2');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            var filename = $(this)[0].files[0].name;
	        } else {
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        }

	        $(this).siblings('.upload-name2').val(filename);

	        if(this.files && this.files[0]) {
		        var reader2 = new FileReader;
		        reader2.onload = function(data) {
		         $(".select_img2 img").attr("src", data.target.result).height(200);        
		        }
		        reader2.readAsDataURL(this.files[0]);
		       }
		        
		    });
	    });
</script>

<script>
/* ===== Logic for creating fake Select Boxes ===== */
$(".sel").each(function () {
  $(this).children("select").css("display", "none");

  var $current = $(this);

  $(this)
    .find("option")
    .each(function (i) {
      if (i == 0) {
        $current.prepend(
          $("<div>", {
            class: $current.attr("class").replace(/sel/g, "sel__box")
          })
        );

        var placeholder = $(this).text();
        $current.prepend(
          $("<span>", {
            class: $current.attr("class").replace(/sel/g, "sel__placeholder"),
            text: placeholder,
            "data-placeholder": placeholder
          })
        );

        return;
      }

      $current.children("div").append(
        $("<span>", {
          class: $current.attr("class").replace(/sel/g, "sel__box__options"),
          text: $(this).text()
        })
      );
    });
});

// Toggling the `.active` state on the `.sel`.
$(".sel").click(function () {
  $(this).toggleClass("active");
});

// Toggling the `.selected` state on the options.
$(".sel__box__options").click(function () {
  var txt = $(this).text();
  var index = $(this).index();

  $(this).siblings(".sel__box__options").removeClass("selected");
  $(this).addClass("selected");

  var $currentSel = $(this).closest(".sel");
  $currentSel.children(".sel__placeholder").text(txt);
  $currentSel.children("select").prop("selectedIndex", index + 1);
});


</script>



