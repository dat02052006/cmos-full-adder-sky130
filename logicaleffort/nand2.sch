v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1530 -790 1670 -790 {lab=#net1}
N 1530 -850 1670 -850 {lab=VDD}
N 1610 -630 1610 -600 {lab=#net2}
N 1610 -790 1610 -690 {lab=#net1}
N 1490 -660 1570 -660 {lab=#net3}
N 1490 -820 1490 -660 {lab=#net3}
N 1570 -820 1630 -820 {lab=VDD}
N 1550 -820 1570 -820 {lab=VDD}
N 1550 -820 1550 -570 {lab=VDD}
N 1550 -570 1570 -570 {lab=VDD}
N 1790 -790 1930 -790 {lab=in}
N 1790 -850 1930 -850 {lab=VDD}
N 1870 -630 1870 -600 {lab=#net4}
N 1870 -790 1870 -690 {lab=in}
N 1750 -660 1830 -660 {lab=#net1}
N 1750 -820 1750 -660 {lab=#net1}
N 1830 -820 1890 -820 {lab=VDD}
N 1810 -820 1830 -820 {lab=VDD}
N 1810 -820 1810 -570 {lab=VDD}
N 1810 -570 1830 -570 {lab=VDD}
N 2040 -790 2180 -790 {lab=out}
N 2040 -850 2180 -850 {lab=VDD}
N 2120 -630 2120 -600 {lab=#net5}
N 2120 -790 2120 -690 {lab=out}
N 2000 -660 2080 -660 {lab=in}
N 2000 -820 2000 -660 {lab=in}
N 2080 -820 2140 -820 {lab=VDD}
N 2060 -820 2080 -820 {lab=VDD}
N 2060 -820 2060 -570 {lab=VDD}
N 2060 -570 2080 -570 {lab=VDD}
N 2300 -790 2440 -790 {lab=#net6}
N 2300 -850 2440 -850 {lab=VDD}
N 2380 -630 2380 -600 {lab=#net7}
N 2380 -790 2380 -690 {lab=#net6}
N 2260 -660 2340 -660 {lab=out}
N 2260 -820 2260 -660 {lab=out}
N 2340 -820 2400 -820 {lab=VDD}
N 2320 -820 2340 -820 {lab=VDD}
N 2320 -820 2320 -570 {lab=VDD}
N 2320 -570 2340 -570 {lab=VDD}
N 2570 -790 2710 -790 {lab=#net8}
N 2570 -850 2710 -850 {lab=VDD}
N 2650 -630 2650 -600 {lab=#net9}
N 2650 -790 2650 -690 {lab=#net8}
N 2530 -660 2610 -660 {lab=#net6}
N 2530 -820 2530 -660 {lab=#net6}
N 2610 -820 2670 -820 {lab=VDD}
N 2590 -820 2610 -820 {lab=VDD}
N 2590 -820 2590 -570 {lab=VDD}
N 2590 -570 2610 -570 {lab=VDD}
N 1610 -730 1750 -730 {lab=#net1}
N 1870 -730 2000 -730 {lab=in}
N 2120 -730 2260 -730 {lab=out}
N 2380 -730 2530 -730 {lab=#net6}
N 1270 -580 1270 -480 {lab=VDD}
N 1280 -500 2590 -500 {lab=VDD}
N 2590 -570 2590 -500 {lab=VDD}
N 2320 -570 2320 -500 {lab=VDD}
N 2060 -570 2060 -500 {lab=VDD}
N 1810 -570 1810 -500 {lab=VDD}
N 1550 -570 1550 -500 {lab=VDD}
N 1270 -500 1280 -500 {lab=VDD}
N 1420 -660 1420 -640 {lab=#net3}
N 1430 -660 1490 -660 {lab=#net3}
N 1270 -420 1420 -420 {lab=GND}
N 1420 -540 1420 -420 {lab=GND}
N 1420 -580 1420 -540 {lab=GND}
N 1420 -660 1430 -660 {lab=#net3}
C {sky130_fd_pr/nfet3_01v8.sym} 1590 -660 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 1510 -820 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 1650 -820 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 1590 -570 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8.sym} 1850 -660 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1770 -820 0 0 {name=M6
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
C {sky130_fd_pr/pfet3_01v8.sym} 1910 -820 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8.sym} 1850 -570 0 0 {name=M8
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
C {sky130_fd_pr/nfet3_01v8.sym} 2100 -660 0 0 {name=M9
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
C {sky130_fd_pr/pfet3_01v8.sym} 2020 -820 0 0 {name=M10
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
C {sky130_fd_pr/pfet3_01v8.sym} 2160 -820 0 0 {name=M11
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
C {sky130_fd_pr/nfet3_01v8.sym} 2100 -570 0 0 {name=M12
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
C {sky130_fd_pr/nfet3_01v8.sym} 2360 -660 0 0 {name=M13
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
C {sky130_fd_pr/pfet3_01v8.sym} 2280 -820 0 0 {name=M14
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
C {sky130_fd_pr/pfet3_01v8.sym} 2420 -820 0 0 {name=M15
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
C {sky130_fd_pr/nfet3_01v8.sym} 2360 -570 0 0 {name=M16
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
C {sky130_fd_pr/nfet3_01v8.sym} 2630 -660 0 0 {name=M17
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
C {sky130_fd_pr/pfet3_01v8.sym} 2550 -820 0 0 {name=M18
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
C {sky130_fd_pr/pfet3_01v8.sym} 2690 -820 0 0 {name=M19
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
C {sky130_fd_pr/nfet3_01v8.sym} 2630 -570 0 0 {name=M20
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
C {lab_pin.sym} 1940 -730 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 2190 -730 0 0 {name=p2 sig_type=std_logic lab=out}
C {gnd.sym} 1610 -540 0 0 {name=l1 lab=GND}
C {gnd.sym} 1870 -540 0 0 {name=l2 lab=GND}
C {gnd.sym} 2120 -540 0 0 {name=l3 lab=GND}
C {gnd.sym} 2380 -540 0 0 {name=l4 lab=GND}
C {gnd.sym} 2650 -540 0 0 {name=l5 lab=GND}
C {vdd.sym} 1600 -850 0 0 {name=l6 lab=VDD}
C {vdd.sym} 1860 -850 0 0 {name=l7 lab=VDD}
C {vdd.sym} 2110 -850 0 0 {name=l8 lab=VDD}
C {vdd.sym} 2370 -850 0 0 {name=l9 lab=VDD}
C {vdd.sym} 2640 -850 0 0 {name=l10 lab=VDD}
C {vsource.sym} 1270 -450 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 1270 -580 0 0 {name=l11 lab=VDD}
C {gnd.sym} 1270 -420 0 0 {name=l12 lab=GND}
C {code_shown.sym} 2870 -930 0 0 {name=s1 only_toplevel=false value="
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
  meas tran tr trig v(in) val = 0.18 rise=1 targ v(in) val=1.62 rise=1
  meas tran tf trig v(in) val = 1.62 fall=1 targ v(in) val=0.18 fall=1
  print hall tpdrall tpdfall tpdall diffall
.endc
"}
C {vsource.sym} 1420 -610 0 0 {name=V2 value="PULSE 0 1.8 0 20p 20p 2n 4n" savecurrent=false}
