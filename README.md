# UW-Madison NRA留学生报税简明步骤 及资源汇总

```ruby
2023.03.08 联邦税refund已到账
2023.03.01 州税refund已到账。我误报了standard deduction（不适用于NRA），申报金额高于实际应得退款，但财政部自动帮我更正了
2023.02.15 本人efile后两天，IRS 和威斯康星州财政部均显示已收到税表（received),正在等待approve和退款
2023.02.01 增加了efile选项。
```

## 报税科普（推荐阅读）

1. [留学生报税 2021年全解析](https://taxpanda.com/留学生报税/#如果留学生来美国没报过税，没收入，之前忘了交Form_8843会怎么样)
2. [史上最全W-2报税工资单解析](https://taxpanda.com/w2是什么/)
3. [奖学金免税【最全攻略】](https://taxpanda.com/奖学金免税/)
4. [报税指南by UW CSSA](https://pages.cs.wisc.edu/~sh/报税指南.pdf)
5. [2021年Nonresident Alien报税小结](https://yo1995.github.io/life/2021-tax-season/)

## 开始之前

本指南的联邦税部分仅适用基于UW Glacier系统的纸质版报税（邮寄税表给IRS）。然而众所周知，基于在线软件的电子版报税（efile）有众多优势：填写方便且退税快，据说几周内就能收到退税（纸质版往往需要长达几个月，还有寄丢/IRS接收税表失败的风险），收入低于$73000甚至可以[免费使用](https://apps.irs.gov/app/freeFile/)，联邦税和州税一起file还可以节省时间；efile的问题是主流软件如Turbotax，taxact只适用于resident alien (RA), 不支持non-resident alien (NRA)；而支持NRA efile的软件较少（已知仅有OLT和Sprintax)。有兴趣尝试efile的NRA同学，请移步以下攻略：
1. [NRA留学生免费efile: OLT vs Sprintax](https://www.luweicky.com/2021/03/oltefile-1040nr8843.html#核对税表并e-file)
2. [Non Resident留学生efile报税指南（Sprintax篇)](https://www.dealmoon.com/guide/935542)

无论采用纸质报税还是efile，需提前准备好2021税年相关表格，主要包括：
1. Form W-2 (Where to get? MyUW - Payroll Information - Tax Statements - W-2 forms）
2. Form 1098-T (Where to get? MyUW - Student Center - Financial Account - View 1098T)
3. Form 1042-S (Where to get? 如有fellowship/scholarship,会收到邮件通知，从Glacier上下载)
4. 各种1099表格(如有），例如：1099-MISC, 1099-INT, ...

---
## Step1: 在GTP系统中填报Form 1040-NR（联邦税）
Tip & Ref:
1. 通过[Glacier](https://www.online-tax.net)进入GTP系统后，跟随系统指示填表即可
2. [UW-Madison CS 硕士生的个人报税经历](https://github.com/mzj14/prepare-tax-return)
3. [1040NR怎么填 ？](https://taxpanda.com/1040nr怎么填/https://taxpanda.com/1040nr怎么填/)

---
## Step2: 填写Form 8833, 用于claim tax treaty 
Tip：
1. 如果当前税年已在Glacier里claim过treaty用于免除预扣税，或已经向学校提交过Form 8233，则免去此项。    
2. Form 8233和8833的区别：8233用于免除预扣税，交给<u>雇主/学校</u>；8833用于报税时申请免税条例，交给<u>IRS</u>。

Ref：
1. [留学生报税如何利用 Tax Treaty 轻松省下1000刀？（内含Form 8833填写攻略）](https://taxpanda.com/tax-treaty/)
2. [什么是 8233 和 8833 表格？](https://gonglue.us/form-8233-8833)

---
## Step3: 将GTP系统生成的Form 1040-NR和8843打印签字，连同Form 8833一同寄给IRS
IRS地址:\
Department of the Treasur\
Internal Revenue Service\
Austin, TX 73301-0215\
USA 

---
## Step4: 使用[Wisconsin efile](https://www.revenue.wi.gov/Pages/WI-efile/home.aspx)系统填报Form 1-NPR（州税)
Tip：
每个box右上角有个小问号，鼠标悬停会有提示从哪里获取数据。大部分数据来自GTP生成的1040表格。

Ref：
1. [UW-Madison CS 硕士生的个人报税经历](https://github.com/mzj14/prepare-tax-return)
2. [官方instruction](https://www.revenue.wi.gov/TaxForms2021/2021-Form1NPR-Inst.pdf)
3. [官方报税信息for NRA](https://www.revenue.wi.gov/DOR%20Publications/pb122.pdf)

---
所需时长：6-8 小时    
本人报税身份：NRA, 50% Research Assistant, 无fellowship/scholarship

---
## 如何寻求免费帮助？
IRS官方热线基本无法接通人工服务，但可以致电IRS下属的[本地纳税人求助中心（Taxpayer Assistance Center TAC）](https://apps.irs.gov/app/office-locator/)，如Madison TAC的预约热线： (844)545-5640。号码主要用于预约现场咨询，相对简单的问题其实可以通过电话得到直接解答。

## 如何查询退税进度？
IRS官网的[Get Refund Status](https://sa.www4.irs.gov/irfof/lang/en/irfofgetstatus.jsp)向公众提供了退税进度查询，但许多同学反映无法从中获取退税进度的有效信息。由于TAC具有高于public access的系统权限，可以前往本地TAC（需电话预约）查询退税进度。

---
## 另附：[2022年度净收入计算器 in R](https://github.com/Sfeng666/2022_tax_filing/blob/main/estimate_gross_income.R)
input：modify values of line 3 - 8    
output: 
* line 26: income.gross.withhold (退税前净收入） = 总收入 - 预扣州税 - 预扣联邦税 - segregated fee - 保险
* line 29: income.gross.withhold (退税后净收入） = 总收入 - 实际州税 - 实际联邦税 - segregated fee - 保险 

---
免责声明：免责声明：本文仅是一般性的描述，不构成任何税务或法律建议。
