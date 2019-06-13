<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
<head>
<script type="text/javascript" src="WebCalendar.js"></script>
<title>业主信息</title>
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
	if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) 
	return false;
	return true;
}
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="td_base" width="65%" height="25px">
				<span id="lbltitle">新增</span>
				业主信息</td>
				<td class="td_base" width="35%">
					<div id="p_ht">
						销售合同号:<input name="htno" type="text" id="htno" class="mytext"
							style="width: 100px;" />
							<input type="submit" name="TqBtn" value="提取" id="TqBtn" class="mybtn" />
					</div>
				</td>
			</tr>
			<tr>
				<td valign="top" colspan="2">
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="form">
						<tr>
							<td class="form-item">
							<font color="red">*</font>所属公司：</td>
							<td>
							<select name="ssgs" id="ssgs" class="mytext" style="width: 90%;">
									<option value=""></option>
									<option value="A01">朝阳子公司</option>
									<option value="A04">海淀子公司</option>
									<option value="A08">宣武子公司</option>
							</select></td>
							<td class="form-item">业主类型：</td>
							<td style="width: 30%">
							<select name="yzlx" id="yzlx" class="mytext" style="width: 90%;">
									<option selected="selected" value="正式业主">正式业主</option>
									<option value="临时业主">临时业主</option>
							</select></td>
						</tr>
						<tr>
							<td style="width: 20%" class="form-item"><font color="red">*</font>业主编码：
							</td>
							<td style="width: 30%">
							<input name="code" type="text"
								maxlength="20" id="code" class="mytext" style="width: 90%;" />
							</td>
							<td class="form-item" style="width: 20%">
							<font color="red">*</font>业主姓名：
							</td>
							<td style="width: 30%">
							<input name="name" type="text"
								id="name" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">性别：</td>
							<td><select name="sex" id="sex" class="mytext" style="width: 90%;">
									<option selected="selected" value="男">男</option>
									<option value="女">女</option>

							</select></td>
							<td class="form-item">出生日期：</td>
							<td><input name="txtSdate" type="text" maxlength="10" id="txtSdate" class="mytext"
								onclick="SelectDate(this,&#39;yyyy-MM-dd&#39;)" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">民族：</td>
							<td><input name="mz" type="text" id="mz" class="mytext" style="width: 90%;" /></td>
							<td class="form-item">学历：</td>
							<td><select name="xl" id="xl" class="mytext" style="width: 90%;">
									<option selected="selected" value=""></option>
									<option value="小学">小学</option>
									<option value="初中">初中</option>
									<option value="高中">高中</option>
									<option value="中专">中专</option>
									<option value="职高">职高</option>
									<option value="大专">大专</option>
									<option value="本科">本科</option>
									<option value="硕士研究生">硕士研究生</option>
									<option value="博士研究生">博士研究生</option>
									<option value="其它">其它</option>

							</select></td>
						</tr>
						<tr>
							<td class="form-item">国籍：</td>
							<td><input name="gj" type="text" id="gj" class="mytext" style="width: 90%;" /></td>
							<td class="form-item">籍贯：</td>
							<td><input name="jg" type="text" id="jg" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">证件类型：</td>
							<td><select name="zjlx" id="zjlx" class="mytext" style="width: 90%;">
									<option value=""></option>
									<option value="985">护照</option>
									<option value="429">驾驶证 </option>
									<option value="428">身份证</option>
									<option value="430">营业执照</option>
									<option value="984">职业资格证</option>

							</select></td>
							<td class="form-item">证件号码：</td>
							<td><input name="zjhm" type="text" id="zjhm" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">工作单位：</td>
							<td><input name="gzdw" type="text" id="gzdw" class="mytext" style="width: 90%;" /></td>
							<td class="form-item">职务：</td>
							<td><input name="zw" type="text" id="zw" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">手机号码：</td>
							<td><input name="lxdh" type="text" id="lxdh" class="mytext" style="width: 90%;" /></td>
							<td class="form-item">邮编：</td>
							<td><input name="zip" type="text" maxlength="6" id="zip" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">联系地址：</td>
							<td colspan="3">
							<input name="lxdz" type="text" id="lxdz" class="mytext" style="width: 96%;" /></td>
						</tr>
						<tr>
							<td class="form-item">紧急联系人：</td>
							<td>
							<input name="JJLXRXM" type="text" id="JJLXRXM" class="mytext" style="width: 90%;" /></td>
							<td class="form-item">紧急联系电话：</td>
							<td>
							<input name="JJLXRDH" type="text" id="JJLXRDH" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">紧急联系地址：</td>
							<td colspan="3">
							<input name="JJLXRDZ" type="text" id="JJLXRDZ" class="mytext" style="width: 96%;" /></td>
						</tr>

						<tr>

							<td class="form-item">银行代扣：</td>
							<td><span id="yn_yhdk">
							<input id="yn_yhdk_0" type="radio" name="yn_yhdk" value="是" />
									<label for="yn_yhdk_0">是</label>
									<input id="yn_yhdk_1" type="radio" name="yn_yhdk" value="否" checked="checked" />
									<label for="yn_yhdk_1">否</label></span></td>
							<td class="form-item">开户行：</td>
							<td><input name="khh" type="text" id="khh" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">银行帐号：</td>
							<td><input name="yhzh" type="text" id="yhzh" class="mytext" style="width: 90%;" /></td>
							<td class="form-item">所在派出所：</td>
							<td><input name="szpcs" type="text" id="szpcs" class="mytext" style="width: 90%;" /></td>
						</tr>
						<tr>
							<td class="form-item">状态：</td>
							<td><select name="yzzt" id="yzzt" style="width: 90%;">
									<option value="正常">正常</option>
									<option value="停用">停用</option>

							</select></td>
							<td class="form-item"></td>
							<td></td>
						</tr>
						<tr>
							<td class="form-item">备注：</td>
							<td><textarea name="memo" rows="11" cols="20" id="memo"
									class="mytextarea" style="width: 90%;">
</textarea></td>
							<td colspan="2">
							<img id="Image1" src="http://haoke365b.ticp.net:91/attach/pms/f01i/no.gif"
								style="height: 140px; width: 115px;" /><br />
								<span id="pictitle" class="aspNetDisabled">推荐：115*140px</span><br />
								<input name="inpFileUp" type="file" id="inpFileUp" style="width: 135px;" class="mytext" />
								<input type="submit" name="upload" value="上传" id="upload" class="mybtn" />
								<input type="submit" name="Button3" value="删除" id="Button3" class="mybtn" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" style="height: 30px">
				<input type="submit" name="SaveAddBtn" value="保存并新建"
					onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;SaveAddBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
					id="SaveAddBtn" class="mybtn" />
					<input type="submit" name="SaveBtn" value="保存"
					onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;SaveBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
					id="SaveBtn" class="mybtn" />
					<input type="button" name="BackBtn"
					value="关闭" class="mybtn" onclick="javascript: window.close()" /></td>
			</tr>
		</table>

		<div id="ValidationSummary2" style="display: none;"></div>
		<span id="RequiredFieldValidator2" style="visibility: hidden;">&nbsp;</span>
		<span id="RequiredFieldValidator1" style="visibility: hidden;">&nbsp;</span>
		<span id="RegularExpressionValidator6" style="display: none;"></span>
		<span id="RegularExpressionValidator3" style="display: none;"></span>
		<script type="text/javascript">
var Page_ValidationSummaries =  new Array(document.getElementById("ValidationSummary2"));
var Page_Validators =  new Array(document.getElementById("RequiredFieldValidator2"),
		document.getElementById("RequiredFieldValidator1"),
		document.getElementById("RegularExpressionValidator6"),
		document.getElementById("RegularExpressionValidator3"));
</script>

		<script type="text/javascript">
var ValidationSummary2 = document.all ? document.all["ValidationSummary2"] : document.getElementById("ValidationSummary2");
ValidationSummary2.showmessagebox = "True";
ValidationSummary2.showsummary = "False";
var RequiredFieldValidator2 = document.all ? document.all["RequiredFieldValidator2"] : document.getElementById("RequiredFieldValidator2");
RequiredFieldValidator2.controltovalidate = "code";
RequiredFieldValidator2.errormessage = "请输入业主编码";
RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldValidator2.initialvalue = "";
var RequiredFieldValidator1 = document.all ? document.all["RequiredFieldValidator1"] : document.getElementById("RequiredFieldValidator1");
RequiredFieldValidator1.controltovalidate = "name";
RequiredFieldValidator1.errormessage = "请输入业主姓名";
RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldValidator1.initialvalue = "";
var RegularExpressionValidator6 = document.all ? document.all["RegularExpressionValidator6"] : document.getElementById("RegularExpressionValidator6");
RegularExpressionValidator6.controltovalidate = "lxdh";
RegularExpressionValidator6.errormessage = "手机号码格式错误！";
RegularExpressionValidator6.display = "None";
RegularExpressionValidator6.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
RegularExpressionValidator6.validationexpression = "^((\\(\\d{3}\\))|(\\d{3}\\-))?1[23456789][0-9]\\d{8}";
var RegularExpressionValidator3 = document.all ? document.all["RegularExpressionValidator3"] : document.getElementById("RegularExpressionValidator3");
RegularExpressionValidator3.controltovalidate = "code";
RegularExpressionValidator3.errormessage = "业主编码必需为数字、字母或二者组合";
RegularExpressionValidator3.display = "None";
RegularExpressionValidator3.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
RegularExpressionValidator3.validationexpression = "^\\w+$";
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