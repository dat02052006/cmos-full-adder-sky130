v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 -370 370 -370 {lab=A}
N 210 -370 210 -330 {lab=A}
N 260 -350 370 -350 {lab=B}
N 260 -350 260 -260 {lab=B}
N 260 -260 260 -250 {lab=B}
N 300 -330 370 -330 {lab=Cin}
N 300 -330 300 -170 {lab=Cin}
N 300 -170 300 -160 {lab=Cin}
N 100 -270 100 -220 {lab=VDD}
N 100 -280 100 -270 {lab=VDD}
N 100 -160 100 -60 {lab=0}
N 100 -100 300 -100 {lab=0}
N 260 -190 260 -100 {lab=0}
N 210 -270 210 -100 {lab=0}
N 670 -390 720 -390 {lab=Cout}
N 670 -410 720 -410 {lab=Sum}
N 100 -410 370 -410 {lab=VDD}
N 100 -400 100 -280 {lab=VDD}
N 100 -410 100 -400 {lab=VDD}
N 130 -390 370 -390 {lab=0}
N 130 -390 130 -220 {lab=0}
N 130 -160 130 -100 {lab=0}
N 130 -220 130 -160 {lab=0}
C {vsource.sym} 100 -190 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 210 -300 0 0 {name=VA value="PULSE(0 1.8 0 0.1n 0.1n 2n 4n)" savecurrent=false}
C {vsource.sym} 260 -220 0 0 {name=VB value="PULSE(0 1.8 0 0.1n 0.1n 1n 2n)" savecurrent=false}
C {vsource.sym} 300 -130 0 0 {name=VCin value="PULSE(0 1.8 0 0.1n 0.1n 4n 8n)" savecurrent=false}
C {gnd.sym} 100 -60 0 0 {name=l1 lab=0}
C {code_shown.sym} 630 -220 0 0 {name=tran only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/dat02/projects/cmos-full-adder-sky130/layout/fulladder_pex.spice
.tran 10p 16n
.control
run
plot v(Cin) v(A)+2 v(B)+4 v(Cout)+6 v(Sum)+8
.endc
"}
C {opin.sym} 720 -390 0 0 {name=p1 lab=Cout
}
C {opin.sym} 720 -410 0 0 {name=p2 lab=Sum
}
C {lab_pin.sym} 210 -370 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} 260 -350 0 0 {name=p4 sig_type=std_logic lab=B}
C {lab_pin.sym} 300 -330 0 0 {name=p5 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 100 -410 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {/home/dat02/projects/cmos-full-adder-sky130/static_cmos/schematic/fulladder.sym} 520 -370 0 0 {name=x1}
