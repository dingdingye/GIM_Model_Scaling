-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_sparsemux_27_4_5_1_1 is
generic (

    din0_WIDTH : INTEGER := 1;

    din1_WIDTH : INTEGER := 1;

    din2_WIDTH : INTEGER := 1;

    din3_WIDTH : INTEGER := 1;

    din4_WIDTH : INTEGER := 1;

    din5_WIDTH : INTEGER := 1;

    din6_WIDTH : INTEGER := 1;

    din7_WIDTH : INTEGER := 1;

    din8_WIDTH : INTEGER := 1;

    din9_WIDTH : INTEGER := 1;

    din10_WIDTH : INTEGER := 1;

    din11_WIDTH : INTEGER := 1;

    din12_WIDTH : INTEGER := 1;

    def_WIDTH : INTEGER := 1;
    sel_WIDTH : INTEGER := 1;
    dout_WIDTH : INTEGER := 1;
    
    CASE0 : std_logic_vector(3 downto 0);
    
    CASE1 : std_logic_vector(3 downto 0);
    
    CASE2 : std_logic_vector(3 downto 0);
    
    CASE3 : std_logic_vector(3 downto 0);
    
    CASE4 : std_logic_vector(3 downto 0);
    
    CASE5 : std_logic_vector(3 downto 0);
    
    CASE6 : std_logic_vector(3 downto 0);
    
    CASE7 : std_logic_vector(3 downto 0);
    
    CASE8 : std_logic_vector(3 downto 0);
    
    CASE9 : std_logic_vector(3 downto 0);
    
    CASE10 : std_logic_vector(3 downto 0);
    
    CASE11 : std_logic_vector(3 downto 0);
    
    CASE12 : std_logic_vector(3 downto 0);
    
    ID : INTEGER := 1;
    NUM_STAGE : INTEGER := 1
);
port (


    din0 : in std_logic_vector (din0_WIDTH-1 downto 0);

    din1 : in std_logic_vector (din1_WIDTH-1 downto 0);

    din2 : in std_logic_vector (din2_WIDTH-1 downto 0);

    din3 : in std_logic_vector (din3_WIDTH-1 downto 0);

    din4 : in std_logic_vector (din4_WIDTH-1 downto 0);

    din5 : in std_logic_vector (din5_WIDTH-1 downto 0);

    din6 : in std_logic_vector (din6_WIDTH-1 downto 0);

    din7 : in std_logic_vector (din7_WIDTH-1 downto 0);

    din8 : in std_logic_vector (din8_WIDTH-1 downto 0);

    din9 : in std_logic_vector (din9_WIDTH-1 downto 0);

    din10 : in std_logic_vector (din10_WIDTH-1 downto 0);

    din11 : in std_logic_vector (din11_WIDTH-1 downto 0);

    din12 : in std_logic_vector (din12_WIDTH-1 downto 0);

    def   : in std_logic_vector (def_WIDTH-1 downto 0);
    sel   : in std_logic_vector (3 downto 0);
    dout  : out std_logic_vector (dout_WIDTH-1 downto 0)
);
end entity;

architecture behav of top_sparsemux_27_4_5_1_1 is
    signal dout_tmp : std_logic_vector (dout_WIDTH-1 downto 0);


begin

    process(din0, din1, din2, din3, din4, din5, din6, din7, din8, din9, din10, din11, din12, sel) is
    begin
        case sel is
            
            when CASE0 =>
                dout_tmp <= din0;
            
            when CASE1 =>
                dout_tmp <= din1;
            
            when CASE2 =>
                dout_tmp <= din2;
            
            when CASE3 =>
                dout_tmp <= din3;
            
            when CASE4 =>
                dout_tmp <= din4;
            
            when CASE5 =>
                dout_tmp <= din5;
            
            when CASE6 =>
                dout_tmp <= din6;
            
            when CASE7 =>
                dout_tmp <= din7;
            
            when CASE8 =>
                dout_tmp <= din8;
            
            when CASE9 =>
                dout_tmp <= din9;
            
            when CASE10 =>
                dout_tmp <= din10;
            
            when CASE11 =>
                dout_tmp <= din11;
            
            when CASE12 =>
                dout_tmp <= din12;
            
            when others =>
                dout_tmp <= def;
        end case;
    end process;


    dout <= dout_tmp;




end architecture;
