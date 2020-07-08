//
// Copyright 2020 OpenHW Group
// Copyright 2020 BTA Design Services
//
// Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://solderpad.org/licenses/
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//
/*
 * Copyright
 * Copyright (c) 2005-2020 Imperas Software Ltd., www.imperas.com
 *
 * The contents of this file are provided under the Software License
 * Agreement that you accepted before downloading this file.
 *
 * This source forms part of the Software and can be used for educational,
 * training, and demonstration purposes but cannot be used for derivative
 * works except in cases where the derivative works require OVP technology
 * to run.
 *
 * For open source models released under licenses that you can use for
 * derivative works, please visit www.OVPworld.org or www.imperas.com
 * for the location of the open source models.
 *
 */

// Coverage for : RVI,RVIpseudo

// This file is auto generated by Imperas.
// It is an example of SystemVerilog UVM functional coverage.

// The following pseudo-instructions have been removed:
// BEQZ, BGEZ, BGT,BGTU,BGTZ, BLE,BLEU,BLEZ,BLTZ, BNEZ, ILLEGAL
// J, JR, MV, NOT, NEG, NEGW, RET, SEQZ, SGTZ, SLTZ, SNEZ
// The following instructions have been added:
// FENCE
//The following virtual instruction has been added for exception handling:
// NOT_YET_INCLUDED
typedef enum {
    ADD,ADDI,AND,ANDI,AUIPC,BEQ,BGE,BGEU,
    BLTU,BNE,BLT, FENCE, EBREAK,ECALL,
    J,JAL,JALR,LB,LBU,LH,LHU,
    LUI,LW,NOP,OR,
    ORI, SB, SH,SLL,SLLI,
    SLT,SLTI,SLTIU,SLTU,SRA,SRAI,
    SRL,SRLI,SUB,SW,XOR,XORI,
    NOT_YET_INCLUDED
} instr_name_t; // assembler

// The following CSR ABI names are not currently included:
// fp, pc
//The following virtual CSR ABI name has been added for exception handling:
// gpr_none
typedef enum {
    zero,ra,sp,gp,tp,t0,t1,t2,s0
    ,s1,a0,a1,a2,a3,a4,a5,a6
    ,a7,s2,s3,s4,s5,s6,s7,s8
    ,s9,s10,s11,t3,t4,t5,t6
    ,gpr_none
} gpr_name_t; // ABI name

// The following CSRs are not currently included:
// mstatush, mtinst, mtval2, mhpmcounter3, ..., mhpmcounter31,
// mhpmcounter3h, ..., mhpmcounter31h,
//The following CSRs have been removed:
// satp (supervisor-mode address translation and protection)
typedef enum {
    marchid,mcause,mcounteren,mcountinhibit,mcycle,mcycleh,medeleg,mepc,mhartid
    ,mhpmevent10,mhpmevent11,mhpmevent12,mhpmevent13,mhpmevent14,mhpmevent15,mhpmevent16,mhpmevent17
    ,mhpmevent18,mhpmevent19,mhpmevent20,mhpmevent21,mhpmevent22,mhpmevent23,mhpmevent24,mhpmevent25
    ,mhpmevent26,mhpmevent27,mhpmevent28,mhpmevent29,mhpmevent3,mhpmevent30,mhpmevent31,mhpmevent4
    ,mhpmevent5,mhpmevent6,mhpmevent7,mhpmevent8,mhpmevent9,mideleg,mie,mimpid
    ,minstret,minstreth,mip,misa,mscratch,mstatus,mtval,mtvec
    ,mvendorid,pmpaddr0,pmpaddr1,pmpaddr10,pmpaddr11,pmpaddr12,pmpaddr13,pmpaddr14
    ,pmpaddr15,pmpaddr2,pmpaddr3,pmpaddr4,pmpaddr5,pmpaddr6,pmpaddr7,pmpaddr8
    ,pmpaddr9,pmpcfg0,pmpcfg1,pmpcfg2,pmpcfg3
} csr_name_t;

typedef struct {
    string key;
    string val;
} ops_t;

typedef struct {
    string ins_str;
    instr_name_t asm;
    ops_t ops[4];
} ins_t;

class coverage;

// The following CSR ABI names are not currently included:
// fp, pc
    function gpr_name_t get_gpr_name (string s, r, asm);
        case (s)
            "zero": return zero;
            "ra": return ra;
            "sp": return sp;
            "gp": return gp;
            "tp": return tp;
            "t0": return t0;
            "t1": return t1;
            "t2": return t2;
            "s0": return s0;
            "s1": return s1;
            "a0": return a0;
            "a1": return a1;
            "a2": return a2;
            "a3": return a3;
            "a4": return a4;
            "a5": return a5;
            "a6": return a6;
            "a7": return a7;
            "s2": return s2;
            "s3": return s3;
            "s4": return s4;
            "s5": return s5;
            "s6": return s6;
            "s7": return s7;
            "s8": return s8;
            "s9": return s9;
            "s10": return s10;
            "s11": return s11;
            "t3": return t3;
            "t4": return t4;
            "t5": return t5;
            "t6": return t6;
            default: begin
                $display("ERROR: get_gpr_name(%0s) not found gpr for op(%0s) in (%0s)", s, r, asm);
                $finish(-1);
            end
        endcase
    endfunction

// The following CSRs are not currently included:
// mstatush, mtinst, mtval2, mhpmcounter3, ..., mhpmcounter31,
// mhpmcounter3h, ..., mhpmcounter31h,
//The following CSRs have been removed:
// satp (supervisor-mode address translation and protection)
    function csr_name_t get_csr_name (string s, r, asm);
        case (s)
            "marchid": return marchid;
            "mcause": return mcause;
            "mcounteren": return mcounteren;
            "mcountinhibit": return mcountinhibit;
            "mcycle": return mcycle;
            "mcycleh": return mcycleh;
            "medeleg": return medeleg;
            "mepc": return mepc;
            "mhartid": return mhartid;
            "mhpmevent10": return mhpmevent10;
            "mhpmevent11": return mhpmevent11;
            "mhpmevent12": return mhpmevent12;
            "mhpmevent13": return mhpmevent13;
            "mhpmevent14": return mhpmevent14;
            "mhpmevent15": return mhpmevent15;
            "mhpmevent16": return mhpmevent16;
            "mhpmevent17": return mhpmevent17;
            "mhpmevent18": return mhpmevent18;
            "mhpmevent19": return mhpmevent19;
            "mhpmevent20": return mhpmevent20;
            "mhpmevent21": return mhpmevent21;
            "mhpmevent22": return mhpmevent22;
            "mhpmevent23": return mhpmevent23;
            "mhpmevent24": return mhpmevent24;
            "mhpmevent25": return mhpmevent25;
            "mhpmevent26": return mhpmevent26;
            "mhpmevent27": return mhpmevent27;
            "mhpmevent28": return mhpmevent28;
            "mhpmevent29": return mhpmevent29;
            "mhpmevent3": return mhpmevent3;
            "mhpmevent30": return mhpmevent30;
            "mhpmevent31": return mhpmevent31;
            "mhpmevent4": return mhpmevent4;
            "mhpmevent5": return mhpmevent5;
            "mhpmevent6": return mhpmevent6;
            "mhpmevent7": return mhpmevent7;
            "mhpmevent8": return mhpmevent8;
            "mhpmevent9": return mhpmevent9;
            "mideleg": return mideleg;
            "mie": return mie;
            "mimpid": return mimpid;
            "minstret": return minstret;
            "minstreth": return minstreth;
            "mip": return mip;
            "misa": return misa;
            "mscratch": return mscratch;
            "mstatus": return mstatus;
            "mtval": return mtval;
            "mtvec": return mtvec;
            "mvendorid": return mvendorid;
            "pmpaddr0": return pmpaddr0;
            "pmpaddr1": return pmpaddr1;
            "pmpaddr10": return pmpaddr10;
            "pmpaddr11": return pmpaddr11;
            "pmpaddr12": return pmpaddr12;
            "pmpaddr13": return pmpaddr13;
            "pmpaddr14": return pmpaddr14;
            "pmpaddr15": return pmpaddr15;
            "pmpaddr2": return pmpaddr2;
            "pmpaddr3": return pmpaddr3;
            "pmpaddr4": return pmpaddr4;
            "pmpaddr5": return pmpaddr5;
            "pmpaddr6": return pmpaddr6;
            "pmpaddr7": return pmpaddr7;
            "pmpaddr8": return pmpaddr8;
            "pmpaddr9": return pmpaddr9;
            "pmpcfg0": return pmpcfg0;
            "pmpcfg1": return pmpcfg1;
            "pmpcfg2": return pmpcfg2;
            "pmpcfg3": return pmpcfg3;
            default: begin
                $display("ERROR: get_csr_name(%0s) not found csr for op(%0s) in (%0s)", s, r, asm);
                $finish(-1);
            end
        endcase
    endfunction

    function int get_imm(string s, asm);
      int val;
        if (s[1] == "x") begin
            s = s.substr(2,s.len()-1);
            val = s.atohex ();
        end else if (s[0] == "-") begin
            s = s.substr(1,s.len()-1);
            val = 0 - s.atoi();
        end else begin
            val = s.atoi();
        end
        return val;
    endfunction

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : missing check of overflow/underflow
    covergroup add_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "add");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "add");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "add");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : missing check of overflow/underflow
// TODO : NOP covered by nop_cg cover group
    covergroup addi_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "addi");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "addi");
        cp_imm11   : coverpoint get_imm(ins.ops[2].val,"addi" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup and_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "and");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "and");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "and");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup andi_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "andi");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "andi");
        cp_imm11   : coverpoint get_imm(ins.ops[2].val,"andi" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all immediate values and destination registers.
    covergroup auipc_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "auipc");
        cp_uimm20   : coverpoint get_imm(ins.ops[1].val,"auipc" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing check of arbitrary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup beq_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs1    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "beq");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "beq");
        cp_bra12   : coverpoint get_imm(ins.ops[2].val,"beq" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing check of arbitrary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup bge_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs1    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "bge");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "bge");
        cp_bra12   : coverpoint get_imm(ins.ops[2].val,"bge" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing check of maximum immediate value
    covergroup bgeu_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs1    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "bgeu");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "bgeu");
        cp_bra12   : coverpoint get_imm(ins.ops[2].val,"bgeu" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup blt_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs1    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "blt");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "blt");
        cp_bra12   : coverpoint get_imm(ins.ops[2].val,"blt" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing check of maximum of immediate value
    covergroup bltu_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs1    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "bltu");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "bltu");
        cp_bra12   : coverpoint get_imm(ins.ops[2].val,"bltu" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup bne_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs1    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "bne");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "bne");
        cp_bra12   : coverpoint get_imm(ins.ops[2].val,"bne" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : only counting occurrence, ignoring when not called.
// TODO : verification goal not specified in test plan
    covergroup ebreak_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_asm   : coverpoint ins.asm == EBREAK {
            ignore_bins zero = {0};
        }
    endgroup

// TODO : only counting occurrence, ignoring when not called.
// TODO : verification goal not specified in test plan
    covergroup ecall_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_asm   : coverpoint ins.asm == ECALL {
            ignore_bins zero = {0};
        }
    endgroup

// TODO : only counting occurence, ignoring when not called.
// TODO : verification goal not specified in test plan
    covergroup fence_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_asm   : coverpoint ins.asm == FENCE {
            ignore_bins zero = {0};
        }
    endgroup

// TODO : case when rd = x0 counted but not singled out
    covergroup jal_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "jal");
        cp_jmp19   : coverpoint get_imm(ins.ops[1].val,"jal" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : unclear from the code why "key" values for cp_r0 and cp_r1 can be "R" or "C"
// TODO : need to clarify if this is due to the diassembler and unrelated to RTL
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup jalr_cg with function sample(ins_t ins, gpr_name_t r0, gpr_name_t r1);
        //option.per_instance = 1;
        cp_r0    : coverpoint r0 iff (ins.ops[0].key[0] == "R");
        cp_r1    : coverpoint r1 iff (ins.ops[1].key[0] == "R");
        cp_imm0   : coverpoint get_imm(ins.ops[0].val,"jalr" ) iff (ins.ops[0].key[0] == "C") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_imm1   : coverpoint get_imm(ins.ops[1].val,"jalr" ) iff (ins.ops[1].key[0] == "C") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// FIXME : cp_r shall be renamed to cp_rs1
// FIXME : cover point for rs1 should be on ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup lb_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "lb");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "lb") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "lb");
    endgroup

// FIXME : cp_r shall be renamed to cp_rs1
// FIXME : cover point for rs1 should be on ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup lbu_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "lbu");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "lbu") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "lbu");
    endgroup

// FIXME : missing cover point for rs1 for ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup lh_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "lh");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "lh") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "lh");
    endgroup

// FIXME : missing cover point for rs1 for ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup lhu_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "lhu");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "lhu") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "lhu");
    endgroup

// TODO : missing coverage of all immediate values and destination registers.
    covergroup lui_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "lui");
        cp_uimm20   : coverpoint get_imm(ins.ops[1].val,"lui" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// FIXME : missing cover point for rs1 for ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup lw_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "lw");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "lw") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "lw");
    endgroup

// TODO : cover group for NOP (addi x0, x0, imm), may need to be merged into addi_cg
    covergroup nop_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_asm   : coverpoint ins.asm == NOP {
            ignore_bins zero = {0};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup or_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "or");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "or");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "or");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup ori_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "ori");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "ori");
        cp_imm11   : coverpoint get_imm(ins.ops[2].val,"ori" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// FIXME : cover point for rs1 should be on ins.ops[0]
// FIXME : cover point for rs2 should be on ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of maximum values of rs1 and imm
// TODO "" missing check of overflow conditions"
    covergroup sb_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs2    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sb");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "sb") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sb");
    endgroup

// FIXME : cover point for rs1 should be on ins.ops[0]
// FIXME : cover point for rs2 should be on ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of maximum values of rs1 and imm
// TODO " missing check of overflow conditions
    covergroup sh_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs2    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sh");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "sh") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sh");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup sll_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sll");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "sll");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sll");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup slli_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "slli");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "slli");
        cp_shamt5   : coverpoint get_imm(ins.ops[2].val,"slli" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup slt_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "slt");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "slt");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "slt");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup slti_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "slti");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "slti");
        cp_imm11   : coverpoint get_imm(ins.ops[2].val,"slti" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : missing check of arbirary positive and negative immediate values
    covergroup sltiu_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sltiu");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "sltiu");
        cp_imm11   : coverpoint get_imm(ins.ops[2].val,"sltiu" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup sltu_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sltu");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "sltu");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sltu");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : missing check of arbirary positive and negative immediate values
// TODO : missing check of maximum positive and negative immediate values
    covergroup sra_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sra");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "sra");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sra");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : missing check of arbirary positive and negative immediate values
    covergroup srai_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "srai");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "srai");
        cp_shamt5   : coverpoint get_imm(ins.ops[2].val,"srai" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup srl_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "srl");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "srl");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "srl");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
    covergroup srli_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "srli");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "srli");
        cp_shamt5   : coverpoint get_imm(ins.ops[2].val,"srli" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : missing check of underflow
    covergroup sub_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sub");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "sub");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sub");
    endgroup

// FIXME : cover point for rs1 should be on ins.ops[0]
// FIXME : cover point for rs2 should be on ins.ops[1]
// FIXME : cover point for imm should be on ins.ops[2]
// TODO : missing check of maximum values of rs1 and imm
// TODO " missing check of overflow conditions
    covergroup sw_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rs2    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "sw");
        cp_imm    : coverpoint get_imm(ins.ops[1].val, "sw") {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
        cp_r     : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "sw");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : mising specific cases where one of the sources is -1 (bitwise NOT)
    covergroup xor_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "xor");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "xor");
        cp_rs2    : coverpoint get_gpr_name(ins.ops[2].val, ins.ops[2].key, "xor");
    endgroup

// TODO : missing coverage of all combinations of source and destination operands.
// TODO : mising specific cases where one of the sources is -1 (bitwise NOT)
    covergroup xori_cg with function sample(ins_t ins);
        //option.per_instance = 1;
        cp_rd    : coverpoint get_gpr_name(ins.ops[0].val, ins.ops[0].key, "xori");
        cp_rs1    : coverpoint get_gpr_name(ins.ops[1].val, ins.ops[1].key, "xori");
        cp_imm11   : coverpoint get_imm(ins.ops[2].val,"xori" ) {
            bins neg  = {[$:-1]};
            bins zero = {0};
            bins pos  = {[1:$]};
        }
    endgroup

// this additional virtuaql group is kept for now waiting for review and debug of rest
//    covergroup not_yet_included_cg with function sample(ins_t ins);
//        //option.per_instance = 1;
//        cp_asm   : coverpoint ins.asm == NOT_YET_INCLUDED {
//            ignore_bins zero = {0};
//        }
//    endgroup

// The following cover groups have been removed:
// BEQZ, BGEZ, BGT,BGTU,BGTZ, BLE,BLEU,BLEZ,BLTZ, BNEZ, ILLEGAL
// J, JR, MV, NEG, NOT, NEGW, RET, SB, SEQZ, SGTZ, SLTZ, SNEZ
    function new();
        add_cg = new();
        addi_cg = new();
        and_cg = new();
        andi_cg = new();
        auipc_cg = new();
        beq_cg = new();
        bge_cg = new();
        bgeu_cg = new();
        blt_cg = new();
        bltu_cg = new();
        bne_cg = new();
        ebreak_cg = new();
        ecall_cg = new();
        fence_cg = new();
        jal_cg = new();
        jalr_cg = new();
        lb_cg = new();
        lbu_cg = new();
        lh_cg = new();
        lhu_cg = new();
        lui_cg = new();
        lw_cg = new();
        nop_cg = new();
        or_cg = new();
        ori_cg = new();
        sb_cg = new();
        sh_cg = new();
        sll_cg = new();
        slli_cg = new();
        slt_cg = new();
        slti_cg = new();
        sltiu_cg = new();
        sltu_cg = new();
        sra_cg = new();
        srai_cg = new();
        srl_cg = new();
        srli_cg = new();
        sub_cg = new();
        sw_cg = new();
        xor_cg = new();
        xori_cg = new();
        //not_yet_included_cg = new();
    endfunction

// The following pseudo-instructions have been removed:
// BEQZ, BGEZ, BGT,BGTU,BGTZ, BLE,BLEU,BLEZ,BLTZ, BNEZ, ILLEGAL
// J, JR, MV, NEG, NEGW, RET, SEQZ, SGTZ, SLTZ, SNEZ
    function void sample(input ins_t ins);
        case (ins.ins_str)
            "add"    : begin ins.asm=ADD; add_cg.sample(ins); end
            "addi"    : begin ins.asm=ADDI; addi_cg.sample(ins); end
            "and"    : begin ins.asm=AND; and_cg.sample(ins); end
            "andi"    : begin ins.asm=ANDI; andi_cg.sample(ins); end
            "auipc"    : begin ins.asm=AUIPC; auipc_cg.sample(ins); end
            "beq"    : begin ins.asm=BEQ; beq_cg.sample(ins); end
            "bge"    : begin ins.asm=BGE; bge_cg.sample(ins); end
            "bgeu"    : begin ins.asm=BGEU; bgeu_cg.sample(ins); end
            "blt"    : begin ins.asm=BLT; blt_cg.sample(ins); end
            "bltu"    : begin ins.asm=BLTU; bltu_cg.sample(ins); end
            "bne"    : begin ins.asm=BNE; bne_cg.sample(ins); end
            "ebreak"    : begin ins.asm=EBREAK; ebreak_cg.sample(ins); end
            "ecall"    : begin ins.asm=ECALL; ecall_cg.sample(ins); end
            "fence"    : begin ins.asm=FENCE; fence_cg.sample(ins); end
            "jal"    : begin ins.asm=JAL; jal_cg.sample(ins); end
            "jalr"    : begin
                gpr_name_t r0, r1;
                ins.asm=JALR;
                if (ins.ops[0].key[0] == "R")
                    r0 = get_gpr_name(ins.ops[0].val, ins.ops[0].key, "jalr");
                else
                    r0 = gpr_none;
                if (ins.ops[1].key[1] == "R")
                    r1 = get_gpr_name(ins.ops[1].val, ins.ops[1].key, "jalr");
                else
                    r1 = gpr_none;
                jalr_cg.sample(ins, r0, r1);
            end
            "lb"    : begin ins.asm=LB; lb_cg.sample(ins); end
            "lbu"    : begin ins.asm=LBU; lbu_cg.sample(ins); end
            "lh"    : begin ins.asm=LH; lh_cg.sample(ins); end
            "lhu"    : begin ins.asm=LHU; lhu_cg.sample(ins); end
            "lui"    : begin ins.asm=LUI; lui_cg.sample(ins); end
            "lw"    : begin ins.asm=LW; lw_cg.sample(ins); end
            "nop"    : begin ins.asm=NOP; nop_cg.sample(ins); end
            "or"    : begin ins.asm=OR; or_cg.sample(ins); end
            "ori"    : begin ins.asm=ORI; ori_cg.sample(ins); end
            "sb"    : begin ins.asm=SH; sb_cg.sample(ins); end
            "sh"    : begin ins.asm=SH; sh_cg.sample(ins); end
            "sll"    : begin ins.asm=SLL; sll_cg.sample(ins); end
            "slli"    : begin ins.asm=SLLI; slli_cg.sample(ins); end
            "slt"    : begin ins.asm=SLT; slt_cg.sample(ins); end
            "slti"    : begin ins.asm=SLTI; slti_cg.sample(ins); end
            "sltiu"    : begin ins.asm=SLTIU; sltiu_cg.sample(ins); end
            "sltu"    : begin ins.asm=SLTU; sltu_cg.sample(ins); end
            "sra"    : begin ins.asm=SRA; sra_cg.sample(ins); end
            "srai"    : begin ins.asm=SRAI; srai_cg.sample(ins); end
            "srl"    : begin ins.asm=SRL; srl_cg.sample(ins); end
            "srli"    : begin ins.asm=SRLI; srli_cg.sample(ins); end
            "sub"    : begin ins.asm=SUB; sub_cg.sample(ins); end
            "sw"    : begin ins.asm=SW; sw_cg.sample(ins); end
            "xor"    : begin ins.asm=XOR; xor_cg.sample(ins); end
            "xori"    : begin ins.asm=XORI; xori_cg.sample(ins); end
            default: begin ins.asm=NOT_YET_INCLUDED; /*not_yet_included_cg.sample(ins);*/ /*$display("Coverage warning: ins [%0s] not yet included in being covered", ins.ins_str);*/ end
        endcase
    endfunction

endclass