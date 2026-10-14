v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 -540 -230 -540 {lab=#net1}
N -310 -320 -170 -320 {lab=#net1}
N -310 -540 -310 -320 {lab=#net1}
N -700 -560 -540 -560 {lab=A}
N -700 -520 -540 -520 {lab=B}
N -700 -230 -210 -230 {lab=Cin}
N -640 -270 -210 -270 {lab=A}
N -640 -560 -640 -270 {lab=A}
N -100 -520 -40 -520 {lab=Sum}
N -130 -250 -40 -250 {lab=Cout}
N -480 -470 -480 -160 {lab=#net2}
N -170 -180 -170 -110 {lab=#net2}
N -480 -100 -170 -100 {lab=#net2}
N -480 -160 -480 -100 {lab=#net2}
N -170 -110 -170 -100 {lab=#net2}
N -170 -460 -100 -460 {lab=#net2}
N -100 -460 -100 -110 {lab=#net2}
N -100 -110 -100 -100 {lab=#net2}
N -170 -100 -100 -100 {lab=#net2}
N -480 -480 -480 -470 {lab=#net2}
N -280 -500 -230 -500 {lab=Cin}
N -280 -500 -280 -230 {lab=Cin}
N -700 -510 -700 -480 {lab=B}
N -700 -480 -700 -420 {lab=B}
N -700 -520 -700 -510 {lab=B}
N -760 -560 -760 -490 {lab=A}
N -760 -560 -700 -560 {lab=A}
N -170 -100 -170 -70 {lab=#net2}
N -700 -230 -700 -200 {lab=Cin}
N -710 -10 -170 -10 {lab=0}
N -700 -140 -700 -10 {lab=0}
N -760 -430 -760 -10 {lab=0}
N -760 -10 -710 -10 {lab=0}
N -700 -360 -700 -340 {lab=0}
N -760 -340 -700 -340 {lab=0}
N -20 -510 -20 -480 {lab=Sum}
N -40 -250 -40 -220 {lab=Cout}
N -40 -520 -20 -520 {lab=Sum}
N -20 -520 -20 -510 {lab=Sum}
N -40 -160 -40 -10 {lab=0}
N -170 -10 -40 -10 {lab=0}
N -20 -420 -20 -10 {lab=0}
N -30 -10 -20 -10 {lab=0}
N -40 -10 -30 -10 {lab=0}
C {/home/dat02/vlsi/xor/xor.sym} -550 -660 0 0 {name=x1}
C {/home/dat02/vlsi/xor/xor.sym} -240 -640 0 0 {name=x2}
C {/home/dat02/vlsi/mux/mux21.sym} -110 -350 0 0 {name=x3}
C {vsource.sym} -700 -390 0 0 {name=VB value="PULSE(0 1.8 0 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} -760 -460 0 0 {name=VA value="PULSE(0 1.8 0 100p 100p 40n 80n)" savecurrent=false}
C {vsource.sym} -170 -40 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} -700 -170 0 0 {name=VCin value="PULSE(0 1.8 0 100p 100p 10n 20n)" savecurrent=false}
C {gnd.sym} -700 -10 0 0 {name=l1 lab=0}
C {capa.sym} -20 -450 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -40 -190 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -760 -560 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -700 -520 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -700 -230 0 0 {name=p3 sig_type=std_logic lab=Cin}
C {lab_pin.sym} -20 -520 0 1 {name=p4 sig_type=std_logic lab=Sum}
C {lab_pin.sym} -40 -250 0 1 {name=p5 sig_type=std_logic lab=Cout}
C {code_shown.sym} -700 50 0 0 {name=sim only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27
.tran 10p 160n
.save all
"}
