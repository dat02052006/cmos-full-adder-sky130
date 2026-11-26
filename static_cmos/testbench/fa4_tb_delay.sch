v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -230 600 -150 {lab=#net1}
N 280 -150 600 -150 {lab=#net1}
N 600 -100 600 -20 {lab=#net2}
N 280 -20 600 -20 {lab=#net2}
N 600 30 600 120 {lab=#net3}
N 280 120 600 120 {lab=#net3}
N 280 120 280 220 {lab=#net3}
N 280 220 300 220 {lab=#net3}
N 600 -250 650 -250 {lab=Sum0}
N 600 -120 650 -120 {lab=Sum1}
N 600 10 660 10 {lab=Sum2}
N 600 140 670 140 {lab=Sum3}
N 600 160 670 160 {lab=Cout}
N 160 -250 300 -250 {lab=VDD}
N 60 -250 160 -250 {lab=VDD}
N 280 -40 300 -40 {lab=#net1}
N 280 -150 280 -40 {lab=#net1}
N 280 90 300 90 {lab=#net2}
N 180 -190 300 -190 {lab=B0}
N 180 -60 300 -60 {lab=B1}
N 180 70 300 70 {lab=B2}
N 180 200 300 200 {lab=B3}
N 280 -20 280 90 {lab=#net2}
N 260 10 300 10 {lab=VDD}
N 260 140 300 140 {lab=VDD}
N 260 10 260 140 {lab=VDD}
N 260 -120 300 -120 {lab=VDD}
N 260 -120 260 10 {lab=VDD}
N 260 -250 260 -120 {lab=VDD}
N 230 160 300 160 {lab=0}
N 230 30 300 30 {lab=0}
N 230 30 230 160 {lab=0}
N 230 -100 300 -100 {lab=0}
N 230 -100 230 30 {lab=0}
N 230 -230 300 -230 {lab=0}
N 230 -230 230 -100 {lab=0}
N 180 -210 300 -210 {lab=A0}
N 180 -170 300 -170 {lab=Cin}
N 180 -80 300 -80 {lab=A1}
N 180 50 300 50 {lab=A2}
N 180 180 300 180 {lab=A3}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 450 -210 0 0 {name=x1}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 450 -80 0 0 {name=x2}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 450 50 0 0 {name=x3}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 450 180 0 0 {name=x4}
C {vsource.sym} 60 -220 0 0 {name=VDD value=1.8 savecurrent=false}
C {vdd.sym} 60 -250 0 0 {name=l1 lab=VDD}
C {gnd.sym} 60 -190 0 0 {name=l2 lab=0}
C {code_shown.sym} 800 -220 0 0 {name=tran only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
Va0  a0  0 0
Va1  a1  0 0
Va2  a2  0 0
Va3  a3  0 0

Vb0  b0  0 1.8
Vb1  b1  0 1.8
Vb2  b2  0 1.8
Vb3  b3  0 1.8

Vcin cin 0 pulse(0 1.8 1n 100p 100p 4n 10n)

.tran 0.1p 20n

.meas tran tplh_cin_cout trig v(cin) val=0.9 rise=1 targ v(cout) val=0.9 rise=1
.meas tran tphl_cin_cout trig v(cin) val=0.9 fall=1 targ v(cout) val=0.9 fall=1
"}
C {opin.sym} 650 -250 0 0 {name=p16 lab=Sum0}
C {opin.sym} 650 -120 0 0 {name=p10 lab=Sum1}
C {opin.sym} 660 10 0 0 {name=p11 lab=Sum2}
C {opin.sym} 670 140 0 0 {name=p12 lab=Sum3}
C {opin.sym} 670 160 0 0 {name=p13 lab=Cout}
C {ipin.sym} 180 -210 0 0 {name=p14 lab=A0}
C {ipin.sym} 180 -190 0 0 {name=p1 lab=B0}
C {ipin.sym} 180 -170 0 0 {name=p2 lab=Cin}
C {ipin.sym} 180 -80 0 0 {name=p3 lab=A1}
C {ipin.sym} 180 -60 0 0 {name=p4 lab=B1}
C {ipin.sym} 180 70 0 0 {name=p5 lab=B2}
C {ipin.sym} 180 50 0 0 {name=p6 lab=A2}
C {ipin.sym} 180 200 0 0 {name=p7 lab=B3}
C {ipin.sym} 180 180 0 0 {name=p8 lab=A3}
C {gnd.sym} 230 160 0 0 {name=l3 lab=0}
