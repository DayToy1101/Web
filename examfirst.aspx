<%@ Page Language="C#" MasterPageFile="~/Defalult.master" AutoEventWireup="true"
    CodeFile="examfirst.aspx.cs" Inherits="webpart_exam_examfirst" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
//var i=document.firstform.totalper.value;
function checktotal(){
var i=document.firstform.totalper.value;
var myform=document.firstform;
var a=myform.singlecount.value;
var b=myform.singleper.value;
var c=myform.multicount.value;
var d=myform.multiper.value;
var e=myform.judgecount.value;
var f=myform.judgeper.value;
var h=myform.answerscount.value;
var p=myform.answersper.value;
var j=a*b+c*d+e*f+h*p;
if (j!=i){
  document.all.tishi.innerText=" �����ܷ����趨�Ĳ����,���޸ģ�";
  }
else
  document.all.tishi.innerText=" ��ǰ�����ܷ�:"+ j;
  return j;
}
//function counttotalscore()
//{
//	firstform.totalper.value=parseInt(firstform.singlecount.value)*parseInt(firstform.singleper.value)+parseInt(firstform.multicount.value)*parseInt(firstform.multiper.value)+parseInt(firstform.judgecount.value)*parseInt(firstform.judgeper.value)+parseInt(firstform.answerscount.value)*parseInt(firstform.answersper.value)
//}
function submitit(){
myform=document.firstform;
if (myform.subject.value==""){            
  alert("��ѡ���Կ�Ŀ��")
  myform.subject.focus();
  return false;  
  }
  else return true;
}
    </script>

    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="176" valign="top">
                <table width="176" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="18">
                            <img src="/images/��վ��ҳ_12.gif" width="176" height="18" alt="" /></td>
                    </tr>
                    <tr>
                        <td style="height: 200px">
                            <table id="table2" width="176" height="200" cellpadding="0" style="border-right: #0074c6 1px solid"
                                cellspacing="0" runat="server" bgcolor="#ceebff">
                                <tr>
                                    <td colspan="2" height="50px;">
                                        &nbsp;&nbsp;<span style="font-size: 16pt; font-family: ��Բ">��������</span></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;&nbsp;��ӭ��! �μӿ���</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;&nbsp;�ϴε�½ʱ��<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=Session["latLogintime"] %></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="text" id="txtTime" runat="server" style="width: 130px; display: none;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp; �����˳�����������</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="20">
                            <img src="/images/��վ��ҳ_20.gif" width="176" height="20" alt="" /></td>
                    </tr>
                    <tr>
                        <td class="td1" valign="top">
                         <table width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid; border-bottom:#0074c6 1px solid; ">
                                <tr>
                                    <td class="td1">
                                        <div id="ListContent" style="width: 100%;">
                                            <label id="lblContentNews" enableviewstate="false" runat="server">
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="7">
                &nbsp;</td>
            <td width="610">
                <table width="610" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
                        <table width="610" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="13">
                                        &nbsp;</td>
                                </tr>
                                </table>
                            <table width="610" border="0" cellspacing="0" cellpadding="0" style="height: 369px">
                                <tr>
                                    <td height="13">
                                        <img src="/images/tabletop.gif" width="610" height="13" /></td>
                                </tr>
                                <tr>
                                    <td height="380" background="/images/tablemiddle.gif" align="center">
                                        <asp:Label ID="Label1" runat="server" Text="Label" style="color: #ff0000"></asp:Label>\<form id="firstform" name="firstform" action="Test.aspx">
                                            <table width="500" border="0" cellspacing="0" cellpadding="0" style="border: #0074c6 1px solid">
                                                <tr>
                                                    <td height="20" colspan="5" align="center" class="td1">
                                                        <font size="3"><b>�Ծ������Ϣ</b></font></td>
                                                </tr>
                                                <tr>
                                                    <td width="100" style="text-align: left">
                                                        <b>ѡ���Ŀ</b></td>
                                                    <td height="25" colspan="4">
                                                        <span style="font-size: 9pt; color: #000000; height: 20px;">
                                                            <select size="1" name="select" runat="server" id="select">
                                                                <option selected>--ѡ���Ŀ--</option>
                                                            </select>
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="20" colspan="5" align="center" class="td1">
                                                        <b>�Ծ���Ϣ</b></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left">
                                                        <b>�����ܷ�(<font color="#FF0000">��</font>)</b></td>
                                                    <td width="100">
                                                        <input type="text" id="totalper" name="totalper" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='100';"
                                                            onfocus="this.select();" value="100" style="width: 80px"></td>
                                                    <td height="25" colspan="3">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left" class="td1">
                                                        <b>�� ��(<span class="style1">4</span>)</b></td>
                                                    <td class="td1">
                                                        <b>��ѡ��</b></td>
                                                    <td width="100" height="20" class="td1">
                                                        <b>��ѡ��</b></td>
                                                    <td width="100" class="td1">
                                                        <b>�ж���</b></td>
                                                    <td width="100" height="20" class="td1">
                                                        <b>�ʴ���</b></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left">
                                                        <b>���ͷֲ�(<font color="#FF0000">��</font>)</b></td>
                                                    <td>
                                                        <input type="text" name="singlecount" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='10';"
                                                            onblur="checktotal();" onfocus="this.select();" onchange="checktotal()"
                                                            value="20" style="width: 80px"></td>
                                                    <td>
                                                        <input type="text" name="multicount" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='10';"
                                                            onblur="checktotal();" onfocus="this.select();" onchange="checktotal()"
                                                            value="20" style="width: 80px"></td>
                                                    <td>
                                                        <input type="text" name="judgecount" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='10';"
                                                            onblur="checktotal();" onfocus="this.select();" onchange="checktotal()"
                                                            value="10" style="width: 80px"></td>
                                                    <td height="25">
                                                        <input type="text" name="answerscount" class="inputnormal" readonly onkeyup="if(isNaN(this.value)) this.value='0';"
                                                            onblur="checktotal();" onfocus="this.select();" onchange="checktotal()"
                                                            value="0" style="width: 80px"></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left">
                                                        <b>��ֵ�ֲ�(<font color="#FF0000">��</font>)</b></td>
                                                    <td>
                                                        <input type="text" name="singleper" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='2';"
                                                            onblur="checktotal();" onfocus="this.select();" 
                                                            value="2" style="width: 80px"></td>
                                                    <td>
                                                        <input type="text" name="multiper" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='2';"
                                                            onblur="checktotal();" onfocus="this.select();" 
                                                            value="2" style="width: 80px"></td>
                                                    <td>
                                                        <input type="text" name="judgeper" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='2';"
                                                            onblur="checktotal();" onfocus="this.select();" 
                                                            value="2" style="width: 80px"></td>
                                                    <td height="20">
                                                        <input type="text" name="answersper" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='0';" readonly
                                                            onblur="checktotal();" onfocus="this.select();" 
                                                            value="0" style="width: 80px"></td>
                                                </tr>
                                                <tr>
                                                    <td height="20" colspan="5" align="center" class="td1">
                                                        <b>����ʱ���趨</b></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left">
                                                        <b>����ʱ��(<font color="#FF0000">Сʱ</font>)</b></td>
                                                    <td>
                                                        <input type="text" name="testtime" class="inputnormal" onkeyup="if(isNaN(this.value)) this.value='2';"
                                                            onblur="this.className='inputnormal'" onfocus="this.className='inputedit';this.select()"
                                                            value="2" style="width: 80px"></td>
                                                    <td height="25" colspan="3">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td id="tishi" colspan="4" class="td1">
                                                    </td>
                                                    <td height="30" align="right" class="td1">
                                                        <input type="submit" value="���뿼��&gt;&gt;" name="B12" class="s02"></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="13">
                                        <img src="/images/tabledi.gif" width="610" height="13" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
