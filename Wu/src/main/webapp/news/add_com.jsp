<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
<head>
<script src="MyJs.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="WebCalendar.js"></script>
<title>业主投诉信息维护</title>
<link href="Main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
        function PageCheck() {
            var strUploadFile = document.getElementById('uploadFile').value;
            if (strUploadFile == "") {
                alert("请选择要上传的附件！");
                return false;
            }

            var nlength = strUploadFile.length;
            var extName = strUploadFile.substr(nlength - 4, 4).toLowerCase();

            var sAllowExt = ".doc|.docx|.xls|.xlsx|.ppt|.pptx|.pdf|.rar|.zip|.gif|.jpg|.jpeg";
            var str = document.getElementById('uploadFile').value;
            var extName = str.substr(str.lastIndexOf('.') + 1, str.length - str.lastIndexOf('.')).toLowerCase();

            if (sAllowExt.indexOf(extName) == -1) {
                alert('对不起，您只能上传【' + sAllowExt + '】格式的文件\r如果需要上传其他格式的文件，请联系系统管理员！');
                return false;
            }
            var content = document.frames("EDIT_HTML").document.forms("Members").elements("Search").value;
            document.getElementById("ContractContentupdate").value = content;
        }
      
</script>
<script type="text/javascript">
        function AttDown() {
            if (document.getElementById('fjlb').value == '') {
                alert('请先选中附件再下载！');
                return false;
            }
            else {
                var num = Math.random();
                var littleproduct = document.getElementById("fjlb");
                var cindex = littleproduct.selectedIndex;
                var cText = littleproduct.options[cindex].text;
                var cValue = littleproduct.options[cindex].value;
                window.open("../../AttDown.aspx?tmp=" + num + "&number=" + cValue + "&fname=pms/f07", "_blank", "height=1, width=1,top=150,left=150,toolbar=no, menubar=no, scrollbars=no,resizable=yes,location=no, status=no");
            }
        }

        function AttDel() {
            if (document.getElementById('fjlb').value == '') {
                alert('请先选中附件再删除');
                return false;
            }
            else {
                if (!confirm("您确定要删除此附件吗？"))
                    return false;

                var num = Math.random();
                var littleproduct = document.getElementById("fjlb");
                var cindex = littleproduct.selectedIndex;
                var cText = littleproduct.options[cindex].text;
                var cValue = littleproduct.options[cindex].value;
                window.open("../../AttDel.aspx?tmp=" + num + "&number=" + cValue + " ", "window", "height=1, width=1,top=150,left=150,toolbar=no, menubar=no, scrollbars=no,resizable=yes,location=no, status=no");
            }
        }
</script>
</head>
<body>
<form action="" method="post">
<script type="text/javascript">
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
</script>
<script type="text/javascript">
function WebForm_OnSubmit() {
	if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
	return true;
}
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="td_base" width="80%" height="25px">新增业主投诉信息</td>
				<td class="td_base" width="20%">&nbsp;</td>
			</tr>
			<tr>
				<td valign="top" colspan="2">
					<table cellspacing="0" cellpadding="0" width="100%" align="center"
						border="0">
						<tr>
							<td colspan="2">
								<table width="100%" border="0" cellpadding="0" cellspacing="0"
									class="form">
									<tr>
										<td class="form-item" style="width: 20%"><font
											color="red">*</font>选择房产：</td>
										<td style="width: 30%">
										<select name="xq"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;xq\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="xq" class="mytext" style="width: 90%;">
												<option selected="selected" value=""></option>
												<option value="1">中东首座</option>
												<option value="2">盈科大厦</option>
												<option value="3">孔雀英国宫</option>
										</select></td>
										<td class="form-item" style="width: 20%">
										<font color="red">*</font>楼宇名称：</td>
										<td style="width: 30%">
										<select name="ly" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ly\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="ly" class="mytext" style="width: 90%;">

										</select></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>单元/楼层：</td>
										<td>
										<select name="dy"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;dy\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="dy" class="mytext" style="width: 90%;">

										</select></td>
										<td class="form-item">
										<font color="red">*</font>房间名称：</td>
										<td>
										<select name="cellname"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cellname\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="cellname" class="mytext" style="width: 90%;">

										</select></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>投&nbsp;诉&nbsp;人：
										</td>
										<td>
										<input name="tsr" type="text" id="tsr" class="mytext"
											style="width: 90%;" /></td>
										<td class="form-item">
										<font color="red">*</font>联系电话：</td>
										<td>
										<input name="lxdh" type="text" id="lxdh"
											class="mytext" style="width: 90%;" /></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>投诉时间：</td>
										<td><input name="tsdate" type="text" maxlength="10"
											id="tsdate" class="mytext"
											onclick="SelectDate(this,&#39;yyyy-MM-dd&#39;)"
											style="width: 90%;" /></td>
										<td class="form-item">
										<font color="red">*</font>投诉类别：</td>
										<td><select name="tslb" id="tslb" style="width: 90%;">
												<option value=""></option>
												<option value="580">物业问题</option>
												<option value="581">收费问题</option>
												<option value="582">卫生问题</option>
												<option value="583">安全问题</option>

										</select></td>
									</tr>
									<tr>
										<td class="form-item">状态：</td>
										<td><select name="yjj" id="yjj" disabled="disabled"
											class="aspNetDisabled mytext" style="width: 90%;">
												<option selected="selected" value="待受理">待受理</option>
												<option value="受理中">受理中</option>
												<option value="受理完毕">受理完毕</option>

										</select></td>
										<td class="form-item">接&nbsp;待&nbsp;人：</td>
										<td><input name="jdr" type="text" id="jdr" class="mytext"
											style="width: 90%;" /></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>投诉内容：</td>
										<td colspan="3">
										<textarea name="tsnr" rows="3" cols="20"
												id="tsnr" class="mytextarea" style="width: 96%;">
</textarea></td>
									</tr>
									<tr>
										<td class="form-item" rowspan="2">参考附件：</td>
										<td colspan="3">
										<select name="fjlb" id="fjlb" style="width: 80%;">

										</select>
										<img onclick="AttDown();" src="http://hksoft.eicp.net:91/Images/down.gif" ,border="0" alt="下载附件" />
											<input type="image" name="delBtn" id="delBtn" title="删除附件" src="http://hksoft.eicp.net:91/Images/del.gif"
											onclick="javascript:return AttDel();WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;delBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" />
										</td>
									</tr>
									<tr>
										<td colspan="3">
										<input name="uploadFile" type="file" id="uploadFile" style="width: 80%" class="mytext" />
											<input type="image" name="uploadBtn" id="uploadBtn" title="上传附件" src="http://hksoft.eicp.net:91/Images/up.gif"
											onclick="javascript:return PageCheck();WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;uploadBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" style="height: 30px">
							<input type="submit" name="SaveBtn" value=" 保存 "
								onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;SaveBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
								id="SaveBtn" class="mybtn" />
								<input type="button" name="BackBtn" value=" 关闭 " class="mybtn"
								onclick="javascript:window.close()" /></td>
						</tr>
					</table>
					<input name="Number" type="text" value="2019651630496015158"
					id="Number" style="display: none" />
					<div id="ValidationSummary1" style="display: none;"></div>
					<span id="Requiredfieldvalidator1" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator2" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator4" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator3" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator9" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator5" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator6" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator7" style="visibility: hidden;">&nbsp;
				</span> <span id="Requiredfieldvalidator8" style="visibility: hidden;">&nbsp;
				</span> <script type="text/javascript">
var Page_ValidationSummaries =  new Array(document.getElementById("ValidationSummary1"));
var Page_Validators =  new Array(document.getElementById("Requiredfieldvalidator1"), document.getElementById("Requiredfieldvalidator2"), document.getElementById("Requiredfieldvalidator4"), document.getElementById("Requiredfieldvalidator3"), document.getElementById("Requiredfieldvalidator9"), document.getElementById("Requiredfieldvalidator5"), document.getElementById("Requiredfieldvalidator6"), document.getElementById("Requiredfieldvalidator7"), document.getElementById("Requiredfieldvalidator8"));
</script>
<script type="text/javascript">
var ValidationSummary1 = document.all ? document.all["ValidationSummary1"] : document.getElementById("ValidationSummary1");
ValidationSummary1.showmessagebox = "True";
ValidationSummary1.showsummary = "False";
var Requiredfieldvalidator1 = document.all ? document.all["Requiredfieldvalidator1"] : document.getElementById("Requiredfieldvalidator1");
Requiredfieldvalidator1.controltovalidate = "xq";
Requiredfieldvalidator1.errormessage = "请选择房产";
Requiredfieldvalidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator1.initialvalue = "";
var Requiredfieldvalidator2 = document.all ? document.all["Requiredfieldvalidator2"] : document.getElementById("Requiredfieldvalidator2");
Requiredfieldvalidator2.controltovalidate = "ly";
Requiredfieldvalidator2.errormessage = "请选择楼宇";
Requiredfieldvalidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator2.initialvalue = "";
var Requiredfieldvalidator4 = document.all ? document.all["Requiredfieldvalidator4"] : document.getElementById("Requiredfieldvalidator4");
Requiredfieldvalidator4.controltovalidate = "dy";
Requiredfieldvalidator4.errormessage = "请选择单元/楼层";
Requiredfieldvalidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator4.initialvalue = "";
var Requiredfieldvalidator3 = document.all ? document.all["Requiredfieldvalidator3"] : document.getElementById("Requiredfieldvalidator3");
Requiredfieldvalidator3.controltovalidate = "cellname";
Requiredfieldvalidator3.errormessage = "请选择房间";
Requiredfieldvalidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator3.initialvalue = "";
var Requiredfieldvalidator9 = document.all ? document.all["Requiredfieldvalidator9"] : document.getElementById("Requiredfieldvalidator9");
Requiredfieldvalidator9.controltovalidate = "tslb";
Requiredfieldvalidator9.errormessage = "请选择投诉类别";
Requiredfieldvalidator9.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator9.initialvalue = "";
var Requiredfieldvalidator5 = document.all ? document.all["Requiredfieldvalidator5"] : document.getElementById("Requiredfieldvalidator5");
Requiredfieldvalidator5.controltovalidate = "tsr";
Requiredfieldvalidator5.errormessage = "请输入投诉人";
Requiredfieldvalidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator5.initialvalue = "";
var Requiredfieldvalidator6 = document.all ? document.all["Requiredfieldvalidator6"] : document.getElementById("Requiredfieldvalidator6");
Requiredfieldvalidator6.controltovalidate = "tsnr";
Requiredfieldvalidator6.errormessage = "请输入投诉内容";
Requiredfieldvalidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator6.initialvalue = "";
var Requiredfieldvalidator7 = document.all ? document.all["Requiredfieldvalidator7"] : document.getElementById("Requiredfieldvalidator7");
Requiredfieldvalidator7.controltovalidate = "tsdate";
Requiredfieldvalidator7.errormessage = "请选择投诉时间";
Requiredfieldvalidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator7.initialvalue = "";
var Requiredfieldvalidator8 = document.all ? document.all["Requiredfieldvalidator8"] : document.getElementById("Requiredfieldvalidator8");
Requiredfieldvalidator8.controltovalidate = "lxdh";
Requiredfieldvalidator8.errormessage = "请输入联系电话";
Requiredfieldvalidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator8.initialvalue = "";
</script> 
<script type="text/javascript">
var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
</script>
</form>
</body>
</html>