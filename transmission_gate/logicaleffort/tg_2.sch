v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -560 -130 -420 {lab=out}
N -190 -560 -190 -420 {lab=GND}
N -440 -410 -440 -320 {lab=#net1}
N -480 -440 -480 -430 {lab=in}
N -480 -430 -480 -290 {lab=in}
N -620 -360 -480 -360 {lab=in}
N -960 -400 -960 -310 {lab=#net2}
N -1000 -430 -1000 -420 {lab=#net3}
N -1000 -420 -1000 -280 {lab=#net3}
N -1140 -350 -1000 -350 {lab=#net3}
N -740 -360 -620 -360 {lab=in}
N 360 -410 360 -320 {lab=#net4}
N 320 -440 320 -430 {lab=#net5}
N 320 -430 320 -290 {lab=#net5}
N 360 -360 620 -360 {lab=#net4}
N 180 -360 320 -360 {lab=#net5}
N 60 -410 60 -320 {lab=#net5}
N 20 -440 20 -430 {lab=out}
N 20 -430 20 -290 {lab=out}
N 60 -360 180 -360 {lab=#net5}
N -740 -400 -740 -310 {lab=in}
N -780 -430 -780 -420 {lab=#net2}
N -780 -420 -780 -280 {lab=#net2}
N -960 -350 -780 -350 {lab=#net2}
N -130 -310 -130 -170 {lab=out}
N -190 -310 -190 -170 {lab=#net6}
N -160 -380 -160 -350 {lab=#net1}
N -440 -370 -160 -370 {lab=#net1}
N -510 -600 -160 -600 {lab=in}
N -510 -600 -510 -360 {lab=in}
N -130 -490 -80 -490 {lab=out}
N -130 -240 -80 -240 {lab=out}
N -80 -490 -80 -240 {lab=out}
N -80 -370 20 -370 {lab=out}
N -500 -130 -160 -130 {lab=in}
N -500 -360 -500 -130 {lab=in}
N -280 -470 -280 -440 {lab=GND}
N -280 -470 -190 -470 {lab=GND}
N -290 -220 -190 -220 {lab=#net6}
C {sky130_fd_pr/pfet3_01v8.sym} -160 -580 3 1 {name=M13
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
C {sky130_fd_pr/nfet3_01v8.sym} -160 -400 1 1 {name=M14
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
C {sky130_fd_pr/pfet3_01v8.sym} -460 -440 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8.sym} -460 -290 0 0 {name=M10
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
C {gnd.sym} -440 -260 0 0 {name=l5 lab=GND}
C {vdd.sym} -440 -470 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} -980 -430 0 0 {name=M1
W=1.295
L=0.15
body=VDD
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -980 -280 0 0 {name=M2
W=0.42
L=0.15
body=GND
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -960 -250 0 0 {name=l1 lab=GND}
C {vdd.sym} -960 -460 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 340 -440 0 0 {name=M3
W=1.295
L=0.15
body=VDD
nf=1
mult=2*h**4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 340 -290 0 0 {name=M4
W=0.42
L=0.15
body=GND
nf=1
mult=2*h**4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 360 -260 0 0 {name=l3 lab=GND}
C {vdd.sym} 360 -470 0 0 {name=l4 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 40 -440 0 0 {name=M5
W=1.295
L=0.15
body=VDD
nf=1
mult=2*h**3
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 40 -290 0 0 {name=M6
W=0.42
L=0.15
body=GND
nf=1
mult=2*h**3
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 60 -260 0 0 {name=l6 lab=GND}
C {vdd.sym} 60 -470 0 0 {name=l8 lab=VDD}
C {lab_pin.sym} -560 -360 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -20 -370 0 0 {name=p2 sig_type=std_logic lab=out}
C {code_shown.sym} 700 -530 0 0 {name=sim only_toplevel=false value="
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
    meas tran tpdr trig v(in) val=0.9 rise=1 targ v(out) val=0.9 rise=1
    meas tran tpdf trig v(in) val=0.9 fall=1 targ v(out) val=0.9 fall=1
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
C {vsource.sym} -1140 -320 0 0 {name=V1 value="PULSE 0 1.8 0 20p 20p 2n 4n" savecurrent=false}
C {vsource.sym} -1230 -310 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} -1230 -340 0 0 {name=l12 lab=VDD}
C {gnd.sym} -1140 -290 0 0 {name=l11 lab=GND}
C {gnd.sym} -1230 -280 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} -760 -430 0 0 {name=M7
W=1.295
L=0.15
body=VDD
nf=1
mult=h*2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -760 -280 0 0 {name=M8
W=0.42
L=0.15
body=GND
nf=1
mult=h*2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -740 -250 0 0 {name=l14 lab=GND}
C {vdd.sym} -740 -460 0 0 {name=l15 lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} -160 -330 3 1 {name=M11
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
C {sky130_fd_pr/nfet3_01v8.sym} -160 -150 1 1 {name=M12
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
C {gnd.sym} -280 -440 0 0 {name=l9 lab=GND}
C {vsource.sym} -290 -190 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -290 -160 0 0 {name=l10 lab=GND}
