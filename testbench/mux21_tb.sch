v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -280 -180 -160 -180 {lab=A}
N -220 -140 -160 -140 {lab=B}
N -280 -180 -280 -100 {lab=A}
N -220 -140 -220 -40 {lab=B}
N -120 -240 -120 -220 {lab=S}
N -280 -40 -280 -20 {lab=0}
N -280 -20 -280 50 {lab=0}
N -280 50 -80 50 {lab=0}
N -220 20 -220 50 {lab=0}
N -80 -160 -30 -160 {lab=OUT}
N -30 -160 -30 -100 {lab=OUT}
N -30 -40 -30 50 {lab=0}
N -80 50 -30 50 {lab=0}
N -120 -100 -120 -40 {lab=#net1}
N -120 20 -120 50 {lab=0}
N -310 -300 -120 -300 {lab=0}
N -310 -300 -310 50 {lab=0}
N -310 50 -280 50 {lab=0}
C {vsource.sym} -280 -70 0 0 {name=VA value="PULSE(0 1.8 0 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} -220 -10 0 0 {name=VB value="PULSE(0 1.8 0 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} -120 -270 2 0 {name=VS value="PULSE(0 1.8 0 100p 100p 5n 10n)" savecurrent=false}
C {capa.sym} -30 -70 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -220 50 0 0 {name=l1 lab=0}
C {vsource.sym} -120 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {code_shown.sym} -390 160 0 0 {name=SIM
only_toplevel=true
value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10p 80n
.save all
"}
C {/home/dat02/vlsi/mux/mux21.sym} -60 -260 0 0 {name=x1}
C {lab_pin.sym} -280 -180 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -220 -140 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -120 -220 0 0 {name=p3 sig_type=std_logic lab=S}
C {lab_pin.sym} -30 -160 0 1 {name=p4 sig_type=std_logic lab=OUT}
