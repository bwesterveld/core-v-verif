(VRV32C Control Transfer Instructions
p0
ccopy_reg
_reconstructor
p1
(cvp_pack
Ip
p2
c__builtin__
object
p3
Ntp4
Rp5
(dp6
Vprop_count
p7
I6
sVname
p8
g0
sVprop_list
p9
(dp10
sVip_num
p11
I11
sVwid_order
p12
I11
sVrfu_dict
p13
(dp14
sVrfu_list
p15
(lp16
(V000_C.J
p17
g1
(cvp_pack
Prop
p18
g3
Ntp19
Rp20
(dp21
Vitem_count
p22
I1
sg8
g17
sVtag
p23
VVP_IP010_P000
p24
sVitem_list
p25
(dp26
sg12
I0
sg15
(lp27
(V000
p28
g1
(cvp_pack
Item
p29
g3
Ntp30
Rp31
(dp32
g8
V000
p33
sg23
VVP_ISA_F010_S000_I000
p34
sVdescription
p35
Vc.j imm[11:1]\u000apc += sext(imm)\u000apc is calculated using signed arithmetic\u000aExpands to jal x0, imm[11:1].
p36
sVpurpose
p37
VUnprivileged ISA\u000aChapter 16.4
p38
sVverif_goals
p39
VInput operands:\u000a\u000auimm value is non-zero and zero\u000aAll bits of uimm are toggled
p40
sVcoverage_loc
p41
V
p42
sVpfc
p43
I3
sVtest_type
p44
I3
sVcov_method
p45
I1
sVcores
p46
I56
sVcomments
p47
g42
sVstatus
p48
g42
sVsimu_target_list
p49
(lp50
sg15
(lp51
sVrfu_list_2
p52
(lp53
sg13
(dp54
Vlock_status
p55
I0
ssbtp56
asVrfu_list_1
p57
(lp58
sg52
(lp59
sg13
(dp60
sbtp61
a(V001_C.JAL
p62
g1
(g18
g3
Ntp63
Rp64
(dp65
g22
I2
sg8
g62
sg23
VVP_IP010_P001
p66
sg25
(dp67
sg12
I1
sg15
(lp68
(V000
p69
g1
(g29
g3
Ntp70
Rp71
(dp72
g8
V000
p73
sg23
VVP_ISA_F010_S001_I000
p74
sg35
Vc.jal imm[11:1]\u000ax[1] = pc+2; pc += sext(imm)\u000apc is calculated using signed arithmetic.
p75
sg37
VUnprivileged ISA\u000aChapter 16.4
p76
sg39
VInput operands:\u000a\u000auimm value is non-zero and zero\u000aAll bits of uimm are toggled
p77
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp78
sg15
(lp79
sg52
(lp80
sg13
(dp81
g55
I0
ssbtp82
a(V001
p83
g1
(g29
g3
Ntp84
Rp85
(dp86
g8
V001
p87
sg23
VVP_ISA_F010_S001_I001
p88
sg35
Vc.jal imm[11:1]\u000ax[1] = pc+2; pc += sext(imm)\u000apc is calculated using signed arithmetic.
p89
sg37
VUnprivileged ISA\u000aChapter 16.4
p90
sg39
VOutput result:\u000a\u000aAll bits of x1 are toggled
p91
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp92
sg15
(lp93
sg52
(lp94
sg13
(dp95
g55
I0
ssbtp96
asg57
(lp97
sg52
(lp98
sg13
(dp99
sbtp100
a(V002_C.JR
p101
g1
(g18
g3
Ntp102
Rp103
(dp104
g22
I2
sg8
g101
sg23
VVP_IP010_P002
p105
sg25
(dp106
sg12
I2
sg15
(lp107
(V000
p108
g1
(g29
g3
Ntp109
Rp110
(dp111
g8
V000
p112
sg23
VVP_ISA_F010_S002_I000
p113
sg35
Vc.jr rs1\u000apc = x[rs1]\u000aExpands to jalr x0, 0(rs1). \u000aInvalid when rs1=x0.
p114
sg37
VUnprivileged ISA\u000aChapter 16.4
p115
sg39
VRegister operands:\u000a\u000aAll possible rs1 registers are used.
p116
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp117
sg15
(lp118
sg52
(lp119
sg13
(dp120
g55
I0
ssbtp121
a(V001
p122
g1
(g29
g3
Ntp123
Rp124
(dp125
g8
V001
p126
sg23
VVP_ISA_F010_S002_I001
p127
sg35
Vc.jr rs1\u000apc = x[rs1]\u000aExpands to jalr x0, 0(rs1). \u000aInvalid when rs1=x0.
p128
sg37
VUnprivileged ISA\u000aChapter 16.4
p129
sg39
VInput operands:\u000a\u000aAll bits of rs1 are toggled
p130
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp131
sg15
(lp132
sg52
(lp133
sg13
(dp134
g55
I0
ssbtp135
asg57
(lp136
sg52
(lp137
sg13
(dp138
sbtp139
a(V003_C.JALR
p140
g1
(g18
g3
Ntp141
Rp142
(dp143
g22
I3
sg8
g140
sg23
VVP_IP010_P003
p144
sg25
(dp145
sg12
I3
sg15
(lp146
(V000
p147
g1
(g29
g3
Ntp148
Rp149
(dp150
g8
V000
p151
sg23
VVP_ISA_F010_S003_I000
p152
sg35
Vc.jalr rs1\u000at = pc + 2; pc = x[rs1]; x[1] = t\u000aExpands to jalr x1, 0(rs1). \u000aInvalid when rs1=x0.
p153
sg37
VUnprivileged ISA\u000aChapter 16.4
p154
sg39
VRegister operands:\u000a\u000aAll possible rs1 registers are used.
p155
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp156
sg15
(lp157
sg52
(lp158
sg13
(dp159
g55
I0
ssbtp160
a(V001
p161
g1
(g29
g3
Ntp162
Rp163
(dp164
g8
V001
p165
sg23
VVP_ISA_F010_S003_I001
p166
sg35
Vc.jalr rs1\u000at = pc + 2; pc = x[rs1]; x[1] = t\u000aExpands to jalr x1, 0(rs1). \u000aInvalid when rs1=x0.
p167
sg37
VUnprivileged ISA\u000aChapter 16.4
p168
sg39
VInput operands:\u000a\u000aAll bits of rs1 are toggled
p169
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp170
sg15
(lp171
sg52
(lp172
sg13
(dp173
g55
I0
ssbtp174
a(V002
p175
g1
(g29
g3
Ntp176
Rp177
(dp178
g8
V002
p179
sg23
VVP_ISA_F010_S003_I002
p180
sg35
Vc.jalr rs1\u000at = pc + 2; pc = x[rs1]; x[1] = t\u000aExpands to jalr x1, 0(rs1). \u000aInvalid when rs1=x0.
p181
sg37
VUnprivileged ISA\u000aChapter 16.4
p182
sg39
VOutput result:\u000a\u000aAll bits of x1 are toggled
p183
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp184
sg15
(lp185
sg52
(lp186
sg13
(dp187
g55
I0
ssbtp188
asg57
(lp189
sg52
(lp190
sg13
(dp191
sbtp192
a(V004_C.BEQZ
p193
g1
(g18
g3
Ntp194
Rp195
(dp196
g22
I3
sg8
g193
sg23
VVP_IP010_P004
p197
sg25
(dp198
sg12
I4
sg15
(lp199
(V000
p200
g1
(g29
g3
Ntp201
Rp202
(dp203
g8
V000
p204
sg23
VVP_ISA_F010_S004_I000
p205
sg35
Vc.beqz rs1', imm[8:1]\u000aif (x[8+rs1'] == 0) pc += sext(imm)\u000aExpands to beq rs1', x0, imm[8:1]. pc is calculated using signed arithmetic.
p206
sg37
VUnprivileged ISA\u000aChapter 16.4
p207
sg39
VRegister operands:\u000a\u000aAll possible rs1` registers are used.
p208
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp209
sg15
(lp210
sg52
(lp211
sg13
(dp212
g55
I0
ssbtp213
a(V001
p214
g1
(g29
g3
Ntp215
Rp216
(dp217
g8
V001
p218
sg23
VVP_ISA_F010_S004_I001
p219
sg35
Vc.beqz rs1', imm[8:1]\u000aif (x[8+rs1'] == 0) pc += sext(imm)\u000aExpands to beq rs1', x0, imm[8:1]. pc is calculated using signed arithmetic.
p220
sg37
VUnprivileged ISA\u000aChapter 16.4
p221
sg39
VInput operands:\u000a\u000aAll bits of rs1` are toggled
p222
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp223
sg15
(lp224
sg52
(lp225
sg13
(dp226
g55
I0
ssbtp227
a(V002
p228
g1
(g29
g3
Ntp229
Rp230
(dp231
g8
V002
p232
sg23
VVP_ISA_F010_S004_I002
p233
sg35
Vc.beqz rs1', imm[8:1]\u000aif (x[8+rs1'] == 0) pc += sext(imm)\u000aExpands to beq rs1', x0, imm[8:1]. pc is calculated using signed arithmetic.
p234
sg37
VUnprivileged ISA\u000aChapter 16.4
p235
sg39
VOutput result:\u000a\u000aBranch taken or not-taken
p236
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp237
sg15
(lp238
sg52
(lp239
sg13
(dp240
g55
I0
ssbtp241
asg57
(lp242
sg52
(lp243
sg13
(dp244
sbtp245
a(V005_C.BNEZ
p246
g1
(g18
g3
Ntp247
Rp248
(dp249
g22
I3
sg8
g246
sg23
VVP_IP010_P005
p250
sg25
(dp251
sg12
I5
sg15
(lp252
(V000
p253
g1
(g29
g3
Ntp254
Rp255
(dp256
g8
V000
p257
sg23
VVP_ISA_F010_S005_I000
p258
sg35
Vc.bnez  rs1', imm[8:1]\u000aif (x[8+rs1'] \u2260 0) pc += sext(imm)\u000aExpands to bne rs1', x0, imm[8:1]. pc is calculated using signed arithmetic.
p259
sg37
VUnprivileged ISA\u000aChapter 16.4
p260
sg39
VRegister operands:\u000a\u000aAll possible rs1` registers are used.
p261
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp262
sg15
(lp263
sg52
(lp264
sg13
(dp265
g55
I0
ssbtp266
a(V001
p267
g1
(g29
g3
Ntp268
Rp269
(dp270
g8
V001
p271
sg23
VVP_ISA_F010_S005_I001
p272
sg35
Vc.bnez  rs1', imm[8:1]\u000aif (x[8+rs1'] \u2260 0) pc += sext(imm)\u000aExpands to bne rs1', x0, imm[8:1]. pc is calculated using signed arithmetic.
p273
sg37
VUnprivileged ISA\u000aChapter 16.4
p274
sg39
VInput operands:\u000a\u000aAll bits of rs1 are toggled
p275
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp276
sg15
(lp277
sg52
(lp278
sg13
(dp279
g55
I0
ssbtp280
a(V002
p281
g1
(g29
g3
Ntp282
Rp283
(dp284
g8
V002
p285
sg23
VVP_ISA_F010_S005_I002
p286
sg35
Vc.bnez  rs1', imm[8:1]\u000aif (x[8+rs1'] \u2260 0) pc += sext(imm)\u000aExpands to bne rs1', x0, imm[8:1]. pc is calculated using signed arithmetic.
p287
sg37
VUnprivileged ISA\u000aChapter 16.4
p288
sg39
VOutput result:\u000a\u000aBranch taken or not-taken
p289
sg41
g42
sg43
I3
sg44
I3
sg45
I1
sg46
I56
sg47
g42
sg48
g42
sg49
(lp290
sg15
(lp291
sg52
(lp292
sg13
(dp293
g55
I0
ssbtp294
asg57
(lp295
sg52
(lp296
sg13
(dp297
sbtp298
asVrfu_list_0
p299
(lp300
sg57
(lp301
sVvptool_gitrev
p302
V$Id: af214b54d38e440023a14011aefff4dabfd5f5ad $
p303
sVio_fmt_gitrev
p304
V$Id: 052d0c6f3d12d7984d208b14555a56b2f0c2485d $
p305
sVconfig_gitrev
p306
V$Id: 0422e19126dae20ffc4d5a84e4ce3de0b6eb4eb5 $
p307
sVymlcfg_gitrev
p308
V$Id: 286c689bd48b7a58f9a37754267895cffef1270c $
p309
sbtp310
.