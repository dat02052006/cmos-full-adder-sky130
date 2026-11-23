v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 -150 -210 -150 {lab=IN1}
N -300 -110 -210 -110 {lab=IN2}
N -80 -130 -20 -130 {lab=IN2}
N -20 -130 -20 -110 {lab=IN2}
N -300 -110 -300 -90 {lab=IN2}
N -360 -150 -300 -150 {lab=IN1}
N -360 -150 -360 -20 {lab=IN1}
N -150 -70 -150 -40 {lab=#net1}
N -360 40 -360 60 {lab=0}
N -360 60 -150 60 {lab=0}
N -150 60 -20 60 {lab=0}
N -20 -50 -20 60 {lab=0}
N -150 20 -150 60 {lab=0}
N -300 -30 -300 60 {lab=0}
C {/home/dat02/vlsi/xor/xor.sym} -220 -250 0 0 {name=x1}
C {vsource.sym} -150 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {capa.sym} -20 -80 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -300 -60 0 0 {name=VB
value="PULSE(0 1.8 0 100p 100p 5n 10n)"
 savecurrent=false}
C {vsource.sym} -360 10 0 0 {name=VA
value="PULSE(0 1.8 0 100p 100p 10n 20n)"
 savecurrent=false}
C {gnd.sym} -150 60 0 0 {name=l1 lab=0}
C {code_shown.sym} -380 160 0 0 {name=SIM
only_toplevel=true
value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 10p 40n
.save all
"}
C {lab_pin.sym} -360 -150 0 0 {name=p1 sig_type=std_logic lab=IN1}
C {lab_pin.sym} -300 -110 0 0 {name=p2 sig_type=std_logic lab=IN2}
C {lab_pin.sym} -20 -130 0 1 {name=p3 sig_type=std_logic lab=OUT}
