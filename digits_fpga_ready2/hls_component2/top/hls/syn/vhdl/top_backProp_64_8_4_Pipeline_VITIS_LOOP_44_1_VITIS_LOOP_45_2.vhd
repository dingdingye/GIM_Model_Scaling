-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_backProp_64_8_4_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    w_l_plus1_0_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_0_ce0 : OUT STD_LOGIC;
    w_l_plus1_0_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_1_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_1_ce0 : OUT STD_LOGIC;
    w_l_plus1_1_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_2_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_2_ce0 : OUT STD_LOGIC;
    w_l_plus1_2_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_3_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_3_ce0 : OUT STD_LOGIC;
    w_l_plus1_3_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_4_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_4_ce0 : OUT STD_LOGIC;
    w_l_plus1_4_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_5_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_5_ce0 : OUT STD_LOGIC;
    w_l_plus1_5_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_6_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_6_ce0 : OUT STD_LOGIC;
    w_l_plus1_6_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_7_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w_l_plus1_7_ce0 : OUT STD_LOGIC;
    w_l_plus1_7_q0 : IN STD_LOGIC_VECTOR (24 downto 0);
    w_l_plus1_T_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    w_l_plus1_T_ce0 : OUT STD_LOGIC;
    w_l_plus1_T_we0 : OUT STD_LOGIC;
    w_l_plus1_T_d0 : OUT STD_LOGIC_VECTOR (24 downto 0) );
end;


architecture behav of top_backProp_64_8_4_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln44_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal trunc_ln44_fu_259_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln44_reg_389 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln44_2_fu_263_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln44_2_reg_395 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln44_fu_271_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln46_fu_320_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_74 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal j_2_fu_283_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fu_78 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten_fu_82 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal add_ln44_fu_227_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (5 downto 0);
    signal w_l_plus1_0_ce0_local : STD_LOGIC;
    signal w_l_plus1_1_ce0_local : STD_LOGIC;
    signal w_l_plus1_2_ce0_local : STD_LOGIC;
    signal w_l_plus1_3_ce0_local : STD_LOGIC;
    signal w_l_plus1_4_ce0_local : STD_LOGIC;
    signal w_l_plus1_5_ce0_local : STD_LOGIC;
    signal w_l_plus1_6_ce0_local : STD_LOGIC;
    signal w_l_plus1_7_ce0_local : STD_LOGIC;
    signal w_l_plus1_T_we0_local : STD_LOGIC;
    signal tmp_fu_325_p19 : STD_LOGIC_VECTOR (24 downto 0);
    signal w_l_plus1_T_ce0_local : STD_LOGIC;
    signal icmp_ln45_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln44_fu_251_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_33_fu_239_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2_fu_307_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln44_2_cast_fu_304_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln46_fu_314_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_325_p17 : STD_LOGIC_VECTOR (24 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal tmp_fu_325_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p5 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p7 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p11 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p13 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_325_p15 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component top_sparsemux_17_3_25_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        CASE0 : STD_LOGIC_VECTOR (2 downto 0);
        din0_WIDTH : INTEGER;
        CASE1 : STD_LOGIC_VECTOR (2 downto 0);
        din1_WIDTH : INTEGER;
        CASE2 : STD_LOGIC_VECTOR (2 downto 0);
        din2_WIDTH : INTEGER;
        CASE3 : STD_LOGIC_VECTOR (2 downto 0);
        din3_WIDTH : INTEGER;
        CASE4 : STD_LOGIC_VECTOR (2 downto 0);
        din4_WIDTH : INTEGER;
        CASE5 : STD_LOGIC_VECTOR (2 downto 0);
        din5_WIDTH : INTEGER;
        CASE6 : STD_LOGIC_VECTOR (2 downto 0);
        din6_WIDTH : INTEGER;
        CASE7 : STD_LOGIC_VECTOR (2 downto 0);
        din7_WIDTH : INTEGER;
        def_WIDTH : INTEGER;
        sel_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (24 downto 0);
        din1 : IN STD_LOGIC_VECTOR (24 downto 0);
        din2 : IN STD_LOGIC_VECTOR (24 downto 0);
        din3 : IN STD_LOGIC_VECTOR (24 downto 0);
        din4 : IN STD_LOGIC_VECTOR (24 downto 0);
        din5 : IN STD_LOGIC_VECTOR (24 downto 0);
        din6 : IN STD_LOGIC_VECTOR (24 downto 0);
        din7 : IN STD_LOGIC_VECTOR (24 downto 0);
        def : IN STD_LOGIC_VECTOR (24 downto 0);
        sel : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (24 downto 0) );
    end component;


    component top_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    sparsemux_17_3_25_1_1_U547 : component top_sparsemux_17_3_25_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "000",
        din0_WIDTH => 25,
        CASE1 => "001",
        din1_WIDTH => 25,
        CASE2 => "010",
        din2_WIDTH => 25,
        CASE3 => "011",
        din3_WIDTH => 25,
        CASE4 => "100",
        din4_WIDTH => 25,
        CASE5 => "101",
        din5_WIDTH => 25,
        CASE6 => "110",
        din6_WIDTH => 25,
        CASE7 => "111",
        din7_WIDTH => 25,
        def_WIDTH => 25,
        sel_WIDTH => 3,
        dout_WIDTH => 25)
    port map (
        din0 => w_l_plus1_0_q0,
        din1 => w_l_plus1_1_q0,
        din2 => w_l_plus1_2_q0,
        din3 => w_l_plus1_3_q0,
        din4 => w_l_plus1_4_q0,
        din5 => w_l_plus1_5_q0,
        din6 => w_l_plus1_6_q0,
        din7 => w_l_plus1_7_q0,
        def => tmp_fu_325_p17,
        sel => trunc_ln44_reg_389,
        dout => tmp_fu_325_p19);

    flow_control_loop_pipe_sequential_init_U : component top_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln44_fu_221_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_78 <= select_ln44_2_fu_263_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_78 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln44_fu_221_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_82 <= add_ln44_fu_227_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_82 <= ap_const_lv6_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln44_fu_221_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_74 <= j_2_fu_283_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_74 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln44_2_reg_395 <= select_ln44_2_fu_263_p3;
                trunc_ln44_reg_389 <= trunc_ln44_fu_259_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln44_fu_227_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv6_1));
    add_ln46_fu_314_p2 <= std_logic_vector(unsigned(tmp_2_fu_307_p3) + unsigned(select_ln44_2_cast_fu_304_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln44_fu_221_p2)
    begin
        if (((icmp_ln44_fu_221_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_78)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_78;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_82)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv6_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_82;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_74, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_74;
        end if; 
    end process;

    i_33_fu_239_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv3_1));
    icmp_ln44_fu_221_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv6_20) else "0";
    icmp_ln45_fu_245_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv4_8) else "0";
    j_2_fu_283_p2 <= std_logic_vector(unsigned(select_ln44_fu_251_p3) + unsigned(ap_const_lv4_1));
    select_ln44_2_cast_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln44_2_reg_395),5));
    select_ln44_2_fu_263_p3 <= 
        i_33_fu_239_p2 when (icmp_ln45_fu_245_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln44_fu_251_p3 <= 
        ap_const_lv4_0 when (icmp_ln45_fu_245_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    tmp_2_fu_307_p3 <= (trunc_ln44_reg_389 & ap_const_lv2_0);
    tmp_fu_325_p17 <= "XXXXXXXXXXXXXXXXXXXXXXXXX";
    trunc_ln44_fu_259_p1 <= select_ln44_fu_251_p3(3 - 1 downto 0);
    w_l_plus1_0_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_0_ce0 <= w_l_plus1_0_ce0_local;

    w_l_plus1_0_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_0_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_0_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_1_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_1_ce0 <= w_l_plus1_1_ce0_local;

    w_l_plus1_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_1_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_2_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_2_ce0 <= w_l_plus1_2_ce0_local;

    w_l_plus1_2_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_2_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_2_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_3_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_3_ce0 <= w_l_plus1_3_ce0_local;

    w_l_plus1_3_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_3_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_3_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_4_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_4_ce0 <= w_l_plus1_4_ce0_local;

    w_l_plus1_4_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_4_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_4_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_5_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_5_ce0 <= w_l_plus1_5_ce0_local;

    w_l_plus1_5_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_5_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_5_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_6_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_6_ce0 <= w_l_plus1_6_ce0_local;

    w_l_plus1_6_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_6_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_6_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_7_address0 <= zext_ln44_fu_271_p1(2 - 1 downto 0);
    w_l_plus1_7_ce0 <= w_l_plus1_7_ce0_local;

    w_l_plus1_7_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_7_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_7_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_T_address0 <= zext_ln46_fu_320_p1(5 - 1 downto 0);
    w_l_plus1_T_ce0 <= w_l_plus1_T_ce0_local;

    w_l_plus1_T_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_T_ce0_local <= ap_const_logic_1;
        else 
            w_l_plus1_T_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w_l_plus1_T_d0 <= tmp_fu_325_p19;
    w_l_plus1_T_we0 <= w_l_plus1_T_we0_local;

    w_l_plus1_T_we0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w_l_plus1_T_we0_local <= ap_const_logic_1;
        else 
            w_l_plus1_T_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln44_fu_271_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln44_2_fu_263_p3),64));
    zext_ln46_fu_320_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln46_fu_314_p2),64));
end behav;
