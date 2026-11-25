v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 480 -610 480 -530 {lab=#net1}
N 160 -530 480 -530 {lab=#net1}
N 160 -460 180 -460 {lab=#net1}
N 160 -530 160 -460 {lab=#net1}
N 480 -350 480 -270 {lab=#net2}
N 160 -270 480 -270 {lab=#net2}
N 160 -270 160 -200 {lab=#net2}
N 160 -200 180 -200 {lab=#net2}
N 160 -330 180 -330 {lab=#net3}
N 480 -480 480 -400 {lab=#net3}
N 160 -400 480 -400 {lab=#net3}
N 160 -400 160 -330 {lab=#net3}
N 100 -630 180 -630 {lab=A0}
N 100 -610 180 -610 {lab=B0}
N 100 -500 180 -500 {lab=A1}
N 100 -480 180 -480 {lab=B1}
N 100 -370 180 -370 {lab=A2}
N 100 -350 180 -350 {lab=B2}
N 100 -240 180 -240 {lab=A3}
N 100 -220 180 -220 {lab=B3}
N 100 -590 180 -590 {lab=Cin}
N 100 -570 180 -570 {lab=VDD}
N 100 -550 180 -550 {lab=GND}
N 150 -440 180 -440 {lab=VDD}
N 150 -570 150 -440 {lab=VDD}
N 140 -420 180 -420 {lab=GND}
N 140 -550 140 -420 {lab=GND}
N 150 -440 150 -180 {lab=VDD}
N 150 -180 180 -180 {lab=VDD}
N 150 -310 180 -310 {lab=VDD}
N 140 -160 180 -160 {lab=GND}
N 140 -420 140 -160 {lab=GND}
N 140 -290 180 -290 {lab=GND}
N 480 -240 520 -240 {lab=Sum3}
N 480 -220 520 -220 {lab=Cout}
N 480 -370 520 -370 {lab=Sum2}
N 480 -500 520 -500 {lab=Sum1}
N 480 -630 520 -630 {lab=Sum0}
C {/home/dat02/projects/cmos-full-adder-sky130/transmission_gate/schematic/fulladder.sym} 330 -590 0 0 {name=x1}
C {/home/dat02/projects/cmos-full-adder-sky130/transmission_gate/schematic/fulladder.sym} 330 -460 0 0 {name=x2}
C {/home/dat02/projects/cmos-full-adder-sky130/transmission_gate/schematic/fulladder.sym} 330 -330 0 0 {name=x3}
C {/home/dat02/projects/cmos-full-adder-sky130/transmission_gate/schematic/fulladder.sym} 330 -200 0 0 {name=x4}
C {ipin.sym} 100 -630 0 0 {name=p1 lab=A0}
C {ipin.sym} 100 -610 0 0 {name=p2 lab=B0}
C {ipin.sym} 100 -590 0 0 {name=p3 lab=Cin}
C {ipin.sym} 100 -570 0 0 {name=p4 lab=VDD}
C {ipin.sym} 100 -550 0 0 {name=p5 lab=GND}
C {ipin.sym} 100 -500 0 0 {name=p6 lab=A1}
C {ipin.sym} 100 -480 0 0 {name=p7 lab=B1}
C {ipin.sym} 100 -370 0 0 {name=p9 lab=A2}
C {ipin.sym} 100 -350 0 0 {name=p10 lab=B2}
C {ipin.sym} 100 -240 0 0 {name=p12 lab=A3}
C {ipin.sym} 100 -220 0 0 {name=p13 lab=B3}
C {opin.sym} 520 -630 0 0 {name=p8 lab=Sum0}
C {opin.sym} 520 -500 0 0 {name=p11 lab=Sum1}
C {opin.sym} 520 -370 0 0 {name=p14 lab=Sum2}
C {opin.sym} 520 -240 0 0 {name=p15 lab=Sum3}
C {opin.sym} 520 -220 0 0 {name=p16 lab=Cout}
