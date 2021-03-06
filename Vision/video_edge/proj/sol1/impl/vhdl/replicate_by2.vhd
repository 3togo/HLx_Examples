-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity replicate_by2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    img_in_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_stream_0_V_empty_n : IN STD_LOGIC;
    img_in_data_stream_0_V_read : OUT STD_LOGIC;
    img_in_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_stream_1_V_empty_n : IN STD_LOGIC;
    img_in_data_stream_1_V_read : OUT STD_LOGIC;
    img_in_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_in_data_stream_2_V_empty_n : IN STD_LOGIC;
    img_in_data_stream_2_V_read : OUT STD_LOGIC;
    img_out0_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out0_data_stream_0_V_full_n : IN STD_LOGIC;
    img_out0_data_stream_0_V_write : OUT STD_LOGIC;
    img_out0_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out0_data_stream_1_V_full_n : IN STD_LOGIC;
    img_out0_data_stream_1_V_write : OUT STD_LOGIC;
    img_out0_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out0_data_stream_2_V_full_n : IN STD_LOGIC;
    img_out0_data_stream_2_V_write : OUT STD_LOGIC;
    img_out1_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out1_data_stream_0_V_full_n : IN STD_LOGIC;
    img_out1_data_stream_0_V_write : OUT STD_LOGIC;
    img_out1_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out1_data_stream_1_V_full_n : IN STD_LOGIC;
    img_out1_data_stream_1_V_write : OUT STD_LOGIC;
    img_out1_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out1_data_stream_2_V_full_n : IN STD_LOGIC;
    img_out1_data_stream_2_V_write : OUT STD_LOGIC );
end;


architecture behav of replicate_by2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv16_BD0F : STD_LOGIC_VECTOR (15 downto 0) := "1011110100001111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal img_in_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal img_in_data_stream_1_V_blk_n : STD_LOGIC;
    signal img_in_data_stream_2_V_blk_n : STD_LOGIC;
    signal img_out0_data_stream_0_V_blk_n : STD_LOGIC;
    signal img_out0_data_stream_1_V_blk_n : STD_LOGIC;
    signal img_out0_data_stream_2_V_blk_n : STD_LOGIC;
    signal img_out1_data_stream_0_V_blk_n : STD_LOGIC;
    signal img_out1_data_stream_1_V_blk_n : STD_LOGIC;
    signal img_out1_data_stream_2_V_blk_n : STD_LOGIC;
    signal indvar_flatten_next_fu_254_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal indvar_flatten2_reg_240 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal exitcond_flatten_fu_260_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_flatten_fu_260_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten2_reg_240_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_flatten_fu_260_p2 = ap_const_lv1_0))) then 
                indvar_flatten2_reg_240 <= indvar_flatten_next_fu_254_p2;
            elsif (((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_flatten_fu_260_p2 = ap_const_lv1_1)) or (not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                indvar_flatten2_reg_240 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n)
    begin
                ap_block_state2 <= ((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2, exitcond_flatten_fu_260_p2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_flatten_fu_260_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond_flatten_fu_260_p2 <= "1" when (indvar_flatten2_reg_240 = ap_const_lv16_BD0F) else "0";

    img_in_data_stream_0_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_in_data_stream_0_V_blk_n <= img_in_data_stream_0_V_empty_n;
        else 
            img_in_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_in_data_stream_0_V_read_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_in_data_stream_0_V_read <= ap_const_logic_1;
        else 
            img_in_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_in_data_stream_1_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_1_V_empty_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_in_data_stream_1_V_blk_n <= img_in_data_stream_1_V_empty_n;
        else 
            img_in_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_in_data_stream_1_V_read_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_in_data_stream_1_V_read <= ap_const_logic_1;
        else 
            img_in_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_in_data_stream_2_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_2_V_empty_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_in_data_stream_2_V_blk_n <= img_in_data_stream_2_V_empty_n;
        else 
            img_in_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_in_data_stream_2_V_read_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_in_data_stream_2_V_read <= ap_const_logic_1;
        else 
            img_in_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_out0_data_stream_0_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_out0_data_stream_0_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out0_data_stream_0_V_blk_n <= img_out0_data_stream_0_V_full_n;
        else 
            img_out0_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out0_data_stream_0_V_din <= img_in_data_stream_0_V_dout;

    img_out0_data_stream_0_V_write_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out0_data_stream_0_V_write <= ap_const_logic_1;
        else 
            img_out0_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    img_out0_data_stream_1_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_out0_data_stream_1_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out0_data_stream_1_V_blk_n <= img_out0_data_stream_1_V_full_n;
        else 
            img_out0_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out0_data_stream_1_V_din <= img_in_data_stream_1_V_dout;

    img_out0_data_stream_1_V_write_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out0_data_stream_1_V_write <= ap_const_logic_1;
        else 
            img_out0_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    img_out0_data_stream_2_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_out0_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out0_data_stream_2_V_blk_n <= img_out0_data_stream_2_V_full_n;
        else 
            img_out0_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out0_data_stream_2_V_din <= img_in_data_stream_2_V_dout;

    img_out0_data_stream_2_V_write_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out0_data_stream_2_V_write <= ap_const_logic_1;
        else 
            img_out0_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;


    img_out1_data_stream_0_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_out1_data_stream_0_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out1_data_stream_0_V_blk_n <= img_out1_data_stream_0_V_full_n;
        else 
            img_out1_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out1_data_stream_0_V_din <= img_in_data_stream_0_V_dout;

    img_out1_data_stream_0_V_write_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out1_data_stream_0_V_write <= ap_const_logic_1;
        else 
            img_out1_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    img_out1_data_stream_1_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_out1_data_stream_1_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out1_data_stream_1_V_blk_n <= img_out1_data_stream_1_V_full_n;
        else 
            img_out1_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out1_data_stream_1_V_din <= img_in_data_stream_1_V_dout;

    img_out1_data_stream_1_V_write_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out1_data_stream_1_V_write <= ap_const_logic_1;
        else 
            img_out1_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    img_out1_data_stream_2_V_blk_n_assign_proc : process(real_start, ap_done_reg, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out1_data_stream_2_V_blk_n <= img_out1_data_stream_2_V_full_n;
        else 
            img_out1_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out1_data_stream_2_V_din <= img_in_data_stream_2_V_dout;

    img_out1_data_stream_2_V_write_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            img_out1_data_stream_2_V_write <= ap_const_logic_1;
        else 
            img_out1_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    indvar_flatten_next_fu_254_p2 <= std_logic_vector(unsigned(indvar_flatten2_reg_240) + unsigned(ap_const_lv16_1));

    internal_ap_ready_assign_proc : process(real_start, ap_done_reg, img_in_data_stream_0_V_empty_n, img_in_data_stream_1_V_empty_n, img_in_data_stream_2_V_empty_n, img_out0_data_stream_0_V_full_n, img_out0_data_stream_1_V_full_n, img_out0_data_stream_2_V_full_n, img_out1_data_stream_0_V_full_n, img_out1_data_stream_1_V_full_n, img_out1_data_stream_2_V_full_n, ap_CS_fsm_state2, exitcond_flatten_fu_260_p2)
    begin
        if ((not(((real_start = ap_const_logic_0) or (img_out1_data_stream_2_V_full_n = ap_const_logic_0) or (img_out1_data_stream_1_V_full_n = ap_const_logic_0) or (img_out1_data_stream_0_V_full_n = ap_const_logic_0) or (img_out0_data_stream_2_V_full_n = ap_const_logic_0) or (img_out0_data_stream_1_V_full_n = ap_const_logic_0) or (img_out0_data_stream_0_V_full_n = ap_const_logic_0) or (img_in_data_stream_2_V_empty_n = ap_const_logic_0) or (img_in_data_stream_1_V_empty_n = ap_const_logic_0) or (img_in_data_stream_0_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_flatten_fu_260_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
