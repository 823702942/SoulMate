<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href="Main.css" type="text/css" rel="stylesheet" />
<script src="MyJs.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="WebCalendar.js"></script>
<title>业主装修</title>
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
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<table cellspacing="0" cellpadding="0" width="98%" align="center"
						border="0">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="2" border="0">
									<tr>
										<td align="right">选择房产：</td>
										<td><select name="xq"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;xq\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="xq" style="width: 150px;">
												<option selected="selected" value=""></option>
												<option value="1">中东首座</option>
												<option value="2">盈科大厦</option>
												<option value="3">孔雀英国宫</option>
										</select></td>
										<td align="right">楼宇：</td>
										<td><select name="ly"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ly\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="ly" style="width: 150px;">

										</select></td>
										<td align="right">单元/楼层：</td>
										<td><select name="dy"
											onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;dy\&#39;,\&#39;\&#39;)&#39;, 0)"
											id="dy" style="width: 150px;">

										</select></td>
									</tr>
									<tr>
										<td align="right">房间：</td>
										<td><select name="cellname" id="cellname" class="mytext"
											style="width: 150px;">

										</select></td>
										<td align="right">状态：</td>
										<td><select name="zt" id="zt" class="mytext"
											style="width: 150px;">
												<option selected="selected" value=""></option>
												<option value="待审批">待审批</option>
												<option value="审批通过">审批通过</option>
												<option value="已验收">已验收</option>
												<option value="已作废">已作废</option>

										</select></td>
										<td align="right">申请人：</td>
										<td><input name="sqr" type="text" id="sqr" class="mytext"
											style="width: 150px;" /></td>
									</tr>
									<tr>
										<td align="right">装修内容：</td>
										<td><input name="zxnr" type="text" id="zxnr"
											class="mytext" style="width: 150px;" /></td>
										<td align="right">申请日期：</td>
										<td colspan="3">
										<input name="sqrq_s" type="text" id="sqrq_s" class="mytext"
											onclick="SelectDate(this,&#39;yyyy-MM-dd&#39;)"
											style="width: 90px;" />
											至<input name="sqrq_e" type="text" id="sqrq_e" class="mytext"
											onclick="SelectDate(this,&#39;yyyy-MM-dd&#39;)"
											style="width: 90px;" /></td>
									</tr>
									<tr>
										<td align="right">&nbsp;</td>
										<td colspan="5">
										<input type="submit" name="QueryBtn"
											value="查询" id="QueryBtn" class="mybtn" /> 
											<input type="submit" name="ClearBtn" value="清空" id="ClearBtn"
											class="mybtn" /> 
											<input type="button" name="AddBtn" value="增加" class="mybtn"
											onclick="javascript:popAdd('add_reno.jsp');" /> 
											<input type="submit" name="ExpBtn" value="导出" id="ExpBtn" class="mybtn" /> 
											关键词：<input name="txtKeyText" type="text"
											id="txtKeyText" title="请输入房间名称,支持模糊定位" class="mytext"
											style="width: 50px;" /> 
											<input type="submit" name="btnFind"
											value="定位房间" id="btnFind" title="用于快速定位房间下拉框" class="mybtn"
											style="width: 70px" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div>
									<table class="hkgv" cellspacing="0" rules="all" border="1"
										id="GridView1"
										style="width: 1250px; border-collapse: collapse;">
										<tr class="hkHeadStyle">
											<th scope="col" style="width: 30px;">
											<img src="http://hksoft.eicp.net:91/images/refresh.gif" alt="序号" />
											</th>
											<th scope="col">所属公司</th>
											<th scope="col">房产</th>
											<th scope="col" style="width: 70px;">申请人</th>
											<th scope="col" style="width: 80px;">申请日期</th>
											<th scope="col" style="width: 70px;">装修保证金</th>
											<th scope="col" style="width: 70px;">违约金</th>
											<th scope="col" style="width: 70px;">状态</th>
											<th scope="col">装修内容</th>
											<th scope="col" style="width: 80px;">审批人</th>
											<th scope="col" style="width: 120px;">审批时间</th>
											<th scope="col" style="width: 80px;">标识</th>
										</tr>
										<tr class="hkRowStyle" onclick="javascript:changeBg(this)"
											style="color: Gray;">
											<td align="center"><span id="GridView1_ctl02_Label1">1</span>
											</td>
											<td>海淀子公司</td>
											<td>
											<a href="#"
												onclick="javascript:popView('zhzx_mod.aspx?id=15&cellid=14')"
												class="gvlink"> 
												<span id="GridView1_ctl02_Labelyjje">中东首座</span>#
													<span id="GridView1_ctl02_Label2">1号楼</span># 
													<span id="GridView1_ctl02_Label3">2单元</span># 
													<span id="GridView1_ctl02_Label4">102室</span>
											</a>
											</td>
											<td align="center">蒋干</td>
											<td align="center">2015-05-12</td>
											<td align="right">500.00</td>
											<td align="right">&nbsp;</td>
											<td align="center">已作废</td>
											<td>旧房改造</td>
											<td align="center">物业系统管理员</td>
											<td align="center">2015-05-12 22:03</td>
											<td align="center">物业人员录入</td>
										</tr>
										<tr class="hkBottomStyle">
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td align="center" style="font-weight: bold;">合计</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td align="right">25000.00</td>
											<td align="right">600.00</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td style="height: 22px"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>