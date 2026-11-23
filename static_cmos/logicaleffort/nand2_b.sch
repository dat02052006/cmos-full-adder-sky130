v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 750 -1270 890 -1270 {lab=#net1}
N 750 -1330 890 -1330 {lab=VDD}
N 830 -1110 830 -1080 {lab=#net2}
N 830 -1270 830 -1170 {lab=#net1}
N 710 -1140 790 -1140 {lab=VDD}
N 710 -1300 710 -1140 {lab=VDD}
N 790 -1300 850 -1300 {lab=#net3}
N 770 -1300 790 -1300 {lab=#net3}
N 770 -1300 770 -1050 {lab=#net3}
N 770 -1050 790 -1050 {lab=#net3}
N 1010 -1270 1150 -1270 {lab=in}
N 1010 -1330 1150 -1330 {lab=VDD}
N 1090 -1110 1090 -1080 {lab=#net4}
N 1090 -1270 1090 -1170 {lab=in}
N 970 -1140 1050 -1140 {lab=VDD}
N 970 -1300 970 -1140 {lab=VDD}
N 1050 -1300 1110 -1300 {lab=#net1}
N 1030 -1300 1050 -1300 {lab=#net1}
N 1030 -1300 1030 -1050 {lab=#net1}
N 1030 -1050 1050 -1050 {lab=#net1}
N 1260 -1270 1400 -1270 {lab=out}
N 1260 -1330 1400 -1330 {lab=VDD}
N 1340 -1110 1340 -1080 {lab=#net5}
N 1340 -1270 1340 -1170 {lab=out}
N 1220 -1140 1300 -1140 {lab=VDD}
N 1220 -1300 1220 -1140 {lab=VDD}
N 1300 -1300 1360 -1300 {lab=in}
N 1280 -1300 1300 -1300 {lab=in}
N 1280 -1300 1280 -1050 {lab=in}
N 1280 -1050 1300 -1050 {lab=in}
N 1520 -1270 1660 -1270 {lab=#net6}
N 1520 -1330 1660 -1330 {lab=VDD}
N 1600 -1110 1600 -1080 {lab=#net7}
N 1600 -1270 1600 -1170 {lab=#net6}
N 1480 -1140 1560 -1140 {lab=VDD}
N 1480 -1300 1480 -1140 {lab=VDD}
N 1560 -1300 1620 -1300 {lab=out}
N 1540 -1300 1560 -1300 {lab=out}
N 1540 -1300 1540 -1050 {lab=out}
N 1540 -1050 1560 -1050 {lab=out}
N 1790 -1270 1930 -1270 {lab=#net8}
N 1790 -1330 1930 -1330 {lab=VDD}
N 1870 -1110 1870 -1080 {lab=#net9}
N 1870 -1270 1870 -1170 {lab=#net8}
N 1750 -1140 1830 -1140 {lab=VDD}
N 1750 -1300 1750 -1140 {lab=VDD}
N 1830 -1300 1890 -1300 {lab=#net6}
N 1810 -1300 1830 -1300 {lab=#net6}
N 1810 -1300 1810 -1050 {lab=#net6}
N 1810 -1050 1830 -1050 {lab=#net6}
N 490 -1060 490 -960 {lab=VDD}
N 490 -900 640 -900 {lab=GND}
N 640 -1020 640 -900 {lab=GND}
N 640 -1060 640 -1020 {lab=GND}
N 640 -1120 770 -1120 {lab=#net3}
N 970 -1140 970 -980 {lab=VDD}
N 490 -980 1760 -980 {lab=VDD}
N 1220 -1140 1220 -980 {lab=VDD}
N 1480 -1130 1480 -980 {lab=VDD}
N 1480 -1140 1480 -1130 {lab=VDD}
N 1750 -1140 1750 -980 {lab=VDD}
N 710 -1140 710 -980 {lab=VDD}
N 830 -1220 1030 -1220 {lab=#net1}
N 1090 -1210 1280 -1210 {lab=in}
N 1340 -1210 1540 -1210 {lab=out}
N 1600 -1210 1810 -1210 {lab=#net6}
C {sky130_fd_pr/nfet3_01v8.sym} 810 -1140 0 0 {name=M1
W=0.84
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
C {sky130_fd_pr/pfet3_01v8.sym} 730 -1300 0 0 {name=M2
W=1.295
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
C {sky130_fd_pr/pfet3_01v8.sym} 870 -1300 0 0 {name=M3
W=1.295
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
C {sky130_fd_pr/nfet3_01v8.sym} 810 -1050 0 0 {name=M4
W=0.84
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
C {sky130_fd_pr/nfet3_01v8.sym} 1070 -1140 0 0 {name=M5
W=0.84
L=0.15
body=GND
nf=1
mult=h
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 990 -1300 0 0 {name=M6
W=1.295
L=0.15
body=VDD
nf=1
mult=h
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1130 -1300 0 0 {name=M7
W=1.295
L=0.15
body=VDD
nf=1
mult=h
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1070 -1050 0 0 {name=M8
W=0.84
L=0.15
body=GND
nf=1
mult=h
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1320 -1140 0 0 {name=M9
W=0.84
L=0.15
body=GND
nf=1
mult=h**2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1240 -1300 0 0 {name=M10
W=1.295
L=0.15
body=VDD
nf=1
mult=h**2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1380 -1300 0 0 {name=M11
W=1.295
L=0.15
body=VDD
nf=1
mult=h**2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1320 -1050 0 0 {name=M12
W=0.84
L=0.15
body=GND
nf=1
mult=h**2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1580 -1140 0 0 {name=M13
W=0.84
L=0.15
body=GND
nf=1
mult=h**3
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1500 -1300 0 0 {name=M14
W=1.295
L=0.15
body=VDD
nf=1
mult=h**3
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1640 -1300 0 0 {name=M15
W=1.295
L=0.15
body=VDD
nf=1
mult=h**3
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1580 -1050 0 0 {name=M16
W=0.84
L=0.15
body=GND
nf=1
mult=h**3
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1850 -1140 0 0 {name=M17
W=0.84
L=0.15
body=GND
nf=1
mult=h**4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1770 -1300 0 0 {name=M18
W=1.295
L=0.15
body=VDD
nf=1
mult=h**4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1910 -1300 0 0 {name=M19
W=1.295
L=0.15
body=VDD
nf=1
mult=h**4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1850 -1050 0 0 {name=M20
W=0.84
L=0.15
body=GND
nf=1
mult=h**4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 1170 -1210 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 1410 -1210 0 0 {name=p2 sig_type=std_logic lab=out}
C {gnd.sym} 830 -1020 0 0 {name=l1 lab=GND}
C {gnd.sym} 1090 -1020 0 0 {name=l2 lab=GND}
C {gnd.sym} 1340 -1020 0 0 {name=l3 lab=GND}
C {gnd.sym} 1600 -1020 0 0 {name=l4 lab=GND}
C {gnd.sym} 1870 -1020 0 0 {name=l5 lab=GND}
C {vdd.sym} 820 -1330 0 0 {name=l6 lab=VDD}
C {vdd.sym} 1080 -1330 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1330 -1330 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1590 -1330 0 0 {name=l9 lab=VDD}
C {vdd.sym} 1860 -1330 0 0 {name=l10 lab=VDD}
C {vsource.sym} 490 -930 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 490 -1060 0 0 {name=l11 lab=VDD}
C {gnd.sym} 490 -900 0 0 {name=l12 lab=GND}
C {code_shown.sym} 2090 -1410 0 0 {name=s1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param h = 4
.control
  save in out
  let start = 1
  let stop = 8
  let step = 1
  let cur = start
  let n = ((stop - start) / step) + 1
  let hall = unitvec(n)
  let tpdrall = unitvec(n)
  let tpdfall = unitvec(n)
  let tpdall = unitvec(n)
  let diffall = unitvec(n)
  let m = 0
  while m < n
    let hv = cur
    alterparam h = $&hv
    reset
    tran 0.1p 20n
    meas tran tpdr trig v(in) val=0.9 fall=1 targ v(out) val=0.9 rise=1
    meas tran tpdf trig v(in) val=0.9 rise=1 targ v(out) val=0.9 fall=1
    let hall[m] = hv
    let tpdrall[m] = tpdr
    let tpdfall[m] = tpdf
    let tpdall[m] = (tpdr + tpdf) / 2
    let diffall[m] = abs(tpdr - tpdf)
    let cur = cur + step 
    let m = m + 1
  end
  print hall tpdrall tpdfall tpdall diffall
.endc
"}
C {vsource.sym} 640 -1090 0 0 {name=V2 value="PULSE 0 1.8 0 20p 20p 2n 4n" savecurrent=false}
