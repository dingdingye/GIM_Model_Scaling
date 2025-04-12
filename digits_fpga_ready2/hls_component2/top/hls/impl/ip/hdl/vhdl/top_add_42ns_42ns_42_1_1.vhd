-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
-- 
--  
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity top_add_42ns_42ns_42_1_1 is
    generic (
        ID          : INTEGER := 1;
        NUM_STAGE   : INTEGER := 1;
        din0_WIDTH  : INTEGER := 42;
        din1_WIDTH  : INTEGER := 42;
        dout_WIDTH  : INTEGER := 42);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture behav of top_add_42ns_42ns_42_1_1 is
    signal s_tmp : std_logic_vector(41 downto 0);
-- 
    attribute use_dsp : string;
    attribute use_dsp of s_tmp : signal is "yes"; 
-- 
begin

s_tmp <= unsigned(din0) + unsigned(din1);
dout <= std_logic_vector(s_tmp);

end architecture;
-- 