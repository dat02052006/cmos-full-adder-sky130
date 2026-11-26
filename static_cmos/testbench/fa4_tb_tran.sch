v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 610 -500 610 -420 {lab=#net1}
N 290 -420 610 -420 {lab=#net1}
N 610 -370 610 -290 {lab=#net2}
N 290 -290 610 -290 {lab=#net2}
N 610 -240 610 -150 {lab=#net3}
N 290 -150 610 -150 {lab=#net3}
N 290 -150 290 -50 {lab=#net3}
N 290 -50 310 -50 {lab=#net3}
N 610 -520 660 -520 {lab=Sum0}
N 610 -390 660 -390 {lab=Sum1}
N 610 -260 670 -260 {lab=Sum2}
N 610 -130 680 -130 {lab=Sum3}
N 610 -110 680 -110 {lab=Cout}
N 170 -520 310 -520 {lab=VDD}
N 70 -520 170 -520 {lab=VDD}
N 290 -310 310 -310 {lab=#net1}
N 290 -420 290 -310 {lab=#net1}
N 290 -180 310 -180 {lab=#net2}
N 190 -460 310 -460 {lab=B0}
N 190 -330 310 -330 {lab=B1}
N 190 -200 310 -200 {lab=B2}
N 190 -70 310 -70 {lab=B3}
N 290 -290 290 -180 {lab=#net2}
N 270 -260 310 -260 {lab=VDD}
N 270 -130 310 -130 {lab=VDD}
N 270 -260 270 -130 {lab=VDD}
N 270 -390 310 -390 {lab=VDD}
N 270 -390 270 -260 {lab=VDD}
N 270 -520 270 -390 {lab=VDD}
N 240 -110 310 -110 {lab=0}
N 240 -240 310 -240 {lab=0}
N 240 -240 240 -110 {lab=0}
N 240 -370 310 -370 {lab=0}
N 240 -370 240 -240 {lab=0}
N 240 -500 310 -500 {lab=0}
N 240 -500 240 -370 {lab=0}
N 190 -480 310 -480 {lab=A0}
N 190 -440 310 -440 {lab=Cin}
N 190 -350 310 -350 {lab=A1}
N 190 -220 310 -220 {lab=A2}
N 190 -90 310 -90 {lab=A3}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 460 -480 0 0 {name=x1}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 460 -350 0 0 {name=x2}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 460 -220 0 0 {name=x3}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 460 -90 0 0 {name=x4}
C {vsource.sym} 70 -490 0 0 {name=VDD value=1.8 savecurrent=false}
C {vdd.sym} 70 -520 0 0 {name=l1 lab=VDD}
C {gnd.sym} 70 -460 0 0 {name=l2 lab=0}
C {code_shown.sym} 810 -480 0 0 {name=tran only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
Va0  a0  0 pulse(0 1.8 1n   100p 100p 0.8n   2n)
Va1  a1  0 pulse(0 1.8 2n   100p 100p 1.8n   4n)
Va2  a2  0 pulse(0 1.8 4n   100p 100p 3.8n   8n)
Va3  a3  0 pulse(0 1.8 8n   100p 100p 7.8n   16n)
Vb0  b0  0 pulse(0 1.8 16n  100p 100p 15.8n  32n)
Vb1  b1  0 pulse(0 1.8 32n  100p 100p 31.8n  64n)
Vb2  b2  0 pulse(0 1.8 64n  100p 100p 63.8n  128n)
Vb3  b3  0 pulse(0 1.8 128n 100p 100p 127.8n 256n)
Vcin cin 0 pulse(0 1.8 256n 100p 100p 255.8n 512n)
.tran 10p 512n
.control
run
plot v(Cin) v(a3)-2 v(a2)-4 v(a1)-6 v(a0)-8 v(b3)-10 v(b2)-12 v(b1)-14 v(b0)-16 v(sum3)-18 v(sum2)-20 v(sum1)-22 v(sum0)-24 v(cout)-26
.endc
"}
C {opin.sym} 660 -520 0 0 {name=p16 lab=Sum0}
C {opin.sym} 660 -390 0 0 {name=p10 lab=Sum1}
C {opin.sym} 670 -260 0 0 {name=p11 lab=Sum2}
C {opin.sym} 680 -130 0 0 {name=p12 lab=Sum3}
C {opin.sym} 680 -110 0 0 {name=p13 lab=Cout}
C {ipin.sym} 190 -480 0 0 {name=p14 lab=A0}
C {ipin.sym} 190 -460 0 0 {name=p1 lab=B0}
C {ipin.sym} 190 -440 0 0 {name=p2 lab=Cin}
C {ipin.sym} 190 -350 0 0 {name=p3 lab=A1}
C {ipin.sym} 190 -330 0 0 {name=p4 lab=B1}
C {ipin.sym} 190 -200 0 0 {name=p5 lab=B2}
C {ipin.sym} 190 -220 0 0 {name=p6 lab=A2}
C {ipin.sym} 190 -70 0 0 {name=p7 lab=B3}
C {ipin.sym} 190 -90 0 0 {name=p8 lab=A3}
C {gnd.sym} 240 -110 0 0 {name=l3 lab=0}
