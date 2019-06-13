<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href="Main.css" type="text/css" rel="stylesheet" />
<script src="MyJs.js" type="text/javascript" charset="utf-8"></script>
<title>业主信息</title>
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
							<td style="height: 40px">房间编码：<input name="fjbm" type="text"
								id="fjbm" class="mytext" style="width: 100px;" /> 快速检索：<select
								name="query_tj" id="query_tj">
									<option selected="selected" value="a.code">业主编码</option>
									<option value="a.name">业主姓名</option>
									<option value="a.zjhm">证件号码</option>
									<option value="a.gzdw">工作单位</option>
									<option value="a.lxdh">手机号码</option>
									<option value="a.lxdz">联系地址</option>
							</select> <input name="query_content" type="text" id="query_content"
								class="mytext" style="width: 120px;" /> <select name="yzlx"
								id="yzlx">
									<option selected="selected" value="">全部业主</option>
									<option value="正式业主">正式业主</option>
									<option value="临时业主">临时业主</option>

							</select>
							</td>
							<td align="right"><input type="submit" name="QueryBtn"
								value="查询" id="QueryBtn" class="mybtn" /> <input type="button"
								name="AddBtn" value="增加" class="mybtn"
								onclick="javascript: popView('add_info.jsp');" /> <input
								type="button" name="AddBtn" value="导入" class="mybtn"
								onclick="javascript: popAdd('Yzdr.aspx');" /> <input
								type="submit" name="StopBtn" value="停用"
								onclick="return confirm(&#39;确认要执行停用吗？&#39;);" id="StopBtn"
								class="mybtn" /> <input type="submit" name="PassBtn" value="恢复"
								onclick="return confirm(&#39;确认要执行恢复吗？&#39;);" id="PassBtn"
								class="mybtn" /> <input type="submit" name="RefBtn" value="刷新"
								id="RefBtn" class="mybtn" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<div>
									<table class="hkgv" cellspacing="0" rules="all" border="1"
										id="GridView1" style="width: 100%; border-collapse: collapse;">
										<tr class="hkHeadStyle">
											<th scope="col" style="width: 30px;"><img
												src="http://hksoft.eicp.net:91/images/refresh.gif" alt="序号" />
											</th>
											<th scope="col" style="width: 30px;"><input id="chkall"
												type="checkbox" onclick="chkAll();" title="全选或全不选"
												style="width: 16px; height: 16px" /></th>
											<th scope="col">所属公司</th>
											<th scope="col">业主编码</th>
											<th scope="col" style="width: 70px;">姓名</th>
											<th scope="col" style="width: 30px;">性别</th>
											<th scope="col" style="width: 80px;">出生日期</th>
											<th scope="col">证件号码</th>
											<th scope="col">手机号码</th>
											<th scope="col" style="width: 70px;">银行代扣</th>
											<th scope="col" style="width: 40px;">状态</th>
											<th scope="col" style="width: 170px;">操作</th>
										</tr>
										<tr class="hkRowStyle" onclick="javascript:changeBg(this)">
											<td align="center"><span id="GridView1_ctl02_Label1">1</span>
											</td>
											<td align="center" style="height: 18px; width: 30px;"><span
												class="mybox"><input id="GridView1_ctl02_del"
													type="checkbox" name="GridView1$ctl02$del" /></span></td>
											<td>海淀子公司</td>
											<td align="center"><a href="#"
												onclick="javascript:popView('Yzxx_View.aspx?id=162')"
												class="gvlink"> <span id="GridView1_ctl02_Labelyjje">A11101</span></a>
											</td>
											<td>赵云</td>
											<td align="center">男</td>
											<td align="center">1969-12-31</td>
											<td>15043019500101101</td>
											<td>13811223344</td>
											<td align="center">是</td>
											<td align="center">正常</td>
											<td align="center"><a href="#"
												onclick="javascript:popMod('Yzxx_Jtcy.aspx?ownerid=162')"
												class="gvlink">家庭成员(2)</a>&nbsp; <a href="#"
												onclick="javascript:popMod('Yzxx_Fcdj.aspx?ownerid=162')"
												class="gvlink">房产登记(2)</a></td>
										</tr>
										</tr>
										<tr class="hkRowStyle" onclick="javascript:changeBg(this)">
											<td align="center"><span id="GridView1_ctl02_Label1">1</span>
											</td>
											<td align="center" style="height: 18px; width: 30px;"><span
												class="mybox"><input id="GridView1_ctl02_del"
													type="checkbox" name="GridView1$ctl02$del" /></span></td>
											<td>朝阳子公司</td>
											<td align="center"><a href="#"
												onclick="javascript:popView('Yzxx_View.aspx?id=176')"
												class="gvlink"> <span id="GridView1_ctl02_Labelyjje">A11303</span></a>
											</td>
											<td>张辽</td>
											<td align="center">男</td>
											<td align="center">1965-11-23</td>
											<td>150430196607073321</td>
											<td>15811112222</td>
											<td align="center">否</td>
											<td align="center">正常</td>
											<td align="center"><a href="#"
												onclick="javascript:popMod('Yzxx_Jtcy.aspx?ownerid=176')"
												class="gvlink">家庭成员(0)</a>&nbsp;<a href="#"
												onclick="javascript:popMod('Yzxx_Fcdj.aspx?ownerid=176')"
												class="gvlink">房产登记(0)</a></td>
										</tr>
										<tr>
											<td colspan="2" style="height: 22px">
												<div id="AspNetPager1" class="page_text" ShowInputBox="Auto"
													InputBoxClass="pagetext">
													<div class="page_text" style="width: 250px; float: left;">
														<font color='#333333'>共 19 行/每页15行 第1/2页</font>
													</div>
													<div class="page_text" style="float: left;">
														<a disabled="disabled" style="margin-right: 5px;">首页</a> <a
															disabled="disabled" style="margin-right: 5px;">上页</a> <span
															style="margin-right: 5px; font-weight: Bold; color: red;">1</span>
														<a href="javascript:__doPostBack('AspNetPager1','2')"
															style="margin-right: 5px;">2</a> <a
															href="javascript:__doPostBack('AspNetPager1','2')"
															style="margin-right: 5px;">下页</a> <a
															href="javascript:__doPostBack('AspNetPager1','2')"
															style="margin-right: 5px;">末页</a>
													</div>
												</div>
											</td>
										</tr>
									</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>