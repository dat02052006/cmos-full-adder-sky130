v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 130 340 130 {lab=A}
N 180 130 180 170 {lab=A}
N 230 150 340 150 {lab=B}
N 230 150 230 240 {lab=B}
N 230 240 230 250 {lab=B}
N 270 330 270 340 {lab=Cin}
N 70 230 70 280 {lab=VDD}
N 70 220 70 230 {lab=VDD}
N 70 340 70 440 {lab=0}
N 70 400 270 400 {lab=0}
N 230 310 230 400 {lab=0}
N 180 230 180 400 {lab=0}
N 1080 480 1220 480 {lab=#net1}
N 1080 420 1220 420 {lab=VDD}
N 1160 640 1160 670 {lab=#net2}
N 1160 480 1160 580 {lab=#net1}
N 1040 610 1120 610 {lab=Cout}
N 1120 450 1180 450 {lab=Cin}
N 1100 450 1120 450 {lab=Cin}
N 1100 450 1100 700 {lab=Cin}
N 1100 700 1120 700 {lab=Cin}
N 1160 540 1340 540 {lab=#net1}
N 1040 450 1040 610 {lab=Cout}
N 1430 480 1570 480 {lab=#net3}
N 1430 420 1570 420 {lab=VDD}
N 1510 640 1510 670 {lab=#net4}
N 1510 480 1510 580 {lab=#net3}
N 1390 610 1470 610 {lab=#net1}
N 1470 450 1530 450 {lab=Cin}
N 1450 450 1470 450 {lab=Cin}
N 1450 450 1450 700 {lab=Cin}
N 1450 700 1470 700 {lab=Cin}
N 1510 540 1690 540 {lab=#net3}
N 1390 450 1390 610 {lab=#net1}
N 1340 540 1390 540 {lab=#net1}
N 1070 40 1210 40 {lab=#net5}
N 1070 -20 1210 -20 {lab=VDD}
N 1150 200 1150 230 {lab=#net6}
N 1150 40 1150 140 {lab=#net5}
N 1030 170 1110 170 {lab=Sum}
N 1110 10 1170 10 {lab=Cin}
N 1090 10 1110 10 {lab=Cin}
N 1090 10 1090 260 {lab=Cin}
N 1090 260 1110 260 {lab=Cin}
N 1150 100 1350 100 {lab=#net5}
N 1030 10 1030 170 {lab=Sum}
N 1420 50 1560 50 {lab=#net7}
N 1420 -10 1560 -10 {lab=VDD}
N 1500 210 1500 240 {lab=#net8}
N 1500 50 1500 150 {lab=#net7}
N 1380 180 1460 180 {lab=#net5}
N 1460 20 1520 20 {lab=Cin}
N 1440 20 1460 20 {lab=Cin}
N 1440 20 1440 270 {lab=Cin}
N 1440 270 1460 270 {lab=Cin}
N 1500 110 1700 110 {lab=#net7}
N 1380 20 1380 180 {lab=#net5}
N 1350 100 1380 100 {lab=#net5}
N 690 90 1030 90 {lab=Sum}
N 980 450 1040 450 {lab=Cout}
N 980 160 980 450 {lab=Cout}
N 980 150 980 160 {lab=Cout}
N 270 320 1300 320 {lab=Cin}
N 1090 260 1090 320 {lab=Cin}
N 1300 320 1440 320 {lab=Cin}
N 1440 270 1440 320 {lab=Cin}
N 1180 320 1180 450 {lab=Cin}
N 1440 320 1510 320 {lab=Cin}
N 1510 320 1510 450 {lab=Cin}
N 980 110 980 150 {lab=Cout}
N 70 90 340 90 {lab=VDD}
N 70 90 70 220 {lab=VDD}
N 110 110 340 110 {lab=0}
N 110 110 110 400 {lab=0}
N 640 90 690 90 {lab=Sum}
N 640 110 690 110 {lab=Cout}
N 690 110 980 110 {lab=Cout}
N 270 170 340 170 {lab=Cin}
N 270 170 270 330 {lab=Cin}
C {/home/dat02/projects/cmos-full-adder-sky130/schematic/fulladder.sym} 490 130 0 0 {name=x1}
C {vsource.sym} 70 310 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 180 200 0 0 {name=VA value="PULSE 0 1.8 0 50p 50p 2n 4n" savecurrent=false}
C {vsource.sym} 230 280 0 0 {name=VB value=1.8 savecurrent=false}
C {vsource.sym} 270 370 0 0 {name=VCin value=1.8 savecurrent=false}
C {gnd.sym} 70 440 0 0 {name=l1 lab=0}
C {opin.sym} 780 110 0 0 {name=p1 lab=Cout
}
C {opin.sym} 790 90 0 0 {name=p2 lab=Sum
}
C {lab_pin.sym} 180 130 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} 230 150 0 0 {name=p4 sig_type=std_logic lab=B}
C {lab_pin.sym} 270 170 0 0 {name=p5 sig_type=std_logic lab=Cin}
C {sky130_fd_pr/nfet3_01v8.sym} 1140 610 0 0 {name=M29
W=1.645
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1060 450 0 0 {name=M30
W=2.54
L=0.15
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1200 450 0 0 {name=M31
W=2.54
L=0.15
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1140 700 0 0 {name=M32
W=1.645
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1160 730 0 0 {name=l15 lab=GND}
C {vdd.sym} 1150 420 0 0 {name=l16 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 1490 610 0 0 {name=M1
W=1.645
L=0.15
body=GND
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1410 450 0 0 {name=M2
W=2.54
L=0.15
body=VDD
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1550 450 0 0 {name=M3
W=2.54
L=0.15
body=VDD
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1490 700 0 0 {name=M4
W=1.645
L=0.15
body=GND
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1510 730 0 0 {name=l3 lab=GND}
C {vdd.sym} 1500 420 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 1130 170 0 0 {name=M5
W=0.84
L=0.15
body=GND
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1050 10 0 0 {name=M6
W=1.295
L=0.15
body=VDD
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1190 10 0 0 {name=M7
W=1.295
L=0.15
body=VDD
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1130 260 0 0 {name=M8
W=0.84
L=0.15
body=GND
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1150 290 0 0 {name=l5 lab=GND}
C {vdd.sym} 1140 -20 0 0 {name=l6 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 1480 180 0 0 {name=M9
W=0.84
L=0.15
body=GND
nf=1
mult=16
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1400 20 0 0 {name=M10
W=1.295
L=0.15
body=VDD
nf=1
mult=16
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1540 20 0 0 {name=M11
W=1.295
L=0.15
body=VDD
nf=1
mult=16
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1480 270 0 0 {name=M12
W=0.84
L=0.15
body=GND
nf=1
mult=16
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 1500 300 0 0 {name=l7 lab=GND}
C {vdd.sym} 1490 -10 0 0 {name=l8 lab=VDD}
C {code_shown.sym} 2050 220 0 0 {name=s1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/dat02/projects/cmos-full-adder-sky130/layout/fulladder_pex.spice
.control
	tran 0.1p 10n
	meas tran tpdr trig v(a) val=0.9 rise=1 targ v(sum) val=0.9 rise=1
	meas tran tpdf trig v(a) val=0.9 fall=1 targ v(sum) val=0.9 fall=1
	let tpd = (tpdr + tpdf) / 2
	print tpd
.endc
"}
C {lab_pin.sym} 70 90 0 0 {name=p6 sig_type=std_logic lab=VDD}
