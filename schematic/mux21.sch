v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 -180 -170 -40 {lab=Y}
N -230 -180 -230 -40 {lab=A}
N -170 120 -170 260 {lab=Y}
N -230 120 -230 260 {lab=B}
N -340 -120 -230 -120 {lab=A}
N -340 190 -230 190 {lab=B}
N -450 0 -450 10 {lab=#net1}
N -450 10 -450 90 {lab=#net1}
N -530 -30 -490 -30 {lab=S}
N -530 120 -490 120 {lab=S}
N -530 -30 -530 120 {lab=S}
N -590 40 -530 40 {lab=S}
N -440 40 -200 40 {lab=#net1}
N -200 0 -200 40 {lab=#net1}
N -200 40 -200 80 {lab=#net1}
N -450 40 -440 40 {lab=#net1}
N -530 -220 -530 -30 {lab=S}
N -530 -220 -200 -220 {lab=S}
N -530 310 -200 310 {lab=S}
N -530 120 -530 310 {lab=S}
N -170 -120 -80 -120 {lab=Y}
N -170 190 -80 190 {lab=Y}
N -80 -120 -80 190 {lab=Y}
N -80 50 -20 50 {lab=Y}
N -200 300 -200 310 {lab=S}
N -450 150 -450 160 {lab=0}
N -450 160 -450 180 {lab=0}
N -450 -70 -450 -60 {lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} -200 -200 3 1 {name=M1
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} -200 -20 1 1 {name=M2
W=1
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
C {sky130_fd_pr/pfet3_01v8.sym} -200 100 3 1 {name=M3
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} -200 280 1 1 {name=M4
W=1
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
C {ipin.sym} -340 -120 0 0 {name=p1 lab=A}
C {ipin.sym} -340 190 0 0 {name=p2 lab=B}
C {sky130_fd_pr/pfet3_01v8.sym} -470 -30 0 0 {name=M5
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} -470 120 0 0 {name=M6
W=1
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
C {ipin.sym} -590 40 0 0 {name=p3 lab=S}
C {opin.sym} -20 50 0 0 {name=p4 lab=Y}
C {gnd.sym} -450 180 0 0 {name=l1 lab=0}
C {iopin.sym} -450 -70 3 0 {name=p5 lab=VDD}
