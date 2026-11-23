v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 910 -540 910 -400 {lab=out}
N 850 -540 850 -400 {lab=#net1}
N 590 -520 590 -430 {lab=#net1}
N 550 -550 550 -540 {lab=in}
N 550 -540 550 -400 {lab=in}
N 590 -470 850 -470 {lab=#net1}
N 410 -470 550 -470 {lab=in}
N 70 -510 70 -420 {lab=#net2}
N 30 -540 30 -530 {lab=#net3}
N 30 -530 30 -390 {lab=#net3}
N -110 -460 30 -460 {lab=#net3}
N 290 -470 410 -470 {lab=in}
N 1390 -520 1390 -430 {lab=#net4}
N 1350 -550 1350 -540 {lab=#net5}
N 1350 -540 1350 -400 {lab=#net5}
N 1390 -470 1650 -470 {lab=#net4}
N 1210 -470 1350 -470 {lab=#net5}
N 1090 -520 1090 -430 {lab=#net5}
N 1050 -550 1050 -540 {lab=out}
N 1050 -540 1050 -400 {lab=out}
N 910 -470 1050 -470 {lab=out}
N 1090 -470 1210 -470 {lab=#net5}
N 290 -510 290 -420 {lab=in}
N 250 -540 250 -530 {lab=#net2}
N 250 -530 250 -390 {lab=#net2}
N 70 -460 250 -460 {lab=#net2}
C {sky130_fd_pr/pfet3_01v8.sym} 880 -560 3 1 {name=M13
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
C {sky130_fd_pr/nfet3_01v8.sym} 880 -380 1 1 {name=M14
W=0.42
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
C {sky130_fd_pr/pfet3_01v8.sym} 570 -550 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8.sym} 570 -400 0 0 {name=M10
W=0.42
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
C {gnd.sym} 590 -370 0 0 {name=l5 lab=GND}
C {vdd.sym} 590 -580 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 50 -540 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 50 -390 0 0 {name=M2
W=0.42
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
C {gnd.sym} 70 -360 0 0 {name=l1 lab=GND}
C {vdd.sym} 70 -570 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 1370 -550 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 1370 -400 0 0 {name=M4
W=0.42
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
C {gnd.sym} 1390 -370 0 0 {name=l3 lab=GND}
C {vdd.sym} 1390 -580 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 1070 -550 0 0 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 1070 -400 0 0 {name=M6
W=0.42
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
C {gnd.sym} 1090 -370 0 0 {name=l6 lab=GND}
C {vdd.sym} 1090 -580 0 0 {name=l8 lab=VDD}
C {vdd.sym} 880 -360 2 0 {name=l9 lab=VDD}
C {gnd.sym} 880 -580 2 1 {name=l10 lab=GND}
C {lab_pin.sym} 470 -470 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 990 -470 0 0 {name=p2 sig_type=std_logic lab=out}
C {code_shown.sym} 1730 -640 0 0 {name=sim only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param h = 0
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
C {vsource.sym} -110 -430 0 0 {name=V1 value="PULSE 0 1.8 0 20p 20p 2n 4n" savecurrent=false}
C {vsource.sym} -200 -420 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} -200 -450 0 0 {name=l12 lab=VDD}
C {gnd.sym} -110 -400 0 0 {name=l11 lab=GND}
C {gnd.sym} -200 -390 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 270 -540 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8.sym} 270 -390 0 0 {name=M8
W=0.42
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
C {gnd.sym} 290 -360 0 0 {name=l14 lab=GND}
C {vdd.sym} 290 -570 0 0 {name=l15 lab=VDD}
