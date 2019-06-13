<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
<head>
<script type="text/javascript" src="WebCalendar.js"></script>
<title>业主装修信息维护</title>
<link href="Main.css" type="text/css" rel="stylesheet" />
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
				<td class="td_base" width="80%" height="25px">新增业主装修信息</td>
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
										<td class="form-item" style="width: 20%">
										<font color="red">*</font>选择房产：</td>
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
										<td><select name="dy"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;dy\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="dy" class="mytext" style="width: 90%;">

										</select></td>
										<td class="form-item">
										<font color="red">*</font>房间名称：</td>
										<td><select name="cellname"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cellname\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="cellname" class="mytext" style="width: 90%;">

										</select></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>申请人：</td>
										<td><input name="sqr" type="text" id="sqr" class="mytext"
											style="width: 90%;" /></td>
										<td class="form-item">
										<font color="red">*</font>联系电话：</td>
										<td><input name="sqrdh" type="text" id="sqrdh"
											class="mytext" style="width: 90%;" /></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>申请时间：</td>
										<td><input name="sqdate" type="text" maxlength="10"
											id="sqdate" class="mytext"
											onclick="SelectDate(this,&#39;yyyy-MM-dd&#39;)"
											style="width: 90%;" /></td>
										<td class="form-item">状态：</td>
										<td><select name="zt" id="zt" disabled="disabled"
											class="aspNetDisabled mytext" style="width: 90%;">
												<option selected="selected" value="待审批">待审批</option>
												<option value="审批通过">审批通过</option>
												<option value="已验收">已验收</option>
												<option value="已作废">已作废</option>

										</select></td>
									</tr>
									<tr>
										<td class="form-item">
										<font color="red">*</font>装修内容：</td>
										<td colspan="3">
										<textarea name="zxnr" rows="3" cols="20"
												id="zxnr" class="mytextarea" style="width: 96%;">
</textarea></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" style="height: 30px">
							<input type="submit" name="SaveAddBtn" value="保存并新建"
								onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;SaveAddBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
								id="SaveAddBtn" class="mybtn" />
								<input type="submit" name="SaveBtn" value=" 保存 "
								onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;SaveBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
								id="SaveBtn" class="mybtn" /> <input type="button"
								name="BackBtn" value=" 关闭 " class="mybtn"
								onclick="javascript:window.close()" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

		<div id="ValidationSummary1" style="display: none;"></div>
		<span id="Requiredfieldvalidator1" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator2" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator4" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator3" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator5" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator8" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator6" style="visibility: hidden;">&nbsp;
		</span> <span id="Requiredfieldvalidator7" style="visibility: hidden;">&nbsp;
		</span>

		<script type="text/javascript">
var Page_ValidationSummaries =  new Array(document.getElementById("ValidationSummary1"));
var Page_Validators =  new Array(document.getElementById("Requiredfieldvalidator1"), document.getElementById("Requiredfieldvalidator2"), document.getElementById("Requiredfieldvalidator4"), document.getElementById("Requiredfieldvalidator3"), document.getElementById("Requiredfieldvalidator5"), document.getElementById("Requiredfieldvalidator8"), document.getElementById("Requiredfieldvalidator6"), document.getElementById("Requiredfieldvalidator7"));
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
var Requiredfieldvalidator5 = document.all ? document.all["Requiredfieldvalidator5"] : document.getElementById("Requiredfieldvalidator5");
Requiredfieldvalidator5.controltovalidate = "sqr";
Requiredfieldvalidator5.errormessage = "请输入申请人";
Requiredfieldvalidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator5.initialvalue = "";
var Requiredfieldvalidator8 = document.all ? document.all["Requiredfieldvalidator8"] : document.getElementById("Requiredfieldvalidator8");
Requiredfieldvalidator8.controltovalidate = "sqrdh";
Requiredfieldvalidator8.errormessage = "请输入联系电话";
Requiredfieldvalidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator8.initialvalue = "";
var Requiredfieldvalidator6 = document.all ? document.all["Requiredfieldvalidator6"] : document.getElementById("Requiredfieldvalidator6");
Requiredfieldvalidator6.controltovalidate = "zxnr";
Requiredfieldvalidator6.errormessage = "请输入装修内容";
Requiredfieldvalidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator6.initialvalue = "";
var Requiredfieldvalidator7 = document.all ? document.all["Requiredfieldvalidator7"] : document.getElementById("Requiredfieldvalidator7");
Requiredfieldvalidator7.controltovalidate = "sqdate";
Requiredfieldvalidator7.errormessage = "请选择申请时间";
Requiredfieldvalidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
Requiredfieldvalidator7.initialvalue = "";
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