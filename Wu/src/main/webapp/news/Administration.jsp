<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href="Main.css" type="text/css" rel="stylesheet" />
<script src="MyJs.js" type="text/javascript" charset="utf-8"></script>
<title>业主请修</title>
</head>
<body class="main">
	<form action="" method="post">
		<table width="1310" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<table cellspacing="0" cellpadding="0" width="98%" align="center"
						border="0">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="0" border="0">
									<tr>
										<td align="right">选择房产：</td>
										<td>
										<select name="xq" id="xq" style="width: 150px;">
												<option selected="selected" value=""></option>
												<option value="1">中东首座</option>
												<option value="2">盈科大厦</option>
												<option value="3">孔雀英国宫</option>
										</select>
										</td>
										<td align="right">楼宇：</td>
										<td>
										<select name="ly" id="ly" style="width: 150px;">
										</select>
										</td>
										<td align="right">单元/楼层：</td>
										<td>
										<select name="dy" id="dy" style="width: 150px;">
										</select>
										</td>
									</tr>
									<tr>
										<td style="width: 100; height: 2" colspan="6"></td>
									</tr>
									<tr>
										<td align="right">房间：</td>
										<td>
										<select name="cellname" id="cellname" class="mytext" style="width: 150px;">
										</select>
										</td>
										<td align="right">状态：</td>
										<td>
										<select name="zt" id="zt" class="mytext" style="width: 150px;">
												<option selected="selected" value=""></option>
												<option value="待审批">待审批</option>
												<option value="审批通过">审批通过</option>
												<option value="已验收">已验收</option>
										</select>
										</td>
										<td align="right">申请人：</td>
										<td>
										<input name="sqr" type="text" id="sqr" class="mytext" style="width: 150px;" />
											</td>
									</tr>
									<tr>
										<td style="width: 100; height: 2" colspan="6"></td>
									</tr>
									<tr>
										<td align="right">请修内容：</td>
										<td>
										<input name="qxnr" type="text" id="qxnr" class="mytext" style="width: 150px;" />
										</td>
										<td colspan="4">&nbsp;
										<input type="submit" name="QueryBtn" value="查询" id="QueryBtn" class="mybtn" />
										<input type="submit" name="ClearBtn" value="清空" id="ClearBtn" class="mybtn" />
										<input type="button" name="AddBtn" value="增加" class="mybtn" onclick="javascript: popAdd('add_admin.jsp');" />
										<input type="submit" name="DelBtn" value="删除" onclick="return confirm(&#39;您只能删除非业主提交的记录，确认要继续执行吗？&#39;);" id="DelBtn" class="mybtn" />
										<input type="submit" name="ExpBtn" value="导出" id="ExpBtn" class="mybtn" />
										关键词：<input name="txtKeyText" type="text" id="txtKeyText" title="请输入房间名称,支持模糊定位" class="mytext" style="width: 50px;" />
										<input type="submit" name="btnFind" value="定位房间" id="btnFind" title="用于快速定位房间下拉框" class="mybtn" style="width: 70px" />
										</td>
									</tr>
									<tr>
									<td style="height: 10px"></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div>
									<table class="hkgv" cellspacing="0" rules="all" border="1"
										id="GridView1" style="width: 1300px; border-collapse: collapse;">
										<tr class="hkHeadStyle">
											<th scope="col" style="width: 30px;">
											<img src="http://hksoft.eicp.net:91/images/refresh.gif" alt="序号" />
											</th>
											<th scope="col" style="width: 30px;">
											<input id="chkall" type="checkbox" onclick="chkAll();" title="全选或全不选" style="width: 16px; height: 16px" />
											</th>
											<th scope="col">所属公司</th>
											<th scope="col">房产</th>
											<th scope="col" style="white-space: nowrap;">申请人</th>
											<th scope="col" style="width: 80px;">申请日期</th>
											<th scope="col" style="width: 70px;">修理费用</th>
											<th scope="col" style="width: 60px;">状态</th>
											<th scope="col">请修内容</th>
											<th scope="col" style="width: 80px;">审批人</th>
											<th scope="col" style="width: 120px;">审批时间</th>
											<th scope="col" style="white-space: nowrap;">审批意见</th>
											<th scope="col">验收意见</th>
										</tr>
										<tr class="hkRowStyle" onclick="javascript:changeBg(this)" style="color: Red;">
											<td align="center">
											<span id="GridView1_ctl02_Label1">1</span>
											</td>
											<td align="center" style="height: 18px; width: 30px;">
											<span class="mybox">
											<input id="GridView1_ctl02_del" type="checkbox" name="GridView1$ctl02$del" />
													</span>
													</td>
											<td style="white-space: nowrap;">海淀子公司</td>
											<td style="white-space: nowrap;">
											<a href="#" onclick="javascript:popView('qxgl_mod.aspx?id=14&cellid=1')" class="gvlink">
												<span id="GridView1_ctl02_Labelyjje">中东首座</span>#
												<span id="GridView1_ctl02_Label2">1号楼</span>#
												<span id="GridView1_ctl02_Label3">1单元</span>#
												<span id="GridView1_ctl02_Label4">101室</span>
												</a>
												</td>
											<td align="center" style="white-space: nowrap;">赵云</td>
											<td align="center">2018-05-14</td>
											<td align="right">&nbsp;</td>
											<td align="center">待审批</td>
											<td>自来水主管道生锈漏水</td>
											<td align="center">&nbsp;</td>
											<td align="center">&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>