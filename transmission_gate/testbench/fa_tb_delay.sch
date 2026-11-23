v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 -1780 630 -1780 {lab=A}
N 930 -1780 1070 -1780 {lab=Sum}
N 430 -1780 490 -1780 {lab=A}
N 1250 -1830 1250 -1740 {lab=#net1}
N 1210 -1860 1210 -1850 {lab=Sum}
N 1210 -1850 1210 -1710 {lab=Sum}
N 1250 -1780 1510 -1780 {lab=#net1}
N 1070 -1780 1210 -1780 {lab=Sum}
N 1690 -1830 1690 -1740 {lab=#net2}
N 1650 -1860 1650 -1850 {lab=#net1}
N 1650 -1850 1650 -1710 {lab=#net1}
N 1510 -1780 1650 -1780 {lab=#net1}
N 540 -1760 630 -1760 {lab=B}
N 550 -1760 550 -1650 {lab=B}
N 620 -1740 630 -1740 {lab=Cin}
N 590 -1740 620 -1740 {lab=Cin}
N 600 -1740 600 -1680 {lab=Cin}
N 600 -1720 630 -1720 {lab=Cin}
N 350 -1640 350 -1580 {lab=0}
N 350 -1580 600 -1580 {lab=0}
N 550 -1590 550 -1580 {lab=0}
N 600 -1620 600 -1580 {lab=0}
N 1250 -1560 1250 -1470 {lab=#net3}
N 1210 -1590 1210 -1580 {lab=Cout}
N 1210 -1580 1210 -1440 {lab=Cout}
N 1250 -1510 1510 -1510 {lab=#net3}
N 1690 -1560 1690 -1470 {lab=#net4}
N 1650 -1590 1650 -1580 {lab=#net3}
N 1650 -1580 1650 -1440 {lab=#net3}
N 1510 -1510 1650 -1510 {lab=#net3}
N 930 -1760 1020 -1760 {lab=Cout}
N 1020 -1590 1210 -1590 {lab=Cout}
N 1020 -1760 1020 -1590 {lab=Cout}
N 630 -1700 630 -1580 {lab=0}
N 600 -1580 630 -1580 {lab=0}
C {opin.sym} 1020 -1690 0 0 {name=p9 lab=Cout}
C {ipin.sym} 430 -1780 0 0 {name=p10 lab=A}
C {ipin.sym} 540 -1760 0 0 {name=p11 lab=B}
C {ipin.sym} 590 -1740 0 0 {name=p12 lab=Cin}
C {opin.sym} 1060 -1780 0 0 {name=p6 lab=Sum}
C {vsource.sym} 460 -1750 0 0 {name=VA value=1.8
savecurrent=false}
C {gnd.sym} 460 -1720 0 0 {name=l1 lab=GND}
C {code_shown.sym} 1040 -2230 0 0 {name=sim only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
tran 0.1p 20n
meas tran tpdr trig v(b) val=0.9 rise=2 targ v(sum) val=0.9 rise=2
meas tran tpdf trig v(b) val=0.9 fall=2 targ v(sum) val=0.9 fall=2
let tpd = (tpdr + tpdf) / 2
print tpd
.endc
"}
C {vsource.sym} 550 -1620 0 0 {name=VB value="PULSE 0 1.8 0 20p 20p 2n 4n" 
 savecurrent=false}
C {vsource.sym} 350 -1670 0 0 {name=V1 value=1.8
 savecurrent=false}
C {vdd.sym} 350 -1700 0 0 {name=l13 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 1230 -1860 0 0 {name=M23
W=2.36
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
C {sky130_fd_pr/nfet3_01v8.sym} 1230 -1710 0 0 {name=M24
W=0.765
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
C {gnd.sym} 1250 -1680 0 0 {name=l15 lab=GND}
C {vdd.sym} 1250 -1890 0 0 {name=l16 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 1670 -1860 0 0 {name=M25
W=2.36
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
C {sky130_fd_pr/nfet3_01v8.sym} 1670 -1710 0 0 {name=M26
W=0.765
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
C {gnd.sym} 1690 -1680 0 0 {name=l17 lab=GND}
C {vdd.sym} 1690 -1890 0 0 {name=l18 lab=VDD}
C {vsource.sym} 600 -1650 0 0 {name=VCin value=1.8 
 savecurrent=false}
C {/home/dat02/projects/cmos-full-adder-sky130/schematic/fulladder.sym} 780 -1740 0 0 {name=x1}
C {gnd.sym} 350 -1580 0 0 {name=l2 lab=0}
C {sky130_fd_pr/pfet3_01v8.sym} 1230 -1590 0 0 {name=M1
W=2.36
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
C {sky130_fd_pr/nfet3_01v8.sym} 1230 -1440 0 0 {name=M2
W=0.765
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
C {gnd.sym} 1250 -1410 0 0 {name=l3 lab=GND}
C {vdd.sym} 1250 -1620 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 1670 -1590 0 0 {name=M3
W=2.36
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
C {sky130_fd_pr/nfet3_01v8.sym} 1670 -1440 0 0 {name=M4
W=0.765
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
C {gnd.sym} 1690 -1410 0 0 {name=l5 lab=GND}
C {vdd.sym} 1690 -1620 0 0 {name=l6 lab=VDD}
