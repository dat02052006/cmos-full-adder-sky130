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
N 300 -640 300 -540 {lab=VDD}
N 300 -640 530 -640 {lab=VDD}
N 300 -480 300 -400 {lab=0}
N 300 -420 530 -420 {lab=0}
N 530 -440 530 -420 {lab=0}
N 460 -470 460 -420 {lab=0}
N 400 -530 400 -430 {lab=0}
N 400 -430 400 -420 {lab=0}
N 350 -620 530 -620 {lab=0}
N 350 -620 350 -420 {lab=0}
N 830 -640 880 -640 {lab=Sum}
N 830 -620 880 -620 {lab=Cout}
C {/home/dat02/projects/cmos-full-adder-sky130/schematic/fulladder.sym} 680 -600 0 0 {name=x1}
C {vsource.sym} 300 -510 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 400 -560 0 0 {name=VA value="PULSE 0 1.8 0 20p 20p 2n 4n" savecurrent=false}
C {vsource.sym} 460 -500 0 0 {name=VB value="PULSE 0 1.8 0 20p 20p 1n 2n" savecurrent=false}
C {vsource.sym} 530 -470 0 0 {name=VCin value="PULSE 0 1.8 0 20p 20p 4n 8n" savecurrent=false}
C {gnd.sym} 300 -400 0 0 {name=l1 lab=0}
C {lab_pin.sym} 300 -640 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -600 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 460 -580 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} 530 -560 0 0 {name=p4 sig_type=std_logic lab=Cin}
C {opin.sym} 880 -640 0 0 {name=p5 lab=Sum}
C {opin.sym} 880 -620 0 0 {name=p6 lab=Cout}
C {code_shown.sym} 950 -660 0 0 {name=sim only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 20n
.plot v(cin) v(a)+2 v(b)+4 v(sum)+6 v(cout)+8
"}
