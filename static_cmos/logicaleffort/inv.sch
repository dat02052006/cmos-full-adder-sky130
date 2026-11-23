v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -650 500 -550 {lab=#net1}
N 670 -650 670 -550 {lab=in}
N 830 -650 830 -550 {lab=out}
N 1000 -650 1000 -550 {lab=#net2}
N 1170 -650 1170 -550 {lab=#net3}
N 830 -790 830 -710 {lab=VDD}
N 670 -760 670 -710 {lab=VDD}
N 670 -760 830 -760 {lab=VDD}
N 500 -760 500 -710 {lab=VDD}
N 500 -760 670 -760 {lab=VDD}
N 1000 -760 1000 -710 {lab=VDD}
N 830 -760 1000 -760 {lab=VDD}
N 1000 -760 1170 -760 {lab=VDD}
N 1170 -760 1170 -710 {lab=VDD}
N 830 -490 830 -440 {lab=0}
N 670 -490 670 -460 {lab=0}
N 670 -460 830 -460 {lab=0}
N 500 -490 500 -460 {lab=0}
N 500 -460 670 -460 {lab=0}
N 1000 -490 1000 -460 {lab=0}
N 830 -460 1000 -460 {lab=0}
N 1170 -490 1170 -460 {lab=0}
N 1000 -460 1170 -460 {lab=0}
N 630 -680 630 -520 {lab=#net1}
N 790 -680 790 -520 {lab=in}
N 960 -680 960 -520 {lab=out}
N 1130 -680 1130 -520 {lab=#net2}
N 460 -680 460 -520 {lab=#net4}
N 500 -600 630 -600 {lab=#net1}
N 670 -600 790 -600 {lab=in}
N 830 -600 960 -600 {lab=out}
N 1000 -600 1130 -600 {lab=#net2}
N 380 -600 460 -600 {lab=#net4}
N 380 -600 380 -570 {lab=#net4}
N 380 -510 380 -440 {lab=0}
N 380 -440 830 -440 {lab=0}
N 230 -610 230 -570 {lab=0}
N 230 -720 230 -670 {lab=VDD}
N 670 -520 670 -490 {lab=0}
N 830 -520 830 -490 {lab=0}
N 1000 -520 1000 -490 {lab=0}
N 1170 -520 1170 -490 {lab=0}
N 500 -710 500 -680 {lab=VDD}
N 670 -710 670 -680 {lab=VDD}
N 830 -710 830 -680 {lab=VDD}
N 1000 -710 1000 -680 {lab=VDD}
N 1170 -710 1170 -680 {lab=VDD}
N 500 -520 500 -490 {lab=0}
C {vdd.sym} 830 -790 0 0 {name=l1 lab=VDD}
C {gnd.sym} 830 -440 0 0 {name=l2 lab=0}
C {lab_pin.sym} 750 -600 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 890 -600 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 380 -540 0 0 {name=V1 value="PULSE(0 1.8 0 20p 20p 2n 4n)" savecurrent=false}
C {code_shown.sym} 1390 -900 0 0 {name=s1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param h = 4
.param wp = 1.295

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
    tran 10p 20n
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
C {vsource.sym} 230 -640 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} 230 -720 0 0 {name=l3 lab=VDD}
C {gnd.sym} 230 -570 0 0 {name=l5 lab=0}
C {sky130_fd_pr/pfet_01v8.sym} 480 -680 0 0 {name=M1
W=wp
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -680 0 0 {name=M2
W=wp
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 810 -680 0 0 {name=M3
W=wp
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 980 -680 0 0 {name=M4
W=wp
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 1150 -680 0 0 {name=M5
W=wp
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 480 -520 0 0 {name=M6
W=0.42
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 650 -520 0 0 {name=M7
W=0.42
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 810 -520 0 0 {name=M8
W=0.42
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 980 -520 0 0 {name=M9
W=0.42
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 1150 -520 0 0 {name=M10
W=0.42
L=0.15
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
