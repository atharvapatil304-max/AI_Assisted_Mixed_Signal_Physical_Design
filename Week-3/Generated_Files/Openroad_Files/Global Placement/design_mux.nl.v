module design_mux (CSB,
    RST,
    SCK,
    SDI,
    out,
    select,
    trap,
    mask_rev_in);
 input CSB;
 input RST;
 input SCK;
 input SDI;
 output out;
 input select;
 input trap;
 input [3:0] mask_rev_in;

 wire I0;
 wire I1;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire irq;
 wire pll_bypass;
 wire pll_cp_ena;
 wire \pll_trim[0] ;
 wire \pll_trim[1] ;
 wire \pll_trim[2] ;
 wire \pll_trim[3] ;
 wire pll_vco_ena;
 wire \raven_spi.U1.addr[0] ;
 wire \raven_spi.U1.addr[1] ;
 wire \raven_spi.U1.addr[2] ;
 wire \raven_spi.U1.addr[3] ;
 wire \raven_spi.U1.addr[4] ;
 wire \raven_spi.U1.addr[5] ;
 wire \raven_spi.U1.addr[6] ;
 wire \raven_spi.U1.addr[7] ;
 wire \raven_spi.U1.count[0] ;
 wire \raven_spi.U1.count[1] ;
 wire \raven_spi.U1.count[2] ;
 wire \raven_spi.U1.fixed[0] ;
 wire \raven_spi.U1.fixed[1] ;
 wire \raven_spi.U1.fixed[2] ;
 wire \raven_spi.U1.ldata[0] ;
 wire \raven_spi.U1.ldata[1] ;
 wire \raven_spi.U1.ldata[2] ;
 wire \raven_spi.U1.ldata[3] ;
 wire \raven_spi.U1.ldata[4] ;
 wire \raven_spi.U1.ldata[5] ;
 wire \raven_spi.U1.ldata[6] ;
 wire \raven_spi.U1.odata[1] ;
 wire \raven_spi.U1.odata[2] ;
 wire \raven_spi.U1.odata[3] ;
 wire \raven_spi.U1.odata[4] ;
 wire \raven_spi.U1.odata[5] ;
 wire \raven_spi.U1.odata[6] ;
 wire \raven_spi.U1.odata[7] ;
 wire \raven_spi.U1.readmode ;
 wire \raven_spi.U1.state[0] ;
 wire \raven_spi.U1.state[1] ;
 wire \raven_spi.U1.state[2] ;
 wire \raven_spi.U1.writemode ;
 wire \raven_spi.U1.wrstb ;
 wire \raven_spi.reg_ena ;
 wire \raven_spi.xtal_ena ;

 AMUX2_3V AMUX2_3V (.select(select),
    .I0(I0),
    .out(out),
    .I1(I1));
 sky130_fd_sc_hd__inv_2 _201_ (.A(\pll_trim[0] ),
    .Y(_101_));
 sky130_fd_sc_hd__inv_2 _202_ (.A(\raven_spi.U1.count[0] ),
    .Y(_102_));
 sky130_fd_sc_hd__inv_2 _203_ (.A(CSB),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _204_ (.A(\raven_spi.U1.state[0] ),
    .Y(_103_));
 sky130_fd_sc_hd__inv_2 _205_ (.A(\raven_spi.U1.state[2] ),
    .Y(_104_));
 sky130_fd_sc_hd__inv_2 _206_ (.A(\raven_spi.U1.state[1] ),
    .Y(_105_));
 sky130_fd_sc_hd__inv_2 _207_ (.A(SCK),
    .Y(_007_));
 sky130_fd_sc_hd__inv_2 _208_ (.A(RST),
    .Y(_044_));
 sky130_fd_sc_hd__nand2_2 _209_ (.A(\raven_spi.U1.addr[1] ),
    .B(_104_),
    .Y(_106_));
 sky130_fd_sc_hd__mux2_1 _210_ (.A0(\raven_spi.U1.addr[1] ),
    .A1(\raven_spi.U1.addr[0] ),
    .S(\raven_spi.U1.state[2] ),
    .X(_107_));
 sky130_fd_sc_hd__nand2b_2 _211_ (.A_N(\raven_spi.U1.state[2] ),
    .B(\raven_spi.U1.addr[7] ),
    .Y(_108_));
 sky130_fd_sc_hd__and2_2 _212_ (.A(\raven_spi.U1.addr[3] ),
    .B(\raven_spi.U1.state[2] ),
    .X(_109_));
 sky130_fd_sc_hd__a211oi_2 _213_ (.A1(\raven_spi.U1.addr[3] ),
    .A2(\raven_spi.U1.state[2] ),
    .B1(\raven_spi.U1.addr[5] ),
    .C1(\raven_spi.U1.addr[4] ),
    .Y(_110_));
 sky130_fd_sc_hd__and4b_2 _214_ (.A_N(\raven_spi.U1.addr[6] ),
    .B(_107_),
    .C(_108_),
    .D(_110_),
    .X(_111_));
 sky130_fd_sc_hd__mux2_1 _215_ (.A0(\raven_spi.U1.addr[3] ),
    .A1(\raven_spi.U1.addr[2] ),
    .S(\raven_spi.U1.state[2] ),
    .X(_112_));
 sky130_fd_sc_hd__nand2_2 _216_ (.A(\raven_spi.U1.addr[2] ),
    .B(_104_),
    .Y(_113_));
 sky130_fd_sc_hd__mux2_1 _217_ (.A0(\raven_spi.U1.addr[2] ),
    .A1(\raven_spi.U1.addr[1] ),
    .S(\raven_spi.U1.state[2] ),
    .X(_114_));
 sky130_fd_sc_hd__and2_2 _218_ (.A(SDI),
    .B(\raven_spi.U1.state[2] ),
    .X(_115_));
 sky130_fd_sc_hd__mux2_1 _219_ (.A0(\raven_spi.U1.addr[0] ),
    .A1(SDI),
    .S(\raven_spi.U1.state[2] ),
    .X(_116_));
 sky130_fd_sc_hd__a21oi_2 _220_ (.A1(\raven_spi.U1.addr[0] ),
    .A2(_104_),
    .B1(_115_),
    .Y(_117_));
 sky130_fd_sc_hd__or3b_2 _221_ (.A(_116_),
    .B(_112_),
    .C_N(_114_),
    .X(_118_));
 sky130_fd_sc_hd__and4bb_2 _222_ (.A_N(_116_),
    .B_N(_112_),
    .C(_111_),
    .D(_114_),
    .X(_119_));
 sky130_fd_sc_hd__nand2_2 _223_ (.A(\raven_spi.U1.wrstb ),
    .B(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__mux2_1 _224_ (.A0(SDI),
    .A1(irq),
    .S(_120_),
    .X(_100_));
 sky130_fd_sc_hd__and4bb_2 _225_ (.A_N(\raven_spi.U1.addr[6] ),
    .B_N(_107_),
    .C(_108_),
    .D(_110_),
    .X(_121_));
 sky130_fd_sc_hd__and2b_2 _226_ (.A_N(_118_),
    .B(_121_),
    .X(_122_));
 sky130_fd_sc_hd__and2_2 _227_ (.A(\raven_spi.U1.wrstb ),
    .B(_122_),
    .X(_123_));
 sky130_fd_sc_hd__mux2_1 _228_ (.A0(pll_vco_ena),
    .A1(\raven_spi.U1.odata[2] ),
    .S(_123_),
    .X(_099_));
 sky130_fd_sc_hd__and3b_2 _229_ (.A_N(_112_),
    .B(_114_),
    .C(_116_),
    .X(_124_));
 sky130_fd_sc_hd__and2_2 _230_ (.A(_121_),
    .B(_124_),
    .X(_125_));
 sky130_fd_sc_hd__nand2_2 _231_ (.A(_121_),
    .B(_124_),
    .Y(_126_));
 sky130_fd_sc_hd__nand2_2 _232_ (.A(\raven_spi.U1.wrstb ),
    .B(_125_),
    .Y(_127_));
 sky130_fd_sc_hd__mux2_1 _233_ (.A0(SDI),
    .A1(pll_bypass),
    .S(_127_),
    .X(_098_));
 sky130_fd_sc_hd__mux2_1 _234_ (.A0(pll_cp_ena),
    .A1(\raven_spi.U1.odata[3] ),
    .S(_123_),
    .X(_097_));
 sky130_fd_sc_hd__mux2_1 _235_ (.A0(\raven_spi.xtal_ena ),
    .A1(SDI),
    .S(_123_),
    .X(_096_));
 sky130_fd_sc_hd__mux2_1 _236_ (.A0(\pll_trim[3] ),
    .A1(\raven_spi.U1.odata[7] ),
    .S(_123_),
    .X(_095_));
 sky130_fd_sc_hd__mux2_1 _237_ (.A0(\pll_trim[2] ),
    .A1(\raven_spi.U1.odata[6] ),
    .S(_123_),
    .X(_094_));
 sky130_fd_sc_hd__mux2_1 _238_ (.A0(\pll_trim[1] ),
    .A1(\raven_spi.U1.odata[5] ),
    .S(_123_),
    .X(_093_));
 sky130_fd_sc_hd__mux2_1 _239_ (.A0(\pll_trim[0] ),
    .A1(\raven_spi.U1.odata[4] ),
    .S(_123_),
    .X(_092_));
 sky130_fd_sc_hd__mux2_1 _240_ (.A0(\raven_spi.reg_ena ),
    .A1(\raven_spi.U1.odata[1] ),
    .S(_123_),
    .X(_091_));
 sky130_fd_sc_hd__nor2_2 _241_ (.A(\raven_spi.U1.state[0] ),
    .B(\raven_spi.U1.state[2] ),
    .Y(_128_));
 sky130_fd_sc_hd__nand2_2 _242_ (.A(_105_),
    .B(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__and3_2 _243_ (.A(\raven_spi.U1.count[1] ),
    .B(\raven_spi.U1.count[0] ),
    .C(_129_),
    .X(_130_));
 sky130_fd_sc_hd__xor2_2 _244_ (.A(\raven_spi.U1.count[2] ),
    .B(_130_),
    .X(_090_));
 sky130_fd_sc_hd__a21oi_2 _245_ (.A1(\raven_spi.U1.count[0] ),
    .A2(_129_),
    .B1(\raven_spi.U1.count[1] ),
    .Y(_131_));
 sky130_fd_sc_hd__nor2_2 _246_ (.A(_130_),
    .B(_131_),
    .Y(_089_));
 sky130_fd_sc_hd__xnor2_2 _247_ (.A(_102_),
    .B(_129_),
    .Y(_088_));
 sky130_fd_sc_hd__and3_2 _248_ (.A(\raven_spi.U1.wrstb ),
    .B(_111_),
    .C(_124_),
    .X(_132_));
 sky130_fd_sc_hd__mux2_1 _249_ (.A0(I1),
    .A1(SDI),
    .S(_132_),
    .X(_087_));
 sky130_fd_sc_hd__o21ai_2 _250_ (.A1(\raven_spi.U1.count[1] ),
    .A2(\raven_spi.U1.count[0] ),
    .B1(\raven_spi.U1.count[2] ),
    .Y(_133_));
 sky130_fd_sc_hd__and3_2 _251_ (.A(\raven_spi.U1.count[2] ),
    .B(\raven_spi.U1.count[1] ),
    .C(\raven_spi.U1.count[0] ),
    .X(_134_));
 sky130_fd_sc_hd__nand3_2 _252_ (.A(\raven_spi.U1.count[2] ),
    .B(\raven_spi.U1.count[1] ),
    .C(\raven_spi.U1.count[0] ),
    .Y(_135_));
 sky130_fd_sc_hd__or2_2 _253_ (.A(\raven_spi.U1.fixed[2] ),
    .B(\raven_spi.U1.fixed[1] ),
    .X(_136_));
 sky130_fd_sc_hd__a32o_2 _254_ (.A1(_128_),
    .A2(_134_),
    .A3(_136_),
    .B1(_133_),
    .B2(\raven_spi.U1.state[0] ),
    .X(_137_));
 sky130_fd_sc_hd__or3_2 _255_ (.A(\raven_spi.U1.count[2] ),
    .B(\raven_spi.U1.count[1] ),
    .C(_103_),
    .X(_138_));
 sky130_fd_sc_hd__nand3_2 _256_ (.A(_129_),
    .B(_137_),
    .C(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__nor2_2 _257_ (.A(_103_),
    .B(_139_),
    .Y(_140_));
 sky130_fd_sc_hd__nor2_2 _258_ (.A(\raven_spi.U1.fixed[0] ),
    .B(_139_),
    .Y(_141_));
 sky130_fd_sc_hd__nor2_2 _259_ (.A(_140_),
    .B(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__o22a_2 _260_ (.A1(\raven_spi.U1.fixed[2] ),
    .A2(_140_),
    .B1(_142_),
    .B2(\raven_spi.U1.fixed[1] ),
    .X(_086_));
 sky130_fd_sc_hd__nor2_2 _261_ (.A(\raven_spi.U1.fixed[1] ),
    .B(_140_),
    .Y(_143_));
 sky130_fd_sc_hd__xnor2_2 _262_ (.A(_141_),
    .B(_143_),
    .Y(_085_));
 sky130_fd_sc_hd__nor2_2 _263_ (.A(SDI),
    .B(_103_),
    .Y(_144_));
 sky130_fd_sc_hd__a2bb2o_2 _264_ (.A1_N(_142_),
    .A2_N(_144_),
    .B1(\raven_spi.U1.fixed[0] ),
    .B2(_139_),
    .X(_084_));
 sky130_fd_sc_hd__nor3_2 _265_ (.A(\raven_spi.U1.count[2] ),
    .B(\raven_spi.U1.count[1] ),
    .C(\raven_spi.U1.count[0] ),
    .Y(_145_));
 sky130_fd_sc_hd__or3_2 _266_ (.A(\raven_spi.U1.count[2] ),
    .B(\raven_spi.U1.count[1] ),
    .C(\raven_spi.U1.count[0] ),
    .X(_146_));
 sky130_fd_sc_hd__nand2_2 _267_ (.A(\raven_spi.U1.state[0] ),
    .B(_145_),
    .Y(_147_));
 sky130_fd_sc_hd__mux2_1 _268_ (.A0(SDI),
    .A1(\raven_spi.U1.writemode ),
    .S(_147_),
    .X(_083_));
 sky130_fd_sc_hd__nand2_2 _269_ (.A(\raven_spi.U1.state[1] ),
    .B(_128_),
    .Y(_148_));
 sky130_fd_sc_hd__mux2_1 _270_ (.A0(\raven_spi.U1.odata[6] ),
    .A1(\raven_spi.U1.odata[7] ),
    .S(_148_),
    .X(_082_));
 sky130_fd_sc_hd__mux2_1 _271_ (.A0(\raven_spi.U1.odata[5] ),
    .A1(\raven_spi.U1.odata[6] ),
    .S(_148_),
    .X(_081_));
 sky130_fd_sc_hd__mux2_1 _272_ (.A0(\raven_spi.U1.odata[4] ),
    .A1(\raven_spi.U1.odata[5] ),
    .S(_148_),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _273_ (.A0(\raven_spi.U1.odata[3] ),
    .A1(\raven_spi.U1.odata[4] ),
    .S(_148_),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _274_ (.A0(\raven_spi.U1.odata[2] ),
    .A1(\raven_spi.U1.odata[3] ),
    .S(_148_),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _275_ (.A0(\raven_spi.U1.odata[1] ),
    .A1(\raven_spi.U1.odata[2] ),
    .S(_148_),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _276_ (.A0(SDI),
    .A1(\raven_spi.U1.odata[1] ),
    .S(_148_),
    .X(_076_));
 sky130_fd_sc_hd__and2_2 _277_ (.A(\raven_spi.U1.readmode ),
    .B(\raven_spi.U1.state[1] ),
    .X(_149_));
 sky130_fd_sc_hd__nand2_2 _278_ (.A(\raven_spi.U1.readmode ),
    .B(\raven_spi.U1.state[1] ),
    .Y(_150_));
 sky130_fd_sc_hd__nor2_2 _279_ (.A(_112_),
    .B(_114_),
    .Y(_151_));
 sky130_fd_sc_hd__and3_2 _280_ (.A(_116_),
    .B(_121_),
    .C(_151_),
    .X(_152_));
 sky130_fd_sc_hd__inv_2 _281_ (.A(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__a221o_2 _282_ (.A1(\raven_spi.xtal_ena ),
    .A2(_122_),
    .B1(_152_),
    .B2(mask_rev_in[3]),
    .C1(_146_),
    .X(_154_));
 sky130_fd_sc_hd__o21a_2 _283_ (.A1(\raven_spi.U1.ldata[6] ),
    .A2(_145_),
    .B1(_149_),
    .X(_155_));
 sky130_fd_sc_hd__a22o_2 _284_ (.A1(I0),
    .A2(_150_),
    .B1(_154_),
    .B2(_155_),
    .X(_075_));
 sky130_fd_sc_hd__and2_2 _285_ (.A(_111_),
    .B(_151_),
    .X(_156_));
 sky130_fd_sc_hd__a221o_2 _286_ (.A1(\raven_spi.reg_ena ),
    .A2(_122_),
    .B1(_156_),
    .B2(_117_),
    .C1(_152_),
    .X(_157_));
 sky130_fd_sc_hd__o211a_2 _287_ (.A1(mask_rev_in[2]),
    .A2(_153_),
    .B1(_157_),
    .C1(_145_),
    .X(_158_));
 sky130_fd_sc_hd__a21o_2 _288_ (.A1(\raven_spi.U1.ldata[5] ),
    .A2(_146_),
    .B1(_150_),
    .X(_159_));
 sky130_fd_sc_hd__o22a_2 _289_ (.A1(\raven_spi.U1.ldata[6] ),
    .A2(_149_),
    .B1(_158_),
    .B2(_159_),
    .X(_074_));
 sky130_fd_sc_hd__a221o_2 _290_ (.A1(pll_vco_ena),
    .A2(_122_),
    .B1(_152_),
    .B2(mask_rev_in[1]),
    .C1(_146_),
    .X(_160_));
 sky130_fd_sc_hd__o21a_2 _291_ (.A1(\raven_spi.U1.ldata[4] ),
    .A2(_145_),
    .B1(_149_),
    .X(_161_));
 sky130_fd_sc_hd__a22o_2 _292_ (.A1(\raven_spi.U1.ldata[5] ),
    .A2(_150_),
    .B1(_160_),
    .B2(_161_),
    .X(_073_));
 sky130_fd_sc_hd__a221o_2 _293_ (.A1(pll_cp_ena),
    .A2(_122_),
    .B1(_156_),
    .B2(_117_),
    .C1(_152_),
    .X(_162_));
 sky130_fd_sc_hd__o211a_2 _294_ (.A1(mask_rev_in[0]),
    .A2(_153_),
    .B1(_162_),
    .C1(_145_),
    .X(_163_));
 sky130_fd_sc_hd__a21o_2 _295_ (.A1(\raven_spi.U1.ldata[3] ),
    .A2(_146_),
    .B1(_150_),
    .X(_164_));
 sky130_fd_sc_hd__o22a_2 _296_ (.A1(\raven_spi.U1.ldata[4] ),
    .A2(_149_),
    .B1(_163_),
    .B2(_164_),
    .X(_072_));
 sky130_fd_sc_hd__and3_2 _297_ (.A(\pll_trim[3] ),
    .B(_122_),
    .C(_145_),
    .X(_165_));
 sky130_fd_sc_hd__a21o_2 _298_ (.A1(\raven_spi.U1.ldata[2] ),
    .A2(_146_),
    .B1(_150_),
    .X(_166_));
 sky130_fd_sc_hd__o22a_2 _299_ (.A1(\raven_spi.U1.ldata[3] ),
    .A2(_149_),
    .B1(_165_),
    .B2(_166_),
    .X(_071_));
 sky130_fd_sc_hd__a221o_2 _300_ (.A1(\pll_trim[2] ),
    .A2(_122_),
    .B1(_156_),
    .B2(_117_),
    .C1(_152_),
    .X(_167_));
 sky130_fd_sc_hd__mux2_1 _301_ (.A0(\raven_spi.U1.ldata[1] ),
    .A1(_167_),
    .S(_145_),
    .X(_168_));
 sky130_fd_sc_hd__mux2_1 _302_ (.A0(\raven_spi.U1.ldata[2] ),
    .A1(_168_),
    .S(_149_),
    .X(_070_));
 sky130_fd_sc_hd__a211o_2 _303_ (.A1(\pll_trim[1] ),
    .A2(_122_),
    .B1(_146_),
    .C1(_156_),
    .X(_169_));
 sky130_fd_sc_hd__o21a_2 _304_ (.A1(\raven_spi.U1.ldata[0] ),
    .A2(_145_),
    .B1(_149_),
    .X(_170_));
 sky130_fd_sc_hd__a22o_2 _305_ (.A1(\raven_spi.U1.ldata[1] ),
    .A2(_150_),
    .B1(_169_),
    .B2(_170_),
    .X(_069_));
 sky130_fd_sc_hd__and3_2 _306_ (.A(I1),
    .B(_111_),
    .C(_124_),
    .X(_171_));
 sky130_fd_sc_hd__nor2_2 _307_ (.A(_114_),
    .B(_116_),
    .Y(_172_));
 sky130_fd_sc_hd__and4_2 _308_ (.A(trap),
    .B(_112_),
    .C(_121_),
    .D(_172_),
    .X(_173_));
 sky130_fd_sc_hd__or3b_2 _309_ (.A(_118_),
    .B(irq),
    .C_N(_111_),
    .X(_174_));
 sky130_fd_sc_hd__o311a_2 _310_ (.A1(_119_),
    .A2(_171_),
    .A3(_173_),
    .B1(_174_),
    .C1(_126_),
    .X(_175_));
 sky130_fd_sc_hd__a211o_2 _311_ (.A1(pll_bypass),
    .A2(_125_),
    .B1(_175_),
    .C1(_122_),
    .X(_176_));
 sky130_fd_sc_hd__a211oi_2 _312_ (.A1(_101_),
    .A2(_122_),
    .B1(_146_),
    .C1(_150_),
    .Y(_177_));
 sky130_fd_sc_hd__a22o_2 _313_ (.A1(\raven_spi.U1.ldata[0] ),
    .A2(_150_),
    .B1(_176_),
    .B2(_177_),
    .X(_068_));
 sky130_fd_sc_hd__or3b_2 _314_ (.A(\raven_spi.U1.fixed[2] ),
    .B(\raven_spi.U1.fixed[1] ),
    .C_N(\raven_spi.U1.fixed[0] ),
    .X(_178_));
 sky130_fd_sc_hd__a31oi_2 _315_ (.A1(\raven_spi.U1.state[1] ),
    .A2(_134_),
    .A3(_178_),
    .B1(\raven_spi.U1.state[2] ),
    .Y(_179_));
 sky130_fd_sc_hd__nor2_2 _316_ (.A(\raven_spi.U1.state[0] ),
    .B(_179_),
    .Y(_180_));
 sky130_fd_sc_hd__or2_2 _317_ (.A(\raven_spi.U1.state[0] ),
    .B(_179_),
    .X(_181_));
 sky130_fd_sc_hd__and4_2 _318_ (.A(\raven_spi.U1.addr[3] ),
    .B(\raven_spi.U1.addr[2] ),
    .C(\raven_spi.U1.addr[1] ),
    .D(\raven_spi.U1.addr[0] ),
    .X(_182_));
 sky130_fd_sc_hd__and2_2 _319_ (.A(\raven_spi.U1.addr[4] ),
    .B(_182_),
    .X(_183_));
 sky130_fd_sc_hd__and3_2 _320_ (.A(\raven_spi.U1.addr[5] ),
    .B(\raven_spi.U1.addr[4] ),
    .C(_182_),
    .X(_184_));
 sky130_fd_sc_hd__nand2_2 _321_ (.A(\raven_spi.U1.addr[6] ),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__mux2_1 _322_ (.A0(_185_),
    .A1(\raven_spi.U1.addr[6] ),
    .S(_108_),
    .X(_186_));
 sky130_fd_sc_hd__o21a_2 _323_ (.A1(\raven_spi.U1.state[2] ),
    .A2(_184_),
    .B1(_180_),
    .X(_187_));
 sky130_fd_sc_hd__o22a_2 _324_ (.A1(_181_),
    .A2(_186_),
    .B1(_187_),
    .B2(\raven_spi.U1.addr[7] ),
    .X(_067_));
 sky130_fd_sc_hd__mux2_1 _325_ (.A0(\raven_spi.U1.addr[5] ),
    .A1(_185_),
    .S(_104_),
    .X(_188_));
 sky130_fd_sc_hd__o22a_2 _326_ (.A1(\raven_spi.U1.addr[6] ),
    .A2(_187_),
    .B1(_188_),
    .B2(_181_),
    .X(_066_));
 sky130_fd_sc_hd__nor2_2 _327_ (.A(\raven_spi.U1.addr[5] ),
    .B(_183_),
    .Y(_189_));
 sky130_fd_sc_hd__a2bb2o_2 _328_ (.A1_N(_187_),
    .A2_N(_189_),
    .B1(\raven_spi.U1.addr[4] ),
    .B2(\raven_spi.U1.state[2] ),
    .X(_190_));
 sky130_fd_sc_hd__o21a_2 _329_ (.A1(\raven_spi.U1.addr[5] ),
    .A2(_180_),
    .B1(_190_),
    .X(_065_));
 sky130_fd_sc_hd__o21a_2 _330_ (.A1(_109_),
    .A2(_182_),
    .B1(_180_),
    .X(_191_));
 sky130_fd_sc_hd__nor2_2 _331_ (.A(\raven_spi.U1.state[2] ),
    .B(_183_),
    .Y(_192_));
 sky130_fd_sc_hd__o32a_2 _332_ (.A1(_109_),
    .A2(_181_),
    .A3(_192_),
    .B1(_191_),
    .B2(\raven_spi.U1.addr[4] ),
    .X(_064_));
 sky130_fd_sc_hd__o21ai_2 _333_ (.A1(\raven_spi.U1.state[2] ),
    .A2(_182_),
    .B1(_180_),
    .Y(_193_));
 sky130_fd_sc_hd__a31o_2 _334_ (.A1(\raven_spi.U1.addr[2] ),
    .A2(\raven_spi.U1.addr[1] ),
    .A3(\raven_spi.U1.addr[0] ),
    .B1(\raven_spi.U1.addr[3] ),
    .X(_194_));
 sky130_fd_sc_hd__a22o_2 _335_ (.A1(\raven_spi.U1.addr[2] ),
    .A2(\raven_spi.U1.state[2] ),
    .B1(_193_),
    .B2(_194_),
    .X(_195_));
 sky130_fd_sc_hd__o21a_2 _336_ (.A1(\raven_spi.U1.addr[3] ),
    .A2(_180_),
    .B1(_195_),
    .X(_063_));
 sky130_fd_sc_hd__o21a_2 _337_ (.A1(\raven_spi.U1.addr[0] ),
    .A2(\raven_spi.U1.state[2] ),
    .B1(\raven_spi.U1.addr[1] ),
    .X(_196_));
 sky130_fd_sc_hd__xnor2_2 _338_ (.A(_113_),
    .B(_196_),
    .Y(_197_));
 sky130_fd_sc_hd__mux2_1 _339_ (.A0(\raven_spi.U1.addr[2] ),
    .A1(_197_),
    .S(_180_),
    .X(_062_));
 sky130_fd_sc_hd__o21ai_2 _340_ (.A1(\raven_spi.U1.addr[0] ),
    .A2(\raven_spi.U1.state[2] ),
    .B1(_180_),
    .Y(_198_));
 sky130_fd_sc_hd__a32o_2 _341_ (.A1(\raven_spi.U1.addr[0] ),
    .A2(_106_),
    .A3(_180_),
    .B1(_198_),
    .B2(\raven_spi.U1.addr[1] ),
    .X(_061_));
 sky130_fd_sc_hd__o22a_2 _342_ (.A1(\raven_spi.U1.addr[0] ),
    .A2(_180_),
    .B1(_198_),
    .B2(_115_),
    .X(_060_));
 sky130_fd_sc_hd__or2_2 _343_ (.A(_102_),
    .B(_138_),
    .X(_199_));
 sky130_fd_sc_hd__mux2_1 _344_ (.A0(SDI),
    .A1(\raven_spi.U1.readmode ),
    .S(_199_),
    .X(_059_));
 sky130_fd_sc_hd__o211a_2 _345_ (.A1(\raven_spi.U1.writemode ),
    .A2(\raven_spi.U1.wrstb ),
    .B1(\raven_spi.U1.state[1] ),
    .C1(_134_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _346_ (.A0(\raven_spi.U1.state[0] ),
    .A1(\raven_spi.U1.state[2] ),
    .S(_135_),
    .X(_002_));
 sky130_fd_sc_hd__or2_2 _347_ (.A(_135_),
    .B(_178_),
    .X(_200_));
 sky130_fd_sc_hd__a22o_2 _348_ (.A1(\raven_spi.U1.state[2] ),
    .A2(_134_),
    .B1(_200_),
    .B2(\raven_spi.U1.state[1] ),
    .X(_001_));
 sky130_fd_sc_hd__a2bb2o_2 _349_ (.A1_N(_105_),
    .A2_N(_200_),
    .B1(_135_),
    .B2(\raven_spi.U1.state[0] ),
    .X(_000_));
 sky130_fd_sc_hd__inv_2 _350_ (.A(CSB),
    .Y(_029_));
 sky130_fd_sc_hd__inv_2 _351_ (.A(CSB),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _352_ (.A(CSB),
    .Y(_025_));
 sky130_fd_sc_hd__inv_2 _353_ (.A(CSB),
    .Y(_023_));
 sky130_fd_sc_hd__inv_2 _354_ (.A(CSB),
    .Y(_021_));
 sky130_fd_sc_hd__inv_2 _355_ (.A(CSB),
    .Y(_019_));
 sky130_fd_sc_hd__inv_2 _356_ (.A(CSB),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _357_ (.A(CSB),
    .Y(_006_));
 sky130_fd_sc_hd__inv_2 _358_ (.A(CSB),
    .Y(_003_));
 sky130_fd_sc_hd__inv_2 _359_ (.A(CSB),
    .Y(_004_));
 sky130_fd_sc_hd__inv_2 _360_ (.A(CSB),
    .Y(_005_));
 sky130_fd_sc_hd__inv_2 _361_ (.A(CSB),
    .Y(_008_));
 sky130_fd_sc_hd__inv_2 _362_ (.A(CSB),
    .Y(_009_));
 sky130_fd_sc_hd__inv_2 _363_ (.A(CSB),
    .Y(_010_));
 sky130_fd_sc_hd__inv_2 _364_ (.A(CSB),
    .Y(_011_));
 sky130_fd_sc_hd__inv_2 _365_ (.A(CSB),
    .Y(_012_));
 sky130_fd_sc_hd__inv_2 _366_ (.A(CSB),
    .Y(_013_));
 sky130_fd_sc_hd__inv_2 _367_ (.A(CSB),
    .Y(_014_));
 sky130_fd_sc_hd__inv_2 _368_ (.A(CSB),
    .Y(_015_));
 sky130_fd_sc_hd__inv_2 _369_ (.A(CSB),
    .Y(_016_));
 sky130_fd_sc_hd__inv_2 _370_ (.A(SCK),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _371_ (.A(SCK),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _372_ (.A(SCK),
    .Y(_022_));
 sky130_fd_sc_hd__inv_2 _373_ (.A(SCK),
    .Y(_024_));
 sky130_fd_sc_hd__inv_2 _374_ (.A(SCK),
    .Y(_026_));
 sky130_fd_sc_hd__inv_2 _375_ (.A(SCK),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _376_ (.A(SCK),
    .Y(_030_));
 sky130_fd_sc_hd__inv_2 _377_ (.A(SCK),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _378_ (.A(CSB),
    .Y(_033_));
 sky130_fd_sc_hd__inv_2 _379_ (.A(CSB),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _380_ (.A(CSB),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _381_ (.A(CSB),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _382_ (.A(CSB),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _383_ (.A(CSB),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _384_ (.A(CSB),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _385_ (.A(CSB),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _386_ (.A(CSB),
    .Y(_041_));
 sky130_fd_sc_hd__inv_2 _387_ (.A(CSB),
    .Y(_042_));
 sky130_fd_sc_hd__inv_2 _388_ (.A(CSB),
    .Y(_043_));
 sky130_fd_sc_hd__inv_2 _389_ (.A(CSB),
    .Y(_045_));
 sky130_fd_sc_hd__inv_2 _390_ (.A(CSB),
    .Y(_046_));
 sky130_fd_sc_hd__inv_2 _391_ (.A(CSB),
    .Y(_047_));
 sky130_fd_sc_hd__inv_2 _392_ (.A(RST),
    .Y(_048_));
 sky130_fd_sc_hd__inv_2 _393_ (.A(RST),
    .Y(_049_));
 sky130_fd_sc_hd__inv_2 _394_ (.A(RST),
    .Y(_050_));
 sky130_fd_sc_hd__inv_2 _395_ (.A(RST),
    .Y(_051_));
 sky130_fd_sc_hd__inv_2 _396_ (.A(RST),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _397_ (.A(RST),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _398_ (.A(RST),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _399_ (.A(RST),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _400_ (.A(RST),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _401_ (.A(RST),
    .Y(_057_));
 sky130_fd_sc_hd__dfstp_2 _402_ (.CLK(SCK),
    .D(_000_),
    .SET_B(_003_),
    .Q(\raven_spi.U1.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _403_ (.CLK(SCK),
    .D(_001_),
    .RESET_B(_004_),
    .Q(\raven_spi.U1.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _404_ (.CLK(SCK),
    .D(_002_),
    .RESET_B(_005_),
    .Q(\raven_spi.U1.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _405_ (.CLK(_007_),
    .D(_058_),
    .RESET_B(_006_),
    .Q(\raven_spi.U1.wrstb ));
 sky130_fd_sc_hd__dfrtp_2 _406_ (.CLK(SCK),
    .D(_059_),
    .RESET_B(_008_),
    .Q(\raven_spi.U1.readmode ));
 sky130_fd_sc_hd__dfrtp_2 _407_ (.CLK(SCK),
    .D(_060_),
    .RESET_B(_009_),
    .Q(\raven_spi.U1.addr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _408_ (.CLK(SCK),
    .D(_061_),
    .RESET_B(_010_),
    .Q(\raven_spi.U1.addr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _409_ (.CLK(SCK),
    .D(_062_),
    .RESET_B(_011_),
    .Q(\raven_spi.U1.addr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _410_ (.CLK(SCK),
    .D(_063_),
    .RESET_B(_012_),
    .Q(\raven_spi.U1.addr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _411_ (.CLK(SCK),
    .D(_064_),
    .RESET_B(_013_),
    .Q(\raven_spi.U1.addr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _412_ (.CLK(SCK),
    .D(_065_),
    .RESET_B(_014_),
    .Q(\raven_spi.U1.addr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _413_ (.CLK(SCK),
    .D(_066_),
    .RESET_B(_015_),
    .Q(\raven_spi.U1.addr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _414_ (.CLK(SCK),
    .D(_067_),
    .RESET_B(_016_),
    .Q(\raven_spi.U1.addr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _415_ (.CLK(_018_),
    .D(_068_),
    .RESET_B(_017_),
    .Q(\raven_spi.U1.ldata[0] ));
 sky130_fd_sc_hd__dfrtp_2 _416_ (.CLK(_020_),
    .D(_069_),
    .RESET_B(_019_),
    .Q(\raven_spi.U1.ldata[1] ));
 sky130_fd_sc_hd__dfrtp_2 _417_ (.CLK(_022_),
    .D(_070_),
    .RESET_B(_021_),
    .Q(\raven_spi.U1.ldata[2] ));
 sky130_fd_sc_hd__dfrtp_2 _418_ (.CLK(_024_),
    .D(_071_),
    .RESET_B(_023_),
    .Q(\raven_spi.U1.ldata[3] ));
 sky130_fd_sc_hd__dfrtp_2 _419_ (.CLK(_026_),
    .D(_072_),
    .RESET_B(_025_),
    .Q(\raven_spi.U1.ldata[4] ));
 sky130_fd_sc_hd__dfrtp_2 _420_ (.CLK(_028_),
    .D(_073_),
    .RESET_B(_027_),
    .Q(\raven_spi.U1.ldata[5] ));
 sky130_fd_sc_hd__dfrtp_2 _421_ (.CLK(_030_),
    .D(_074_),
    .RESET_B(_029_),
    .Q(\raven_spi.U1.ldata[6] ));
 sky130_fd_sc_hd__dfrtp_2 _422_ (.CLK(_032_),
    .D(_075_),
    .RESET_B(_031_),
    .Q(I0));
 sky130_fd_sc_hd__dfrtp_2 _423_ (.CLK(SCK),
    .D(_076_),
    .RESET_B(_033_),
    .Q(\raven_spi.U1.odata[1] ));
 sky130_fd_sc_hd__dfrtp_2 _424_ (.CLK(SCK),
    .D(_077_),
    .RESET_B(_034_),
    .Q(\raven_spi.U1.odata[2] ));
 sky130_fd_sc_hd__dfrtp_2 _425_ (.CLK(SCK),
    .D(_078_),
    .RESET_B(_035_),
    .Q(\raven_spi.U1.odata[3] ));
 sky130_fd_sc_hd__dfrtp_2 _426_ (.CLK(SCK),
    .D(_079_),
    .RESET_B(_036_),
    .Q(\raven_spi.U1.odata[4] ));
 sky130_fd_sc_hd__dfrtp_2 _427_ (.CLK(SCK),
    .D(_080_),
    .RESET_B(_037_),
    .Q(\raven_spi.U1.odata[5] ));
 sky130_fd_sc_hd__dfrtp_2 _428_ (.CLK(SCK),
    .D(_081_),
    .RESET_B(_038_),
    .Q(\raven_spi.U1.odata[6] ));
 sky130_fd_sc_hd__dfrtp_2 _429_ (.CLK(SCK),
    .D(_082_),
    .RESET_B(_039_),
    .Q(\raven_spi.U1.odata[7] ));
 sky130_fd_sc_hd__dfrtp_2 _430_ (.CLK(SCK),
    .D(_083_),
    .RESET_B(_040_),
    .Q(\raven_spi.U1.writemode ));
 sky130_fd_sc_hd__dfrtp_2 _431_ (.CLK(SCK),
    .D(_084_),
    .RESET_B(_041_),
    .Q(\raven_spi.U1.fixed[0] ));
 sky130_fd_sc_hd__dfrtp_2 _432_ (.CLK(SCK),
    .D(_085_),
    .RESET_B(_042_),
    .Q(\raven_spi.U1.fixed[1] ));
 sky130_fd_sc_hd__dfrtp_2 _433_ (.CLK(SCK),
    .D(_086_),
    .RESET_B(_043_),
    .Q(\raven_spi.U1.fixed[2] ));
 sky130_fd_sc_hd__dfrtp_2 _434_ (.CLK(SCK),
    .D(_087_),
    .RESET_B(_044_),
    .Q(I1));
 sky130_fd_sc_hd__dfrtp_2 _435_ (.CLK(SCK),
    .D(_088_),
    .RESET_B(_045_),
    .Q(\raven_spi.U1.count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _436_ (.CLK(SCK),
    .D(_089_),
    .RESET_B(_046_),
    .Q(\raven_spi.U1.count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _437_ (.CLK(SCK),
    .D(_090_),
    .RESET_B(_047_),
    .Q(\raven_spi.U1.count[2] ));
 sky130_fd_sc_hd__dfstp_2 _438_ (.CLK(SCK),
    .D(_091_),
    .SET_B(_048_),
    .Q(\raven_spi.reg_ena ));
 sky130_fd_sc_hd__dfrtp_2 _439_ (.CLK(SCK),
    .D(_092_),
    .RESET_B(_049_),
    .Q(\pll_trim[0] ));
 sky130_fd_sc_hd__dfrtp_2 _440_ (.CLK(SCK),
    .D(_093_),
    .RESET_B(_050_),
    .Q(\pll_trim[1] ));
 sky130_fd_sc_hd__dfrtp_2 _441_ (.CLK(SCK),
    .D(_094_),
    .RESET_B(_051_),
    .Q(\pll_trim[2] ));
 sky130_fd_sc_hd__dfrtp_2 _442_ (.CLK(SCK),
    .D(_095_),
    .RESET_B(_052_),
    .Q(\pll_trim[3] ));
 sky130_fd_sc_hd__dfstp_2 _443_ (.CLK(SCK),
    .D(_096_),
    .SET_B(_053_),
    .Q(\raven_spi.xtal_ena ));
 sky130_fd_sc_hd__dfstp_2 _444_ (.CLK(SCK),
    .D(_097_),
    .SET_B(_054_),
    .Q(pll_cp_ena));
 sky130_fd_sc_hd__dfrtp_2 _445_ (.CLK(SCK),
    .D(_098_),
    .RESET_B(_055_),
    .Q(pll_bypass));
 sky130_fd_sc_hd__dfstp_2 _446_ (.CLK(SCK),
    .D(_099_),
    .SET_B(_056_),
    .Q(pll_vco_ena));
 sky130_fd_sc_hd__dfrtp_2 _447_ (.CLK(SCK),
    .D(_100_),
    .RESET_B(_057_),
    .Q(irq));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_80 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_82 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_83 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_84 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_287 ();
endmodule
