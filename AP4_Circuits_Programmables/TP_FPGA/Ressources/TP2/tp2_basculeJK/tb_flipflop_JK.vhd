library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity tb_flipflop_JK is
end tb_flipflop_JK;

architecture tb of tb_flipflop_JK is
	signal J : std_logic := '0';
	signal K : std_logic := '0';
	signal CLK : std_logic := '0';
	signal Q : std_logic;
	signal Qn : std_logic;
begin
	UUT : entity work.flipflop_JK port map (J=>J, K=>K, CLK=>CLK, Q=>Q, Qn=>Qn);
	
stimuli : process
    begin
    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #1/1003" severity error;
    assert Qn = '1' report "Error in test case #1/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #2/1003" severity error;
    assert Qn = '1' report "Error in test case #2/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #3/1003" severity error;
    assert Qn = '1' report "Error in test case #3/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #4/1003" severity error;
    assert Qn = '1' report "Error in test case #4/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #5/1003" severity error;
    assert Qn = '1' report "Error in test case #5/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #6/1003" severity error;
    assert Qn = '1' report "Error in test case #6/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #7/1003" severity error;
    assert Qn = '1' report "Error in test case #7/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #8/1003" severity error;
    assert Qn = '1' report "Error in test case #8/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #9/1003" severity error;
    assert Qn = '1' report "Error in test case #9/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #10/1003" severity error;
    assert Qn = '1' report "Error in test case #10/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #11/1003" severity error;
    assert Qn = '1' report "Error in test case #11/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #12/1003" severity error;
    assert Qn = '1' report "Error in test case #12/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #13/1003" severity error;
    assert Qn = '1' report "Error in test case #13/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #14/1003" severity error;
    assert Qn = '1' report "Error in test case #14/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #15/1003" severity error;
    assert Qn = '1' report "Error in test case #15/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #16/1003" severity error;
    assert Qn = '1' report "Error in test case #16/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #17/1003" severity error;
    assert Qn = '1' report "Error in test case #17/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #18/1003" severity error;
    assert Qn = '1' report "Error in test case #18/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #19/1003" severity error;
    assert Qn = '1' report "Error in test case #19/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #20/1003" severity error;
    assert Qn = '1' report "Error in test case #20/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #21/1003" severity error;
    assert Qn = '1' report "Error in test case #21/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #22/1003" severity error;
    assert Qn = '1' report "Error in test case #22/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #23/1003" severity error;
    assert Qn = '1' report "Error in test case #23/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #24/1003" severity error;
    assert Qn = '1' report "Error in test case #24/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #25/1003" severity error;
    assert Qn = '1' report "Error in test case #25/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #26/1003" severity error;
    assert Qn = '1' report "Error in test case #26/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #27/1003" severity error;
    assert Qn = '1' report "Error in test case #27/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #28/1003" severity error;
    assert Qn = '1' report "Error in test case #28/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #29/1003" severity error;
    assert Qn = '1' report "Error in test case #29/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #30/1003" severity error;
    assert Qn = '1' report "Error in test case #30/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #31/1003" severity error;
    assert Qn = '1' report "Error in test case #31/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #32/1003" severity error;
    assert Qn = '1' report "Error in test case #32/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #33/1003" severity error;
    assert Qn = '1' report "Error in test case #33/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #34/1003" severity error;
    assert Qn = '1' report "Error in test case #34/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #35/1003" severity error;
    assert Qn = '1' report "Error in test case #35/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #36/1003" severity error;
    assert Qn = '1' report "Error in test case #36/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #37/1003" severity error;
    assert Qn = '1' report "Error in test case #37/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #38/1003" severity error;
    assert Qn = '1' report "Error in test case #38/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #39/1003" severity error;
    assert Qn = '1' report "Error in test case #39/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #40/1003" severity error;
    assert Qn = '0' report "Error in test case #40/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #41/1003" severity error;
    assert Qn = '0' report "Error in test case #41/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #42/1003" severity error;
    assert Qn = '0' report "Error in test case #42/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #43/1003" severity error;
    assert Qn = '0' report "Error in test case #43/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #44/1003" severity error;
    assert Qn = '0' report "Error in test case #44/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #45/1003" severity error;
    assert Qn = '0' report "Error in test case #45/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #46/1003" severity error;
    assert Qn = '0' report "Error in test case #46/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #47/1003" severity error;
    assert Qn = '0' report "Error in test case #47/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #48/1003" severity error;
    assert Qn = '0' report "Error in test case #48/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #49/1003" severity error;
    assert Qn = '0' report "Error in test case #49/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #50/1003" severity error;
    assert Qn = '0' report "Error in test case #50/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #51/1003" severity error;
    assert Qn = '0' report "Error in test case #51/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #52/1003" severity error;
    assert Qn = '0' report "Error in test case #52/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #53/1003" severity error;
    assert Qn = '0' report "Error in test case #53/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #54/1003" severity error;
    assert Qn = '0' report "Error in test case #54/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #55/1003" severity error;
    assert Qn = '0' report "Error in test case #55/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #56/1003" severity error;
    assert Qn = '0' report "Error in test case #56/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #57/1003" severity error;
    assert Qn = '0' report "Error in test case #57/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #58/1003" severity error;
    assert Qn = '0' report "Error in test case #58/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #59/1003" severity error;
    assert Qn = '0' report "Error in test case #59/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #60/1003" severity error;
    assert Qn = '0' report "Error in test case #60/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #61/1003" severity error;
    assert Qn = '0' report "Error in test case #61/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #62/1003" severity error;
    assert Qn = '0' report "Error in test case #62/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #63/1003" severity error;
    assert Qn = '0' report "Error in test case #63/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #64/1003" severity error;
    assert Qn = '1' report "Error in test case #64/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #65/1003" severity error;
    assert Qn = '1' report "Error in test case #65/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #66/1003" severity error;
    assert Qn = '1' report "Error in test case #66/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #67/1003" severity error;
    assert Qn = '1' report "Error in test case #67/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #68/1003" severity error;
    assert Qn = '1' report "Error in test case #68/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #69/1003" severity error;
    assert Qn = '1' report "Error in test case #69/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #70/1003" severity error;
    assert Qn = '1' report "Error in test case #70/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #71/1003" severity error;
    assert Qn = '1' report "Error in test case #71/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #72/1003" severity error;
    assert Qn = '1' report "Error in test case #72/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #73/1003" severity error;
    assert Qn = '1' report "Error in test case #73/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #74/1003" severity error;
    assert Qn = '1' report "Error in test case #74/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #75/1003" severity error;
    assert Qn = '1' report "Error in test case #75/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #76/1003" severity error;
    assert Qn = '1' report "Error in test case #76/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #77/1003" severity error;
    assert Qn = '1' report "Error in test case #77/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #78/1003" severity error;
    assert Qn = '1' report "Error in test case #78/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #79/1003" severity error;
    assert Qn = '1' report "Error in test case #79/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #80/1003" severity error;
    assert Qn = '1' report "Error in test case #80/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #81/1003" severity error;
    assert Qn = '1' report "Error in test case #81/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #82/1003" severity error;
    assert Qn = '1' report "Error in test case #82/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #83/1003" severity error;
    assert Qn = '1' report "Error in test case #83/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #84/1003" severity error;
    assert Qn = '1' report "Error in test case #84/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #85/1003" severity error;
    assert Qn = '1' report "Error in test case #85/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #86/1003" severity error;
    assert Qn = '1' report "Error in test case #86/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #87/1003" severity error;
    assert Qn = '1' report "Error in test case #87/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #88/1003" severity error;
    assert Qn = '1' report "Error in test case #88/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #89/1003" severity error;
    assert Qn = '1' report "Error in test case #89/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #90/1003" severity error;
    assert Qn = '1' report "Error in test case #90/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #91/1003" severity error;
    assert Qn = '1' report "Error in test case #91/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #92/1003" severity error;
    assert Qn = '1' report "Error in test case #92/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #93/1003" severity error;
    assert Qn = '1' report "Error in test case #93/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #94/1003" severity error;
    assert Qn = '1' report "Error in test case #94/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #95/1003" severity error;
    assert Qn = '1' report "Error in test case #95/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #96/1003" severity error;
    assert Qn = '0' report "Error in test case #96/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #97/1003" severity error;
    assert Qn = '0' report "Error in test case #97/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #98/1003" severity error;
    assert Qn = '0' report "Error in test case #98/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #99/1003" severity error;
    assert Qn = '0' report "Error in test case #99/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #100/1003" severity error;
    assert Qn = '0' report "Error in test case #100/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #101/1003" severity error;
    assert Qn = '0' report "Error in test case #101/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #102/1003" severity error;
    assert Qn = '0' report "Error in test case #102/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #103/1003" severity error;
    assert Qn = '0' report "Error in test case #103/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #104/1003" severity error;
    assert Qn = '0' report "Error in test case #104/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #105/1003" severity error;
    assert Qn = '0' report "Error in test case #105/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #106/1003" severity error;
    assert Qn = '0' report "Error in test case #106/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #107/1003" severity error;
    assert Qn = '0' report "Error in test case #107/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #108/1003" severity error;
    assert Qn = '0' report "Error in test case #108/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #109/1003" severity error;
    assert Qn = '0' report "Error in test case #109/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #110/1003" severity error;
    assert Qn = '0' report "Error in test case #110/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #111/1003" severity error;
    assert Qn = '0' report "Error in test case #111/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #112/1003" severity error;
    assert Qn = '1' report "Error in test case #112/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #113/1003" severity error;
    assert Qn = '1' report "Error in test case #113/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #114/1003" severity error;
    assert Qn = '1' report "Error in test case #114/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #115/1003" severity error;
    assert Qn = '1' report "Error in test case #115/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #116/1003" severity error;
    assert Qn = '1' report "Error in test case #116/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #117/1003" severity error;
    assert Qn = '1' report "Error in test case #117/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #118/1003" severity error;
    assert Qn = '1' report "Error in test case #118/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #119/1003" severity error;
    assert Qn = '1' report "Error in test case #119/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #120/1003" severity error;
    assert Qn = '0' report "Error in test case #120/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #121/1003" severity error;
    assert Qn = '0' report "Error in test case #121/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #122/1003" severity error;
    assert Qn = '0' report "Error in test case #122/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #123/1003" severity error;
    assert Qn = '0' report "Error in test case #123/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #124/1003" severity error;
    assert Qn = '0' report "Error in test case #124/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #125/1003" severity error;
    assert Qn = '0' report "Error in test case #125/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #126/1003" severity error;
    assert Qn = '0' report "Error in test case #126/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #127/1003" severity error;
    assert Qn = '0' report "Error in test case #127/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #128/1003" severity error;
    assert Qn = '1' report "Error in test case #128/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #129/1003" severity error;
    assert Qn = '1' report "Error in test case #129/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #130/1003" severity error;
    assert Qn = '1' report "Error in test case #130/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #131/1003" severity error;
    assert Qn = '1' report "Error in test case #131/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #132/1003" severity error;
    assert Qn = '1' report "Error in test case #132/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #133/1003" severity error;
    assert Qn = '1' report "Error in test case #133/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #134/1003" severity error;
    assert Qn = '1' report "Error in test case #134/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #135/1003" severity error;
    assert Qn = '1' report "Error in test case #135/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #136/1003" severity error;
    assert Qn = '1' report "Error in test case #136/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #137/1003" severity error;
    assert Qn = '1' report "Error in test case #137/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #138/1003" severity error;
    assert Qn = '1' report "Error in test case #138/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #139/1003" severity error;
    assert Qn = '1' report "Error in test case #139/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #140/1003" severity error;
    assert Qn = '1' report "Error in test case #140/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #141/1003" severity error;
    assert Qn = '1' report "Error in test case #141/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #142/1003" severity error;
    assert Qn = '1' report "Error in test case #142/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #143/1003" severity error;
    assert Qn = '1' report "Error in test case #143/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #144/1003" severity error;
    assert Qn = '0' report "Error in test case #144/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #145/1003" severity error;
    assert Qn = '0' report "Error in test case #145/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #146/1003" severity error;
    assert Qn = '0' report "Error in test case #146/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #147/1003" severity error;
    assert Qn = '0' report "Error in test case #147/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #148/1003" severity error;
    assert Qn = '0' report "Error in test case #148/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #149/1003" severity error;
    assert Qn = '0' report "Error in test case #149/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #150/1003" severity error;
    assert Qn = '0' report "Error in test case #150/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #151/1003" severity error;
    assert Qn = '0' report "Error in test case #151/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #152/1003" severity error;
    assert Qn = '0' report "Error in test case #152/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #153/1003" severity error;
    assert Qn = '0' report "Error in test case #153/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #154/1003" severity error;
    assert Qn = '0' report "Error in test case #154/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #155/1003" severity error;
    assert Qn = '0' report "Error in test case #155/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #156/1003" severity error;
    assert Qn = '0' report "Error in test case #156/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #157/1003" severity error;
    assert Qn = '0' report "Error in test case #157/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #158/1003" severity error;
    assert Qn = '0' report "Error in test case #158/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #159/1003" severity error;
    assert Qn = '0' report "Error in test case #159/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #160/1003" severity error;
    assert Qn = '0' report "Error in test case #160/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #161/1003" severity error;
    assert Qn = '0' report "Error in test case #161/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #162/1003" severity error;
    assert Qn = '0' report "Error in test case #162/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #163/1003" severity error;
    assert Qn = '0' report "Error in test case #163/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #164/1003" severity error;
    assert Qn = '0' report "Error in test case #164/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #165/1003" severity error;
    assert Qn = '0' report "Error in test case #165/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #166/1003" severity error;
    assert Qn = '0' report "Error in test case #166/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #167/1003" severity error;
    assert Qn = '0' report "Error in test case #167/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #168/1003" severity error;
    assert Qn = '0' report "Error in test case #168/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #169/1003" severity error;
    assert Qn = '0' report "Error in test case #169/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #170/1003" severity error;
    assert Qn = '0' report "Error in test case #170/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #171/1003" severity error;
    assert Qn = '0' report "Error in test case #171/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #172/1003" severity error;
    assert Qn = '0' report "Error in test case #172/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #173/1003" severity error;
    assert Qn = '0' report "Error in test case #173/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #174/1003" severity error;
    assert Qn = '0' report "Error in test case #174/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #175/1003" severity error;
    assert Qn = '0' report "Error in test case #175/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #176/1003" severity error;
    assert Qn = '0' report "Error in test case #176/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #177/1003" severity error;
    assert Qn = '0' report "Error in test case #177/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #178/1003" severity error;
    assert Qn = '0' report "Error in test case #178/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #179/1003" severity error;
    assert Qn = '0' report "Error in test case #179/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #180/1003" severity error;
    assert Qn = '0' report "Error in test case #180/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #181/1003" severity error;
    assert Qn = '0' report "Error in test case #181/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #182/1003" severity error;
    assert Qn = '0' report "Error in test case #182/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #183/1003" severity error;
    assert Qn = '0' report "Error in test case #183/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #184/1003" severity error;
    assert Qn = '0' report "Error in test case #184/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #185/1003" severity error;
    assert Qn = '0' report "Error in test case #185/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #186/1003" severity error;
    assert Qn = '0' report "Error in test case #186/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #187/1003" severity error;
    assert Qn = '0' report "Error in test case #187/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #188/1003" severity error;
    assert Qn = '0' report "Error in test case #188/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #189/1003" severity error;
    assert Qn = '0' report "Error in test case #189/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #190/1003" severity error;
    assert Qn = '0' report "Error in test case #190/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #191/1003" severity error;
    assert Qn = '0' report "Error in test case #191/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #192/1003" severity error;
    assert Qn = '0' report "Error in test case #192/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #193/1003" severity error;
    assert Qn = '0' report "Error in test case #193/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #194/1003" severity error;
    assert Qn = '0' report "Error in test case #194/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #195/1003" severity error;
    assert Qn = '0' report "Error in test case #195/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #196/1003" severity error;
    assert Qn = '0' report "Error in test case #196/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #197/1003" severity error;
    assert Qn = '0' report "Error in test case #197/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #198/1003" severity error;
    assert Qn = '0' report "Error in test case #198/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #199/1003" severity error;
    assert Qn = '0' report "Error in test case #199/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #200/1003" severity error;
    assert Qn = '0' report "Error in test case #200/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #201/1003" severity error;
    assert Qn = '0' report "Error in test case #201/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #202/1003" severity error;
    assert Qn = '0' report "Error in test case #202/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #203/1003" severity error;
    assert Qn = '0' report "Error in test case #203/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #204/1003" severity error;
    assert Qn = '0' report "Error in test case #204/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #205/1003" severity error;
    assert Qn = '0' report "Error in test case #205/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #206/1003" severity error;
    assert Qn = '0' report "Error in test case #206/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #207/1003" severity error;
    assert Qn = '0' report "Error in test case #207/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #208/1003" severity error;
    assert Qn = '0' report "Error in test case #208/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #209/1003" severity error;
    assert Qn = '0' report "Error in test case #209/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #210/1003" severity error;
    assert Qn = '0' report "Error in test case #210/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #211/1003" severity error;
    assert Qn = '0' report "Error in test case #211/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #212/1003" severity error;
    assert Qn = '0' report "Error in test case #212/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #213/1003" severity error;
    assert Qn = '0' report "Error in test case #213/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #214/1003" severity error;
    assert Qn = '0' report "Error in test case #214/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #215/1003" severity error;
    assert Qn = '0' report "Error in test case #215/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #216/1003" severity error;
    assert Qn = '0' report "Error in test case #216/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #217/1003" severity error;
    assert Qn = '0' report "Error in test case #217/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #218/1003" severity error;
    assert Qn = '0' report "Error in test case #218/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #219/1003" severity error;
    assert Qn = '0' report "Error in test case #219/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #220/1003" severity error;
    assert Qn = '0' report "Error in test case #220/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #221/1003" severity error;
    assert Qn = '0' report "Error in test case #221/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #222/1003" severity error;
    assert Qn = '0' report "Error in test case #222/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #223/1003" severity error;
    assert Qn = '0' report "Error in test case #223/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #224/1003" severity error;
    assert Qn = '0' report "Error in test case #224/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #225/1003" severity error;
    assert Qn = '0' report "Error in test case #225/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #226/1003" severity error;
    assert Qn = '0' report "Error in test case #226/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #227/1003" severity error;
    assert Qn = '0' report "Error in test case #227/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #228/1003" severity error;
    assert Qn = '0' report "Error in test case #228/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #229/1003" severity error;
    assert Qn = '0' report "Error in test case #229/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #230/1003" severity error;
    assert Qn = '0' report "Error in test case #230/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #231/1003" severity error;
    assert Qn = '0' report "Error in test case #231/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #232/1003" severity error;
    assert Qn = '1' report "Error in test case #232/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #233/1003" severity error;
    assert Qn = '1' report "Error in test case #233/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #234/1003" severity error;
    assert Qn = '1' report "Error in test case #234/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #235/1003" severity error;
    assert Qn = '1' report "Error in test case #235/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #236/1003" severity error;
    assert Qn = '1' report "Error in test case #236/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #237/1003" severity error;
    assert Qn = '1' report "Error in test case #237/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #238/1003" severity error;
    assert Qn = '1' report "Error in test case #238/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #239/1003" severity error;
    assert Qn = '1' report "Error in test case #239/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #240/1003" severity error;
    assert Qn = '1' report "Error in test case #240/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #241/1003" severity error;
    assert Qn = '1' report "Error in test case #241/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #242/1003" severity error;
    assert Qn = '1' report "Error in test case #242/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #243/1003" severity error;
    assert Qn = '1' report "Error in test case #243/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #244/1003" severity error;
    assert Qn = '1' report "Error in test case #244/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #245/1003" severity error;
    assert Qn = '1' report "Error in test case #245/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #246/1003" severity error;
    assert Qn = '1' report "Error in test case #246/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #247/1003" severity error;
    assert Qn = '1' report "Error in test case #247/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #248/1003" severity error;
    assert Qn = '1' report "Error in test case #248/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #249/1003" severity error;
    assert Qn = '1' report "Error in test case #249/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #250/1003" severity error;
    assert Qn = '1' report "Error in test case #250/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #251/1003" severity error;
    assert Qn = '1' report "Error in test case #251/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #252/1003" severity error;
    assert Qn = '1' report "Error in test case #252/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #253/1003" severity error;
    assert Qn = '1' report "Error in test case #253/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #254/1003" severity error;
    assert Qn = '1' report "Error in test case #254/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #255/1003" severity error;
    assert Qn = '1' report "Error in test case #255/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #256/1003" severity error;
    assert Qn = '0' report "Error in test case #256/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #257/1003" severity error;
    assert Qn = '0' report "Error in test case #257/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #258/1003" severity error;
    assert Qn = '0' report "Error in test case #258/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #259/1003" severity error;
    assert Qn = '0' report "Error in test case #259/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #260/1003" severity error;
    assert Qn = '0' report "Error in test case #260/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #261/1003" severity error;
    assert Qn = '0' report "Error in test case #261/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #262/1003" severity error;
    assert Qn = '0' report "Error in test case #262/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #263/1003" severity error;
    assert Qn = '0' report "Error in test case #263/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #264/1003" severity error;
    assert Qn = '1' report "Error in test case #264/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #265/1003" severity error;
    assert Qn = '1' report "Error in test case #265/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #266/1003" severity error;
    assert Qn = '1' report "Error in test case #266/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #267/1003" severity error;
    assert Qn = '1' report "Error in test case #267/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #268/1003" severity error;
    assert Qn = '1' report "Error in test case #268/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #269/1003" severity error;
    assert Qn = '1' report "Error in test case #269/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #270/1003" severity error;
    assert Qn = '1' report "Error in test case #270/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #271/1003" severity error;
    assert Qn = '1' report "Error in test case #271/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #272/1003" severity error;
    assert Qn = '1' report "Error in test case #272/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #273/1003" severity error;
    assert Qn = '1' report "Error in test case #273/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #274/1003" severity error;
    assert Qn = '1' report "Error in test case #274/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #275/1003" severity error;
    assert Qn = '1' report "Error in test case #275/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #276/1003" severity error;
    assert Qn = '1' report "Error in test case #276/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #277/1003" severity error;
    assert Qn = '1' report "Error in test case #277/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #278/1003" severity error;
    assert Qn = '1' report "Error in test case #278/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #279/1003" severity error;
    assert Qn = '1' report "Error in test case #279/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #280/1003" severity error;
    assert Qn = '1' report "Error in test case #280/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #281/1003" severity error;
    assert Qn = '1' report "Error in test case #281/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #282/1003" severity error;
    assert Qn = '1' report "Error in test case #282/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #283/1003" severity error;
    assert Qn = '1' report "Error in test case #283/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #284/1003" severity error;
    assert Qn = '1' report "Error in test case #284/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #285/1003" severity error;
    assert Qn = '1' report "Error in test case #285/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #286/1003" severity error;
    assert Qn = '1' report "Error in test case #286/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #287/1003" severity error;
    assert Qn = '1' report "Error in test case #287/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #288/1003" severity error;
    assert Qn = '0' report "Error in test case #288/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #289/1003" severity error;
    assert Qn = '0' report "Error in test case #289/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #290/1003" severity error;
    assert Qn = '0' report "Error in test case #290/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #291/1003" severity error;
    assert Qn = '0' report "Error in test case #291/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #292/1003" severity error;
    assert Qn = '0' report "Error in test case #292/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #293/1003" severity error;
    assert Qn = '0' report "Error in test case #293/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #294/1003" severity error;
    assert Qn = '0' report "Error in test case #294/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #295/1003" severity error;
    assert Qn = '0' report "Error in test case #295/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #296/1003" severity error;
    assert Qn = '0' report "Error in test case #296/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #297/1003" severity error;
    assert Qn = '0' report "Error in test case #297/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #298/1003" severity error;
    assert Qn = '0' report "Error in test case #298/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #299/1003" severity error;
    assert Qn = '0' report "Error in test case #299/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #300/1003" severity error;
    assert Qn = '0' report "Error in test case #300/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #301/1003" severity error;
    assert Qn = '0' report "Error in test case #301/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #302/1003" severity error;
    assert Qn = '0' report "Error in test case #302/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #303/1003" severity error;
    assert Qn = '0' report "Error in test case #303/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #304/1003" severity error;
    assert Qn = '1' report "Error in test case #304/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #305/1003" severity error;
    assert Qn = '1' report "Error in test case #305/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #306/1003" severity error;
    assert Qn = '1' report "Error in test case #306/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #307/1003" severity error;
    assert Qn = '1' report "Error in test case #307/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #308/1003" severity error;
    assert Qn = '1' report "Error in test case #308/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #309/1003" severity error;
    assert Qn = '1' report "Error in test case #309/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #310/1003" severity error;
    assert Qn = '1' report "Error in test case #310/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #311/1003" severity error;
    assert Qn = '1' report "Error in test case #311/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #312/1003" severity error;
    assert Qn = '1' report "Error in test case #312/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #313/1003" severity error;
    assert Qn = '1' report "Error in test case #313/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #314/1003" severity error;
    assert Qn = '1' report "Error in test case #314/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #315/1003" severity error;
    assert Qn = '1' report "Error in test case #315/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #316/1003" severity error;
    assert Qn = '1' report "Error in test case #316/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #317/1003" severity error;
    assert Qn = '1' report "Error in test case #317/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #318/1003" severity error;
    assert Qn = '1' report "Error in test case #318/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #319/1003" severity error;
    assert Qn = '1' report "Error in test case #319/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #320/1003" severity error;
    assert Qn = '1' report "Error in test case #320/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #321/1003" severity error;
    assert Qn = '1' report "Error in test case #321/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #322/1003" severity error;
    assert Qn = '1' report "Error in test case #322/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #323/1003" severity error;
    assert Qn = '1' report "Error in test case #323/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #324/1003" severity error;
    assert Qn = '1' report "Error in test case #324/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #325/1003" severity error;
    assert Qn = '1' report "Error in test case #325/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #326/1003" severity error;
    assert Qn = '1' report "Error in test case #326/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #327/1003" severity error;
    assert Qn = '1' report "Error in test case #327/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #328/1003" severity error;
    assert Qn = '1' report "Error in test case #328/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #329/1003" severity error;
    assert Qn = '1' report "Error in test case #329/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #330/1003" severity error;
    assert Qn = '1' report "Error in test case #330/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #331/1003" severity error;
    assert Qn = '1' report "Error in test case #331/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #332/1003" severity error;
    assert Qn = '1' report "Error in test case #332/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #333/1003" severity error;
    assert Qn = '1' report "Error in test case #333/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #334/1003" severity error;
    assert Qn = '1' report "Error in test case #334/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #335/1003" severity error;
    assert Qn = '1' report "Error in test case #335/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #336/1003" severity error;
    assert Qn = '1' report "Error in test case #336/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #337/1003" severity error;
    assert Qn = '1' report "Error in test case #337/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #338/1003" severity error;
    assert Qn = '1' report "Error in test case #338/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #339/1003" severity error;
    assert Qn = '1' report "Error in test case #339/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #340/1003" severity error;
    assert Qn = '1' report "Error in test case #340/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #341/1003" severity error;
    assert Qn = '1' report "Error in test case #341/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #342/1003" severity error;
    assert Qn = '1' report "Error in test case #342/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #343/1003" severity error;
    assert Qn = '1' report "Error in test case #343/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #344/1003" severity error;
    assert Qn = '0' report "Error in test case #344/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #345/1003" severity error;
    assert Qn = '0' report "Error in test case #345/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #346/1003" severity error;
    assert Qn = '0' report "Error in test case #346/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #347/1003" severity error;
    assert Qn = '0' report "Error in test case #347/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #348/1003" severity error;
    assert Qn = '0' report "Error in test case #348/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #349/1003" severity error;
    assert Qn = '0' report "Error in test case #349/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #350/1003" severity error;
    assert Qn = '0' report "Error in test case #350/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #351/1003" severity error;
    assert Qn = '0' report "Error in test case #351/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #352/1003" severity error;
    assert Qn = '0' report "Error in test case #352/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #353/1003" severity error;
    assert Qn = '0' report "Error in test case #353/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #354/1003" severity error;
    assert Qn = '0' report "Error in test case #354/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #355/1003" severity error;
    assert Qn = '0' report "Error in test case #355/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #356/1003" severity error;
    assert Qn = '0' report "Error in test case #356/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #357/1003" severity error;
    assert Qn = '0' report "Error in test case #357/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #358/1003" severity error;
    assert Qn = '0' report "Error in test case #358/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #359/1003" severity error;
    assert Qn = '0' report "Error in test case #359/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #360/1003" severity error;
    assert Qn = '1' report "Error in test case #360/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #361/1003" severity error;
    assert Qn = '1' report "Error in test case #361/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #362/1003" severity error;
    assert Qn = '1' report "Error in test case #362/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #363/1003" severity error;
    assert Qn = '1' report "Error in test case #363/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #364/1003" severity error;
    assert Qn = '1' report "Error in test case #364/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #365/1003" severity error;
    assert Qn = '1' report "Error in test case #365/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #366/1003" severity error;
    assert Qn = '1' report "Error in test case #366/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #367/1003" severity error;
    assert Qn = '1' report "Error in test case #367/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #368/1003" severity error;
    assert Qn = '1' report "Error in test case #368/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #369/1003" severity error;
    assert Qn = '1' report "Error in test case #369/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #370/1003" severity error;
    assert Qn = '1' report "Error in test case #370/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #371/1003" severity error;
    assert Qn = '1' report "Error in test case #371/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #372/1003" severity error;
    assert Qn = '1' report "Error in test case #372/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #373/1003" severity error;
    assert Qn = '1' report "Error in test case #373/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #374/1003" severity error;
    assert Qn = '1' report "Error in test case #374/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #375/1003" severity error;
    assert Qn = '1' report "Error in test case #375/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #376/1003" severity error;
    assert Qn = '1' report "Error in test case #376/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #377/1003" severity error;
    assert Qn = '1' report "Error in test case #377/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #378/1003" severity error;
    assert Qn = '1' report "Error in test case #378/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #379/1003" severity error;
    assert Qn = '1' report "Error in test case #379/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #380/1003" severity error;
    assert Qn = '1' report "Error in test case #380/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #381/1003" severity error;
    assert Qn = '1' report "Error in test case #381/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #382/1003" severity error;
    assert Qn = '1' report "Error in test case #382/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #383/1003" severity error;
    assert Qn = '1' report "Error in test case #383/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #384/1003" severity error;
    assert Qn = '0' report "Error in test case #384/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #385/1003" severity error;
    assert Qn = '0' report "Error in test case #385/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #386/1003" severity error;
    assert Qn = '0' report "Error in test case #386/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #387/1003" severity error;
    assert Qn = '0' report "Error in test case #387/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #388/1003" severity error;
    assert Qn = '0' report "Error in test case #388/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #389/1003" severity error;
    assert Qn = '0' report "Error in test case #389/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #390/1003" severity error;
    assert Qn = '0' report "Error in test case #390/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #391/1003" severity error;
    assert Qn = '0' report "Error in test case #391/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #392/1003" severity error;
    assert Qn = '0' report "Error in test case #392/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #393/1003" severity error;
    assert Qn = '0' report "Error in test case #393/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #394/1003" severity error;
    assert Qn = '0' report "Error in test case #394/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #395/1003" severity error;
    assert Qn = '0' report "Error in test case #395/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #396/1003" severity error;
    assert Qn = '0' report "Error in test case #396/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #397/1003" severity error;
    assert Qn = '0' report "Error in test case #397/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #398/1003" severity error;
    assert Qn = '0' report "Error in test case #398/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #399/1003" severity error;
    assert Qn = '0' report "Error in test case #399/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #400/1003" severity error;
    assert Qn = '0' report "Error in test case #400/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #401/1003" severity error;
    assert Qn = '0' report "Error in test case #401/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #402/1003" severity error;
    assert Qn = '0' report "Error in test case #402/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #403/1003" severity error;
    assert Qn = '0' report "Error in test case #403/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #404/1003" severity error;
    assert Qn = '0' report "Error in test case #404/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #405/1003" severity error;
    assert Qn = '0' report "Error in test case #405/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #406/1003" severity error;
    assert Qn = '0' report "Error in test case #406/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #407/1003" severity error;
    assert Qn = '0' report "Error in test case #407/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #408/1003" severity error;
    assert Qn = '0' report "Error in test case #408/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #409/1003" severity error;
    assert Qn = '0' report "Error in test case #409/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #410/1003" severity error;
    assert Qn = '0' report "Error in test case #410/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #411/1003" severity error;
    assert Qn = '0' report "Error in test case #411/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #412/1003" severity error;
    assert Qn = '0' report "Error in test case #412/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #413/1003" severity error;
    assert Qn = '0' report "Error in test case #413/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #414/1003" severity error;
    assert Qn = '0' report "Error in test case #414/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #415/1003" severity error;
    assert Qn = '0' report "Error in test case #415/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #416/1003" severity error;
    assert Qn = '0' report "Error in test case #416/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #417/1003" severity error;
    assert Qn = '0' report "Error in test case #417/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #418/1003" severity error;
    assert Qn = '0' report "Error in test case #418/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #419/1003" severity error;
    assert Qn = '0' report "Error in test case #419/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #420/1003" severity error;
    assert Qn = '0' report "Error in test case #420/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #421/1003" severity error;
    assert Qn = '0' report "Error in test case #421/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #422/1003" severity error;
    assert Qn = '0' report "Error in test case #422/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #423/1003" severity error;
    assert Qn = '0' report "Error in test case #423/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #424/1003" severity error;
    assert Qn = '1' report "Error in test case #424/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #425/1003" severity error;
    assert Qn = '1' report "Error in test case #425/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #426/1003" severity error;
    assert Qn = '1' report "Error in test case #426/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #427/1003" severity error;
    assert Qn = '1' report "Error in test case #427/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #428/1003" severity error;
    assert Qn = '1' report "Error in test case #428/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #429/1003" severity error;
    assert Qn = '1' report "Error in test case #429/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #430/1003" severity error;
    assert Qn = '1' report "Error in test case #430/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #431/1003" severity error;
    assert Qn = '1' report "Error in test case #431/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #432/1003" severity error;
    assert Qn = '0' report "Error in test case #432/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #433/1003" severity error;
    assert Qn = '0' report "Error in test case #433/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #434/1003" severity error;
    assert Qn = '0' report "Error in test case #434/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #435/1003" severity error;
    assert Qn = '0' report "Error in test case #435/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #436/1003" severity error;
    assert Qn = '0' report "Error in test case #436/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #437/1003" severity error;
    assert Qn = '0' report "Error in test case #437/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #438/1003" severity error;
    assert Qn = '0' report "Error in test case #438/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #439/1003" severity error;
    assert Qn = '0' report "Error in test case #439/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #440/1003" severity error;
    assert Qn = '1' report "Error in test case #440/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #441/1003" severity error;
    assert Qn = '1' report "Error in test case #441/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #442/1003" severity error;
    assert Qn = '1' report "Error in test case #442/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #443/1003" severity error;
    assert Qn = '1' report "Error in test case #443/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #444/1003" severity error;
    assert Qn = '1' report "Error in test case #444/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #445/1003" severity error;
    assert Qn = '1' report "Error in test case #445/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #446/1003" severity error;
    assert Qn = '1' report "Error in test case #446/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #447/1003" severity error;
    assert Qn = '1' report "Error in test case #447/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #448/1003" severity error;
    assert Qn = '1' report "Error in test case #448/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #449/1003" severity error;
    assert Qn = '1' report "Error in test case #449/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #450/1003" severity error;
    assert Qn = '1' report "Error in test case #450/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #451/1003" severity error;
    assert Qn = '1' report "Error in test case #451/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #452/1003" severity error;
    assert Qn = '1' report "Error in test case #452/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #453/1003" severity error;
    assert Qn = '1' report "Error in test case #453/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #454/1003" severity error;
    assert Qn = '1' report "Error in test case #454/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #455/1003" severity error;
    assert Qn = '1' report "Error in test case #455/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #456/1003" severity error;
    assert Qn = '1' report "Error in test case #456/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #457/1003" severity error;
    assert Qn = '1' report "Error in test case #457/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #458/1003" severity error;
    assert Qn = '1' report "Error in test case #458/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #459/1003" severity error;
    assert Qn = '1' report "Error in test case #459/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #460/1003" severity error;
    assert Qn = '1' report "Error in test case #460/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #461/1003" severity error;
    assert Qn = '1' report "Error in test case #461/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #462/1003" severity error;
    assert Qn = '1' report "Error in test case #462/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #463/1003" severity error;
    assert Qn = '1' report "Error in test case #463/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #464/1003" severity error;
    assert Qn = '0' report "Error in test case #464/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #465/1003" severity error;
    assert Qn = '0' report "Error in test case #465/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #466/1003" severity error;
    assert Qn = '0' report "Error in test case #466/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #467/1003" severity error;
    assert Qn = '0' report "Error in test case #467/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #468/1003" severity error;
    assert Qn = '0' report "Error in test case #468/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #469/1003" severity error;
    assert Qn = '0' report "Error in test case #469/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #470/1003" severity error;
    assert Qn = '0' report "Error in test case #470/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #471/1003" severity error;
    assert Qn = '0' report "Error in test case #471/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #472/1003" severity error;
    assert Qn = '0' report "Error in test case #472/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #473/1003" severity error;
    assert Qn = '0' report "Error in test case #473/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #474/1003" severity error;
    assert Qn = '0' report "Error in test case #474/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #475/1003" severity error;
    assert Qn = '0' report "Error in test case #475/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #476/1003" severity error;
    assert Qn = '0' report "Error in test case #476/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #477/1003" severity error;
    assert Qn = '0' report "Error in test case #477/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #478/1003" severity error;
    assert Qn = '0' report "Error in test case #478/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #479/1003" severity error;
    assert Qn = '0' report "Error in test case #479/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #480/1003" severity error;
    assert Qn = '0' report "Error in test case #480/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #481/1003" severity error;
    assert Qn = '0' report "Error in test case #481/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #482/1003" severity error;
    assert Qn = '0' report "Error in test case #482/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #483/1003" severity error;
    assert Qn = '0' report "Error in test case #483/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #484/1003" severity error;
    assert Qn = '0' report "Error in test case #484/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #485/1003" severity error;
    assert Qn = '0' report "Error in test case #485/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #486/1003" severity error;
    assert Qn = '0' report "Error in test case #486/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #487/1003" severity error;
    assert Qn = '0' report "Error in test case #487/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #488/1003" severity error;
    assert Qn = '1' report "Error in test case #488/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #489/1003" severity error;
    assert Qn = '1' report "Error in test case #489/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #490/1003" severity error;
    assert Qn = '1' report "Error in test case #490/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #491/1003" severity error;
    assert Qn = '1' report "Error in test case #491/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #492/1003" severity error;
    assert Qn = '1' report "Error in test case #492/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #493/1003" severity error;
    assert Qn = '1' report "Error in test case #493/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #494/1003" severity error;
    assert Qn = '1' report "Error in test case #494/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #495/1003" severity error;
    assert Qn = '1' report "Error in test case #495/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #496/1003" severity error;
    assert Qn = '1' report "Error in test case #496/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #497/1003" severity error;
    assert Qn = '1' report "Error in test case #497/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #498/1003" severity error;
    assert Qn = '1' report "Error in test case #498/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #499/1003" severity error;
    assert Qn = '1' report "Error in test case #499/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #500/1003" severity error;
    assert Qn = '1' report "Error in test case #500/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #501/1003" severity error;
    assert Qn = '1' report "Error in test case #501/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #502/1003" severity error;
    assert Qn = '1' report "Error in test case #502/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #503/1003" severity error;
    assert Qn = '1' report "Error in test case #503/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #504/1003" severity error;
    assert Qn = '0' report "Error in test case #504/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #505/1003" severity error;
    assert Qn = '0' report "Error in test case #505/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #506/1003" severity error;
    assert Qn = '0' report "Error in test case #506/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #507/1003" severity error;
    assert Qn = '0' report "Error in test case #507/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #508/1003" severity error;
    assert Qn = '0' report "Error in test case #508/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #509/1003" severity error;
    assert Qn = '0' report "Error in test case #509/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #510/1003" severity error;
    assert Qn = '0' report "Error in test case #510/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #511/1003" severity error;
    assert Qn = '0' report "Error in test case #511/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #512/1003" severity error;
    assert Qn = '1' report "Error in test case #512/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #513/1003" severity error;
    assert Qn = '1' report "Error in test case #513/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #514/1003" severity error;
    assert Qn = '1' report "Error in test case #514/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #515/1003" severity error;
    assert Qn = '1' report "Error in test case #515/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #516/1003" severity error;
    assert Qn = '1' report "Error in test case #516/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #517/1003" severity error;
    assert Qn = '1' report "Error in test case #517/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #518/1003" severity error;
    assert Qn = '1' report "Error in test case #518/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #519/1003" severity error;
    assert Qn = '1' report "Error in test case #519/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #520/1003" severity error;
    assert Qn = '1' report "Error in test case #520/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #521/1003" severity error;
    assert Qn = '1' report "Error in test case #521/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #522/1003" severity error;
    assert Qn = '1' report "Error in test case #522/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #523/1003" severity error;
    assert Qn = '1' report "Error in test case #523/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #524/1003" severity error;
    assert Qn = '1' report "Error in test case #524/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #525/1003" severity error;
    assert Qn = '1' report "Error in test case #525/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #526/1003" severity error;
    assert Qn = '1' report "Error in test case #526/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #527/1003" severity error;
    assert Qn = '1' report "Error in test case #527/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #528/1003" severity error;
    assert Qn = '0' report "Error in test case #528/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #529/1003" severity error;
    assert Qn = '0' report "Error in test case #529/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #530/1003" severity error;
    assert Qn = '0' report "Error in test case #530/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #531/1003" severity error;
    assert Qn = '0' report "Error in test case #531/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #532/1003" severity error;
    assert Qn = '0' report "Error in test case #532/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #533/1003" severity error;
    assert Qn = '0' report "Error in test case #533/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #534/1003" severity error;
    assert Qn = '0' report "Error in test case #534/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #535/1003" severity error;
    assert Qn = '0' report "Error in test case #535/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #536/1003" severity error;
    assert Qn = '0' report "Error in test case #536/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #537/1003" severity error;
    assert Qn = '0' report "Error in test case #537/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #538/1003" severity error;
    assert Qn = '0' report "Error in test case #538/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #539/1003" severity error;
    assert Qn = '0' report "Error in test case #539/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #540/1003" severity error;
    assert Qn = '0' report "Error in test case #540/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #541/1003" severity error;
    assert Qn = '0' report "Error in test case #541/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #542/1003" severity error;
    assert Qn = '0' report "Error in test case #542/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #543/1003" severity error;
    assert Qn = '0' report "Error in test case #543/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #544/1003" severity error;
    assert Qn = '1' report "Error in test case #544/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #545/1003" severity error;
    assert Qn = '1' report "Error in test case #545/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #546/1003" severity error;
    assert Qn = '1' report "Error in test case #546/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #547/1003" severity error;
    assert Qn = '1' report "Error in test case #547/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #548/1003" severity error;
    assert Qn = '1' report "Error in test case #548/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #549/1003" severity error;
    assert Qn = '1' report "Error in test case #549/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #550/1003" severity error;
    assert Qn = '1' report "Error in test case #550/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #551/1003" severity error;
    assert Qn = '1' report "Error in test case #551/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #552/1003" severity error;
    assert Qn = '1' report "Error in test case #552/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #553/1003" severity error;
    assert Qn = '1' report "Error in test case #553/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #554/1003" severity error;
    assert Qn = '1' report "Error in test case #554/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #555/1003" severity error;
    assert Qn = '1' report "Error in test case #555/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #556/1003" severity error;
    assert Qn = '1' report "Error in test case #556/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #557/1003" severity error;
    assert Qn = '1' report "Error in test case #557/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #558/1003" severity error;
    assert Qn = '1' report "Error in test case #558/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #559/1003" severity error;
    assert Qn = '1' report "Error in test case #559/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #560/1003" severity error;
    assert Qn = '1' report "Error in test case #560/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #561/1003" severity error;
    assert Qn = '1' report "Error in test case #561/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #562/1003" severity error;
    assert Qn = '1' report "Error in test case #562/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #563/1003" severity error;
    assert Qn = '1' report "Error in test case #563/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #564/1003" severity error;
    assert Qn = '1' report "Error in test case #564/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #565/1003" severity error;
    assert Qn = '1' report "Error in test case #565/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #566/1003" severity error;
    assert Qn = '1' report "Error in test case #566/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #567/1003" severity error;
    assert Qn = '1' report "Error in test case #567/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #568/1003" severity error;
    assert Qn = '1' report "Error in test case #568/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #569/1003" severity error;
    assert Qn = '1' report "Error in test case #569/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #570/1003" severity error;
    assert Qn = '1' report "Error in test case #570/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #571/1003" severity error;
    assert Qn = '1' report "Error in test case #571/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #572/1003" severity error;
    assert Qn = '1' report "Error in test case #572/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #573/1003" severity error;
    assert Qn = '1' report "Error in test case #573/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #574/1003" severity error;
    assert Qn = '1' report "Error in test case #574/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #575/1003" severity error;
    assert Qn = '1' report "Error in test case #575/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #576/1003" severity error;
    assert Qn = '1' report "Error in test case #576/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #577/1003" severity error;
    assert Qn = '1' report "Error in test case #577/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #578/1003" severity error;
    assert Qn = '1' report "Error in test case #578/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #579/1003" severity error;
    assert Qn = '1' report "Error in test case #579/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #580/1003" severity error;
    assert Qn = '1' report "Error in test case #580/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #581/1003" severity error;
    assert Qn = '1' report "Error in test case #581/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #582/1003" severity error;
    assert Qn = '1' report "Error in test case #582/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #583/1003" severity error;
    assert Qn = '1' report "Error in test case #583/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #584/1003" severity error;
    assert Qn = '1' report "Error in test case #584/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #585/1003" severity error;
    assert Qn = '1' report "Error in test case #585/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #586/1003" severity error;
    assert Qn = '1' report "Error in test case #586/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #587/1003" severity error;
    assert Qn = '1' report "Error in test case #587/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #588/1003" severity error;
    assert Qn = '1' report "Error in test case #588/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #589/1003" severity error;
    assert Qn = '1' report "Error in test case #589/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #590/1003" severity error;
    assert Qn = '1' report "Error in test case #590/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #591/1003" severity error;
    assert Qn = '1' report "Error in test case #591/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #592/1003" severity error;
    assert Qn = '1' report "Error in test case #592/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #593/1003" severity error;
    assert Qn = '1' report "Error in test case #593/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #594/1003" severity error;
    assert Qn = '1' report "Error in test case #594/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #595/1003" severity error;
    assert Qn = '1' report "Error in test case #595/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #596/1003" severity error;
    assert Qn = '1' report "Error in test case #596/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #597/1003" severity error;
    assert Qn = '1' report "Error in test case #597/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #598/1003" severity error;
    assert Qn = '1' report "Error in test case #598/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #599/1003" severity error;
    assert Qn = '1' report "Error in test case #599/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #600/1003" severity error;
    assert Qn = '0' report "Error in test case #600/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #601/1003" severity error;
    assert Qn = '0' report "Error in test case #601/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #602/1003" severity error;
    assert Qn = '0' report "Error in test case #602/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #603/1003" severity error;
    assert Qn = '0' report "Error in test case #603/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #604/1003" severity error;
    assert Qn = '0' report "Error in test case #604/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #605/1003" severity error;
    assert Qn = '0' report "Error in test case #605/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #606/1003" severity error;
    assert Qn = '0' report "Error in test case #606/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #607/1003" severity error;
    assert Qn = '0' report "Error in test case #607/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #608/1003" severity error;
    assert Qn = '0' report "Error in test case #608/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #609/1003" severity error;
    assert Qn = '0' report "Error in test case #609/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #610/1003" severity error;
    assert Qn = '0' report "Error in test case #610/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #611/1003" severity error;
    assert Qn = '0' report "Error in test case #611/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #612/1003" severity error;
    assert Qn = '0' report "Error in test case #612/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #613/1003" severity error;
    assert Qn = '0' report "Error in test case #613/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #614/1003" severity error;
    assert Qn = '0' report "Error in test case #614/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #615/1003" severity error;
    assert Qn = '0' report "Error in test case #615/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #616/1003" severity error;
    assert Qn = '1' report "Error in test case #616/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #617/1003" severity error;
    assert Qn = '1' report "Error in test case #617/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #618/1003" severity error;
    assert Qn = '1' report "Error in test case #618/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #619/1003" severity error;
    assert Qn = '1' report "Error in test case #619/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #620/1003" severity error;
    assert Qn = '1' report "Error in test case #620/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #621/1003" severity error;
    assert Qn = '1' report "Error in test case #621/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #622/1003" severity error;
    assert Qn = '1' report "Error in test case #622/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #623/1003" severity error;
    assert Qn = '1' report "Error in test case #623/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #624/1003" severity error;
    assert Qn = '1' report "Error in test case #624/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #625/1003" severity error;
    assert Qn = '1' report "Error in test case #625/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #626/1003" severity error;
    assert Qn = '1' report "Error in test case #626/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #627/1003" severity error;
    assert Qn = '1' report "Error in test case #627/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #628/1003" severity error;
    assert Qn = '1' report "Error in test case #628/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #629/1003" severity error;
    assert Qn = '1' report "Error in test case #629/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #630/1003" severity error;
    assert Qn = '1' report "Error in test case #630/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #631/1003" severity error;
    assert Qn = '1' report "Error in test case #631/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #632/1003" severity error;
    assert Qn = '1' report "Error in test case #632/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #633/1003" severity error;
    assert Qn = '1' report "Error in test case #633/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #634/1003" severity error;
    assert Qn = '1' report "Error in test case #634/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #635/1003" severity error;
    assert Qn = '1' report "Error in test case #635/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #636/1003" severity error;
    assert Qn = '1' report "Error in test case #636/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #637/1003" severity error;
    assert Qn = '1' report "Error in test case #637/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #638/1003" severity error;
    assert Qn = '1' report "Error in test case #638/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #639/1003" severity error;
    assert Qn = '1' report "Error in test case #639/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #640/1003" severity error;
    assert Qn = '1' report "Error in test case #640/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #641/1003" severity error;
    assert Qn = '1' report "Error in test case #641/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #642/1003" severity error;
    assert Qn = '1' report "Error in test case #642/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #643/1003" severity error;
    assert Qn = '1' report "Error in test case #643/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #644/1003" severity error;
    assert Qn = '1' report "Error in test case #644/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #645/1003" severity error;
    assert Qn = '1' report "Error in test case #645/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #646/1003" severity error;
    assert Qn = '1' report "Error in test case #646/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #647/1003" severity error;
    assert Qn = '1' report "Error in test case #647/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #648/1003" severity error;
    assert Qn = '1' report "Error in test case #648/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #649/1003" severity error;
    assert Qn = '1' report "Error in test case #649/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #650/1003" severity error;
    assert Qn = '1' report "Error in test case #650/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #651/1003" severity error;
    assert Qn = '1' report "Error in test case #651/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #652/1003" severity error;
    assert Qn = '1' report "Error in test case #652/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #653/1003" severity error;
    assert Qn = '1' report "Error in test case #653/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #654/1003" severity error;
    assert Qn = '1' report "Error in test case #654/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #655/1003" severity error;
    assert Qn = '1' report "Error in test case #655/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #656/1003" severity error;
    assert Qn = '0' report "Error in test case #656/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #657/1003" severity error;
    assert Qn = '0' report "Error in test case #657/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #658/1003" severity error;
    assert Qn = '0' report "Error in test case #658/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #659/1003" severity error;
    assert Qn = '0' report "Error in test case #659/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #660/1003" severity error;
    assert Qn = '0' report "Error in test case #660/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #661/1003" severity error;
    assert Qn = '0' report "Error in test case #661/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #662/1003" severity error;
    assert Qn = '0' report "Error in test case #662/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #663/1003" severity error;
    assert Qn = '0' report "Error in test case #663/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #664/1003" severity error;
    assert Qn = '0' report "Error in test case #664/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #665/1003" severity error;
    assert Qn = '0' report "Error in test case #665/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #666/1003" severity error;
    assert Qn = '0' report "Error in test case #666/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #667/1003" severity error;
    assert Qn = '0' report "Error in test case #667/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #668/1003" severity error;
    assert Qn = '0' report "Error in test case #668/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #669/1003" severity error;
    assert Qn = '0' report "Error in test case #669/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #670/1003" severity error;
    assert Qn = '0' report "Error in test case #670/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #671/1003" severity error;
    assert Qn = '0' report "Error in test case #671/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #672/1003" severity error;
    assert Qn = '1' report "Error in test case #672/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #673/1003" severity error;
    assert Qn = '1' report "Error in test case #673/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #674/1003" severity error;
    assert Qn = '1' report "Error in test case #674/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #675/1003" severity error;
    assert Qn = '1' report "Error in test case #675/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #676/1003" severity error;
    assert Qn = '1' report "Error in test case #676/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #677/1003" severity error;
    assert Qn = '1' report "Error in test case #677/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #678/1003" severity error;
    assert Qn = '1' report "Error in test case #678/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #679/1003" severity error;
    assert Qn = '1' report "Error in test case #679/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #680/1003" severity error;
    assert Qn = '1' report "Error in test case #680/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #681/1003" severity error;
    assert Qn = '1' report "Error in test case #681/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #682/1003" severity error;
    assert Qn = '1' report "Error in test case #682/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #683/1003" severity error;
    assert Qn = '1' report "Error in test case #683/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #684/1003" severity error;
    assert Qn = '1' report "Error in test case #684/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #685/1003" severity error;
    assert Qn = '1' report "Error in test case #685/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #686/1003" severity error;
    assert Qn = '1' report "Error in test case #686/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #687/1003" severity error;
    assert Qn = '1' report "Error in test case #687/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #688/1003" severity error;
    assert Qn = '1' report "Error in test case #688/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #689/1003" severity error;
    assert Qn = '1' report "Error in test case #689/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #690/1003" severity error;
    assert Qn = '1' report "Error in test case #690/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #691/1003" severity error;
    assert Qn = '1' report "Error in test case #691/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #692/1003" severity error;
    assert Qn = '1' report "Error in test case #692/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #693/1003" severity error;
    assert Qn = '1' report "Error in test case #693/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #694/1003" severity error;
    assert Qn = '1' report "Error in test case #694/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #695/1003" severity error;
    assert Qn = '1' report "Error in test case #695/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #696/1003" severity error;
    assert Qn = '1' report "Error in test case #696/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #697/1003" severity error;
    assert Qn = '1' report "Error in test case #697/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #698/1003" severity error;
    assert Qn = '1' report "Error in test case #698/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #699/1003" severity error;
    assert Qn = '1' report "Error in test case #699/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #700/1003" severity error;
    assert Qn = '1' report "Error in test case #700/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #701/1003" severity error;
    assert Qn = '1' report "Error in test case #701/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #702/1003" severity error;
    assert Qn = '1' report "Error in test case #702/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #703/1003" severity error;
    assert Qn = '1' report "Error in test case #703/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #704/1003" severity error;
    assert Qn = '1' report "Error in test case #704/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #705/1003" severity error;
    assert Qn = '1' report "Error in test case #705/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #706/1003" severity error;
    assert Qn = '1' report "Error in test case #706/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #707/1003" severity error;
    assert Qn = '1' report "Error in test case #707/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #708/1003" severity error;
    assert Qn = '1' report "Error in test case #708/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #709/1003" severity error;
    assert Qn = '1' report "Error in test case #709/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #710/1003" severity error;
    assert Qn = '1' report "Error in test case #710/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #711/1003" severity error;
    assert Qn = '1' report "Error in test case #711/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #712/1003" severity error;
    assert Qn = '1' report "Error in test case #712/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #713/1003" severity error;
    assert Qn = '1' report "Error in test case #713/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #714/1003" severity error;
    assert Qn = '1' report "Error in test case #714/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #715/1003" severity error;
    assert Qn = '1' report "Error in test case #715/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #716/1003" severity error;
    assert Qn = '1' report "Error in test case #716/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #717/1003" severity error;
    assert Qn = '1' report "Error in test case #717/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #718/1003" severity error;
    assert Qn = '1' report "Error in test case #718/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #719/1003" severity error;
    assert Qn = '1' report "Error in test case #719/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #720/1003" severity error;
    assert Qn = '0' report "Error in test case #720/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #721/1003" severity error;
    assert Qn = '0' report "Error in test case #721/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #722/1003" severity error;
    assert Qn = '0' report "Error in test case #722/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #723/1003" severity error;
    assert Qn = '0' report "Error in test case #723/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #724/1003" severity error;
    assert Qn = '0' report "Error in test case #724/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #725/1003" severity error;
    assert Qn = '0' report "Error in test case #725/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #726/1003" severity error;
    assert Qn = '0' report "Error in test case #726/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #727/1003" severity error;
    assert Qn = '0' report "Error in test case #727/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #728/1003" severity error;
    assert Qn = '1' report "Error in test case #728/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #729/1003" severity error;
    assert Qn = '1' report "Error in test case #729/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #730/1003" severity error;
    assert Qn = '1' report "Error in test case #730/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #731/1003" severity error;
    assert Qn = '1' report "Error in test case #731/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #732/1003" severity error;
    assert Qn = '1' report "Error in test case #732/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #733/1003" severity error;
    assert Qn = '1' report "Error in test case #733/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #734/1003" severity error;
    assert Qn = '1' report "Error in test case #734/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #735/1003" severity error;
    assert Qn = '1' report "Error in test case #735/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #736/1003" severity error;
    assert Qn = '0' report "Error in test case #736/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #737/1003" severity error;
    assert Qn = '0' report "Error in test case #737/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #738/1003" severity error;
    assert Qn = '0' report "Error in test case #738/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #739/1003" severity error;
    assert Qn = '0' report "Error in test case #739/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #740/1003" severity error;
    assert Qn = '0' report "Error in test case #740/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #741/1003" severity error;
    assert Qn = '0' report "Error in test case #741/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #742/1003" severity error;
    assert Qn = '0' report "Error in test case #742/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #743/1003" severity error;
    assert Qn = '0' report "Error in test case #743/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #744/1003" severity error;
    assert Qn = '0' report "Error in test case #744/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #745/1003" severity error;
    assert Qn = '0' report "Error in test case #745/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #746/1003" severity error;
    assert Qn = '0' report "Error in test case #746/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #747/1003" severity error;
    assert Qn = '0' report "Error in test case #747/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #748/1003" severity error;
    assert Qn = '0' report "Error in test case #748/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #749/1003" severity error;
    assert Qn = '0' report "Error in test case #749/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #750/1003" severity error;
    assert Qn = '0' report "Error in test case #750/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #751/1003" severity error;
    assert Qn = '0' report "Error in test case #751/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #752/1003" severity error;
    assert Qn = '0' report "Error in test case #752/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #753/1003" severity error;
    assert Qn = '0' report "Error in test case #753/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #754/1003" severity error;
    assert Qn = '0' report "Error in test case #754/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #755/1003" severity error;
    assert Qn = '0' report "Error in test case #755/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #756/1003" severity error;
    assert Qn = '0' report "Error in test case #756/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #757/1003" severity error;
    assert Qn = '0' report "Error in test case #757/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #758/1003" severity error;
    assert Qn = '0' report "Error in test case #758/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #759/1003" severity error;
    assert Qn = '0' report "Error in test case #759/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #760/1003" severity error;
    assert Qn = '1' report "Error in test case #760/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #761/1003" severity error;
    assert Qn = '1' report "Error in test case #761/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #762/1003" severity error;
    assert Qn = '1' report "Error in test case #762/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #763/1003" severity error;
    assert Qn = '1' report "Error in test case #763/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #764/1003" severity error;
    assert Qn = '1' report "Error in test case #764/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #765/1003" severity error;
    assert Qn = '1' report "Error in test case #765/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #766/1003" severity error;
    assert Qn = '1' report "Error in test case #766/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #767/1003" severity error;
    assert Qn = '1' report "Error in test case #767/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #768/1003" severity error;
    assert Qn = '0' report "Error in test case #768/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #769/1003" severity error;
    assert Qn = '0' report "Error in test case #769/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #770/1003" severity error;
    assert Qn = '0' report "Error in test case #770/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #771/1003" severity error;
    assert Qn = '0' report "Error in test case #771/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #772/1003" severity error;
    assert Qn = '0' report "Error in test case #772/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #773/1003" severity error;
    assert Qn = '0' report "Error in test case #773/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #774/1003" severity error;
    assert Qn = '0' report "Error in test case #774/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #775/1003" severity error;
    assert Qn = '0' report "Error in test case #775/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #776/1003" severity error;
    assert Qn = '0' report "Error in test case #776/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #777/1003" severity error;
    assert Qn = '0' report "Error in test case #777/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #778/1003" severity error;
    assert Qn = '0' report "Error in test case #778/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #779/1003" severity error;
    assert Qn = '0' report "Error in test case #779/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #780/1003" severity error;
    assert Qn = '0' report "Error in test case #780/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #781/1003" severity error;
    assert Qn = '0' report "Error in test case #781/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #782/1003" severity error;
    assert Qn = '0' report "Error in test case #782/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #783/1003" severity error;
    assert Qn = '0' report "Error in test case #783/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #784/1003" severity error;
    assert Qn = '0' report "Error in test case #784/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #785/1003" severity error;
    assert Qn = '0' report "Error in test case #785/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #786/1003" severity error;
    assert Qn = '0' report "Error in test case #786/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #787/1003" severity error;
    assert Qn = '0' report "Error in test case #787/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #788/1003" severity error;
    assert Qn = '0' report "Error in test case #788/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #789/1003" severity error;
    assert Qn = '0' report "Error in test case #789/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #790/1003" severity error;
    assert Qn = '0' report "Error in test case #790/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #791/1003" severity error;
    assert Qn = '0' report "Error in test case #791/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #792/1003" severity error;
    assert Qn = '1' report "Error in test case #792/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #793/1003" severity error;
    assert Qn = '1' report "Error in test case #793/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #794/1003" severity error;
    assert Qn = '1' report "Error in test case #794/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #795/1003" severity error;
    assert Qn = '1' report "Error in test case #795/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #796/1003" severity error;
    assert Qn = '1' report "Error in test case #796/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #797/1003" severity error;
    assert Qn = '1' report "Error in test case #797/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #798/1003" severity error;
    assert Qn = '1' report "Error in test case #798/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #799/1003" severity error;
    assert Qn = '1' report "Error in test case #799/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #800/1003" severity error;
    assert Qn = '1' report "Error in test case #800/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #801/1003" severity error;
    assert Qn = '1' report "Error in test case #801/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #802/1003" severity error;
    assert Qn = '1' report "Error in test case #802/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #803/1003" severity error;
    assert Qn = '1' report "Error in test case #803/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #804/1003" severity error;
    assert Qn = '1' report "Error in test case #804/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #805/1003" severity error;
    assert Qn = '1' report "Error in test case #805/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #806/1003" severity error;
    assert Qn = '1' report "Error in test case #806/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #807/1003" severity error;
    assert Qn = '1' report "Error in test case #807/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #808/1003" severity error;
    assert Qn = '1' report "Error in test case #808/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #809/1003" severity error;
    assert Qn = '1' report "Error in test case #809/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #810/1003" severity error;
    assert Qn = '1' report "Error in test case #810/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #811/1003" severity error;
    assert Qn = '1' report "Error in test case #811/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #812/1003" severity error;
    assert Qn = '1' report "Error in test case #812/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #813/1003" severity error;
    assert Qn = '1' report "Error in test case #813/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #814/1003" severity error;
    assert Qn = '1' report "Error in test case #814/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #815/1003" severity error;
    assert Qn = '1' report "Error in test case #815/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #816/1003" severity error;
    assert Qn = '0' report "Error in test case #816/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #817/1003" severity error;
    assert Qn = '0' report "Error in test case #817/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #818/1003" severity error;
    assert Qn = '0' report "Error in test case #818/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #819/1003" severity error;
    assert Qn = '0' report "Error in test case #819/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #820/1003" severity error;
    assert Qn = '0' report "Error in test case #820/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #821/1003" severity error;
    assert Qn = '0' report "Error in test case #821/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #822/1003" severity error;
    assert Qn = '0' report "Error in test case #822/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #823/1003" severity error;
    assert Qn = '0' report "Error in test case #823/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #824/1003" severity error;
    assert Qn = '0' report "Error in test case #824/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #825/1003" severity error;
    assert Qn = '0' report "Error in test case #825/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #826/1003" severity error;
    assert Qn = '0' report "Error in test case #826/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #827/1003" severity error;
    assert Qn = '0' report "Error in test case #827/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #828/1003" severity error;
    assert Qn = '0' report "Error in test case #828/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #829/1003" severity error;
    assert Qn = '0' report "Error in test case #829/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #830/1003" severity error;
    assert Qn = '0' report "Error in test case #830/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #831/1003" severity error;
    assert Qn = '0' report "Error in test case #831/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #832/1003" severity error;
    assert Qn = '1' report "Error in test case #832/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #833/1003" severity error;
    assert Qn = '1' report "Error in test case #833/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #834/1003" severity error;
    assert Qn = '1' report "Error in test case #834/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #835/1003" severity error;
    assert Qn = '1' report "Error in test case #835/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #836/1003" severity error;
    assert Qn = '1' report "Error in test case #836/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #837/1003" severity error;
    assert Qn = '1' report "Error in test case #837/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #838/1003" severity error;
    assert Qn = '1' report "Error in test case #838/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #839/1003" severity error;
    assert Qn = '1' report "Error in test case #839/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #840/1003" severity error;
    assert Qn = '1' report "Error in test case #840/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #841/1003" severity error;
    assert Qn = '1' report "Error in test case #841/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #842/1003" severity error;
    assert Qn = '1' report "Error in test case #842/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #843/1003" severity error;
    assert Qn = '1' report "Error in test case #843/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #844/1003" severity error;
    assert Qn = '1' report "Error in test case #844/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #845/1003" severity error;
    assert Qn = '1' report "Error in test case #845/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #846/1003" severity error;
    assert Qn = '1' report "Error in test case #846/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #847/1003" severity error;
    assert Qn = '1' report "Error in test case #847/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #848/1003" severity error;
    assert Qn = '0' report "Error in test case #848/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #849/1003" severity error;
    assert Qn = '0' report "Error in test case #849/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #850/1003" severity error;
    assert Qn = '0' report "Error in test case #850/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #851/1003" severity error;
    assert Qn = '0' report "Error in test case #851/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #852/1003" severity error;
    assert Qn = '0' report "Error in test case #852/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #853/1003" severity error;
    assert Qn = '0' report "Error in test case #853/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #854/1003" severity error;
    assert Qn = '0' report "Error in test case #854/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #855/1003" severity error;
    assert Qn = '0' report "Error in test case #855/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #856/1003" severity error;
    assert Qn = '0' report "Error in test case #856/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #857/1003" severity error;
    assert Qn = '0' report "Error in test case #857/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #858/1003" severity error;
    assert Qn = '0' report "Error in test case #858/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #859/1003" severity error;
    assert Qn = '0' report "Error in test case #859/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #860/1003" severity error;
    assert Qn = '0' report "Error in test case #860/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #861/1003" severity error;
    assert Qn = '0' report "Error in test case #861/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #862/1003" severity error;
    assert Qn = '0' report "Error in test case #862/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #863/1003" severity error;
    assert Qn = '0' report "Error in test case #863/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #864/1003" severity error;
    assert Qn = '0' report "Error in test case #864/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #865/1003" severity error;
    assert Qn = '0' report "Error in test case #865/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #866/1003" severity error;
    assert Qn = '0' report "Error in test case #866/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #867/1003" severity error;
    assert Qn = '0' report "Error in test case #867/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #868/1003" severity error;
    assert Qn = '0' report "Error in test case #868/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #869/1003" severity error;
    assert Qn = '0' report "Error in test case #869/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #870/1003" severity error;
    assert Qn = '0' report "Error in test case #870/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #871/1003" severity error;
    assert Qn = '0' report "Error in test case #871/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #872/1003" severity error;
    assert Qn = '0' report "Error in test case #872/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #873/1003" severity error;
    assert Qn = '0' report "Error in test case #873/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #874/1003" severity error;
    assert Qn = '0' report "Error in test case #874/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #875/1003" severity error;
    assert Qn = '0' report "Error in test case #875/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #876/1003" severity error;
    assert Qn = '0' report "Error in test case #876/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #877/1003" severity error;
    assert Qn = '0' report "Error in test case #877/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #878/1003" severity error;
    assert Qn = '0' report "Error in test case #878/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #879/1003" severity error;
    assert Qn = '0' report "Error in test case #879/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #880/1003" severity error;
    assert Qn = '0' report "Error in test case #880/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #881/1003" severity error;
    assert Qn = '0' report "Error in test case #881/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #882/1003" severity error;
    assert Qn = '0' report "Error in test case #882/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #883/1003" severity error;
    assert Qn = '0' report "Error in test case #883/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #884/1003" severity error;
    assert Qn = '0' report "Error in test case #884/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #885/1003" severity error;
    assert Qn = '0' report "Error in test case #885/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #886/1003" severity error;
    assert Qn = '0' report "Error in test case #886/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #887/1003" severity error;
    assert Qn = '0' report "Error in test case #887/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #888/1003" severity error;
    assert Qn = '1' report "Error in test case #888/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #889/1003" severity error;
    assert Qn = '1' report "Error in test case #889/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #890/1003" severity error;
    assert Qn = '1' report "Error in test case #890/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #891/1003" severity error;
    assert Qn = '1' report "Error in test case #891/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #892/1003" severity error;
    assert Qn = '1' report "Error in test case #892/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #893/1003" severity error;
    assert Qn = '1' report "Error in test case #893/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #894/1003" severity error;
    assert Qn = '1' report "Error in test case #894/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #895/1003" severity error;
    assert Qn = '1' report "Error in test case #895/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #896/1003" severity error;
    assert Qn = '1' report "Error in test case #896/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #897/1003" severity error;
    assert Qn = '1' report "Error in test case #897/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #898/1003" severity error;
    assert Qn = '1' report "Error in test case #898/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #899/1003" severity error;
    assert Qn = '1' report "Error in test case #899/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #900/1003" severity error;
    assert Qn = '1' report "Error in test case #900/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #901/1003" severity error;
    assert Qn = '1' report "Error in test case #901/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #902/1003" severity error;
    assert Qn = '1' report "Error in test case #902/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #903/1003" severity error;
    assert Qn = '1' report "Error in test case #903/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #904/1003" severity error;
    assert Qn = '1' report "Error in test case #904/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #905/1003" severity error;
    assert Qn = '1' report "Error in test case #905/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #906/1003" severity error;
    assert Qn = '1' report "Error in test case #906/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #907/1003" severity error;
    assert Qn = '1' report "Error in test case #907/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #908/1003" severity error;
    assert Qn = '1' report "Error in test case #908/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #909/1003" severity error;
    assert Qn = '1' report "Error in test case #909/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #910/1003" severity error;
    assert Qn = '1' report "Error in test case #910/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #911/1003" severity error;
    assert Qn = '1' report "Error in test case #911/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #912/1003" severity error;
    assert Qn = '0' report "Error in test case #912/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #913/1003" severity error;
    assert Qn = '0' report "Error in test case #913/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #914/1003" severity error;
    assert Qn = '0' report "Error in test case #914/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #915/1003" severity error;
    assert Qn = '0' report "Error in test case #915/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #916/1003" severity error;
    assert Qn = '0' report "Error in test case #916/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #917/1003" severity error;
    assert Qn = '0' report "Error in test case #917/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #918/1003" severity error;
    assert Qn = '0' report "Error in test case #918/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #919/1003" severity error;
    assert Qn = '0' report "Error in test case #919/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #920/1003" severity error;
    assert Qn = '0' report "Error in test case #920/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #921/1003" severity error;
    assert Qn = '0' report "Error in test case #921/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #922/1003" severity error;
    assert Qn = '0' report "Error in test case #922/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #923/1003" severity error;
    assert Qn = '0' report "Error in test case #923/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #924/1003" severity error;
    assert Qn = '0' report "Error in test case #924/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #925/1003" severity error;
    assert Qn = '0' report "Error in test case #925/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #926/1003" severity error;
    assert Qn = '0' report "Error in test case #926/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #927/1003" severity error;
    assert Qn = '0' report "Error in test case #927/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #928/1003" severity error;
    assert Qn = '1' report "Error in test case #928/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #929/1003" severity error;
    assert Qn = '1' report "Error in test case #929/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #930/1003" severity error;
    assert Qn = '1' report "Error in test case #930/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #931/1003" severity error;
    assert Qn = '1' report "Error in test case #931/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #932/1003" severity error;
    assert Qn = '1' report "Error in test case #932/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #933/1003" severity error;
    assert Qn = '1' report "Error in test case #933/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #934/1003" severity error;
    assert Qn = '1' report "Error in test case #934/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #935/1003" severity error;
    assert Qn = '1' report "Error in test case #935/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #936/1003" severity error;
    assert Qn = '1' report "Error in test case #936/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #937/1003" severity error;
    assert Qn = '1' report "Error in test case #937/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #938/1003" severity error;
    assert Qn = '1' report "Error in test case #938/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #939/1003" severity error;
    assert Qn = '1' report "Error in test case #939/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #940/1003" severity error;
    assert Qn = '1' report "Error in test case #940/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #941/1003" severity error;
    assert Qn = '1' report "Error in test case #941/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #942/1003" severity error;
    assert Qn = '1' report "Error in test case #942/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #943/1003" severity error;
    assert Qn = '1' report "Error in test case #943/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #944/1003" severity error;
    assert Qn = '1' report "Error in test case #944/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #945/1003" severity error;
    assert Qn = '1' report "Error in test case #945/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #946/1003" severity error;
    assert Qn = '1' report "Error in test case #946/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #947/1003" severity error;
    assert Qn = '1' report "Error in test case #947/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #948/1003" severity error;
    assert Qn = '1' report "Error in test case #948/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #949/1003" severity error;
    assert Qn = '1' report "Error in test case #949/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #950/1003" severity error;
    assert Qn = '1' report "Error in test case #950/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #951/1003" severity error;
    assert Qn = '1' report "Error in test case #951/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #952/1003" severity error;
    assert Qn = '1' report "Error in test case #952/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #953/1003" severity error;
    assert Qn = '1' report "Error in test case #953/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #954/1003" severity error;
    assert Qn = '1' report "Error in test case #954/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #955/1003" severity error;
    assert Qn = '1' report "Error in test case #955/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #956/1003" severity error;
    assert Qn = '1' report "Error in test case #956/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #957/1003" severity error;
    assert Qn = '1' report "Error in test case #957/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #958/1003" severity error;
    assert Qn = '1' report "Error in test case #958/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #959/1003" severity error;
    assert Qn = '1' report "Error in test case #959/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #960/1003" severity error;
    assert Qn = '1' report "Error in test case #960/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #961/1003" severity error;
    assert Qn = '1' report "Error in test case #961/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #962/1003" severity error;
    assert Qn = '1' report "Error in test case #962/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #963/1003" severity error;
    assert Qn = '1' report "Error in test case #963/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #964/1003" severity error;
    assert Qn = '1' report "Error in test case #964/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #965/1003" severity error;
    assert Qn = '1' report "Error in test case #965/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #966/1003" severity error;
    assert Qn = '1' report "Error in test case #966/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #967/1003" severity error;
    assert Qn = '1' report "Error in test case #967/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #968/1003" severity error;
    assert Qn = '1' report "Error in test case #968/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #969/1003" severity error;
    assert Qn = '1' report "Error in test case #969/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #970/1003" severity error;
    assert Qn = '1' report "Error in test case #970/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #971/1003" severity error;
    assert Qn = '1' report "Error in test case #971/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #972/1003" severity error;
    assert Qn = '1' report "Error in test case #972/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #973/1003" severity error;
    assert Qn = '1' report "Error in test case #973/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #974/1003" severity error;
    assert Qn = '1' report "Error in test case #974/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #975/1003" severity error;
    assert Qn = '1' report "Error in test case #975/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #976/1003" severity error;
    assert Qn = '0' report "Error in test case #976/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #977/1003" severity error;
    assert Qn = '0' report "Error in test case #977/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #978/1003" severity error;
    assert Qn = '0' report "Error in test case #978/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #979/1003" severity error;
    assert Qn = '0' report "Error in test case #979/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #980/1003" severity error;
    assert Qn = '0' report "Error in test case #980/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #981/1003" severity error;
    assert Qn = '0' report "Error in test case #981/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #982/1003" severity error;
    assert Qn = '0' report "Error in test case #982/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #983/1003" severity error;
    assert Qn = '0' report "Error in test case #983/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #984/1003" severity error;
    assert Qn = '1' report "Error in test case #984/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #985/1003" severity error;
    assert Qn = '1' report "Error in test case #985/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #986/1003" severity error;
    assert Qn = '1' report "Error in test case #986/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #987/1003" severity error;
    assert Qn = '1' report "Error in test case #987/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #988/1003" severity error;
    assert Qn = '1' report "Error in test case #988/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #989/1003" severity error;
    assert Qn = '1' report "Error in test case #989/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #990/1003" severity error;
    assert Qn = '1' report "Error in test case #990/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #991/1003" severity error;
    assert Qn = '1' report "Error in test case #991/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #992/1003" severity error;
    assert Qn = '0' report "Error in test case #992/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #993/1003" severity error;
    assert Qn = '0' report "Error in test case #993/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '1' report "Error in test case #994/1003" severity error;
    assert Qn = '0' report "Error in test case #994/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #995/1003" severity error;
    assert Qn = '0' report "Error in test case #995/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #996/1003" severity error;
    assert Qn = '0' report "Error in test case #996/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #997/1003" severity error;
    assert Qn = '0' report "Error in test case #997/1003" severity error;

    CLK <= '0';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #998/1003" severity error;
    assert Qn = '0' report "Error in test case #998/1003" severity error;

    CLK <= '0';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '1' report "Error in test case #999/1003" severity error;
    assert Qn = '0' report "Error in test case #999/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #1000/1003" severity error;
    assert Qn = '1' report "Error in test case #1000/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '1';
    wait for 10ns;
    assert Q = '0' report "Error in test case #1001/1003" severity error;
    assert Qn = '1' report "Error in test case #1001/1003" severity error;

    CLK <= '1';
    J <= '1';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #1002/1003" severity error;
    assert Qn = '1' report "Error in test case #1002/1003" severity error;

    CLK <= '1';
    J <= '0';
    K <= '0';
    wait for 10ns;
    assert Q = '0' report "Error in test case #1003/1003" severity error;
    assert Qn = '1' report "Error in test case #1003/1003" severity error;

    wait;
end process;

end tb ;