v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 530 -560 530 -500 {lab=Cin}
N 460 -580 460 -530 {lab=B}
N 460 -580 530 -580 {lab=B}
N 400 -600 400 -590 {lab=A}
N 400 -600 530 -600 {lab=A}
N 530 -440 530 -420 {lab=0}
N 460 -470 460 -420 {lab=0}
N 400 -530 400 -430 {lab=0}
N 400 -430 400 -420 {lab=0}
N 900 -600 950 -600 {lab=Sum}
N 900 -580 950 -580 {lab=Cout}
N 530 -560 600 -560 {lab=Cin}
N 530 -580 600 -580 {lab=B}
N 530 -600 600 -600 {lab=A}
N 570 -540 570 -390 {lab=VDD}
N 570 -540 600 -540 {lab=VDD}
N 570 -330 570 -290 {lab=0}
N 530 -420 530 -310 {lab=0}
N 530 -310 570 -310 {lab=0}
N 460 -420 460 -310 {lab=0}
N 460 -310 530 -310 {lab=0}
N 400 -420 400 -310 {lab=0}
N 600 -520 600 -310 {lab=0}
N 570 -310 600 -310 {lab=0}
N 400 -310 460 -310 {lab=0}
N 950 -600 1030 -600 {lab=Sum}
N 950 -580 980 -580 {lab=Cout}
C {vsource.sym} 570 -360 0 0 {name=V1 value=1.8
 savecurrent=false}
C {vsource.sym} 400 -560 0 0 {name=VA value="PULSE 0 1.8 0 20p 20p 2n 4n" 
savecurrent=false}
C {vsource.sym} 460 -500 0 0 {name=VB value="PULSE 0 1.8 0 20p 20p 1n 2n"
 savecurrent=false}
C {vsource.sym} 530 -470 0 0 {name=VCin value="PULSE 0 1.8 0 20p 20p 4n 8n"
 savecurrent=false}
C {gnd.sym} 570 -290 0 0 {name=l1 lab=0}
C {lab_pin.sym} 570 -420 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -600 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 460 -580 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} 530 -560 0 0 {name=p4 sig_type=std_logic lab=Cin}
C {opin.sym} 1030 -600 0 0 {name=p5 lab=Sum}
C {opin.sym} 980 -580 0 0 {name=p6 lab=Cout}
C {code_shown.sym} 1120 -600 0 0 {name=sim only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 20n
.control
run
plot v(cin), v(a)-2, v(b)-4, v(sum)-6, v(cout)-8
.endc
"}
C {/home/dat02/projects/cmos-full-adder-sky130/transmission_gate/schematic/fulladder.sym} 750 -560 0 0 {name=x1}
