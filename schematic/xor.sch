v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 -90 -180 -80 {lab=#net1}
N -180 -80 -180 -0 {lab=#net1}
N -180 230 -180 320 {lab=#net2}
N 140 -130 140 10 {lab=Y}
N 80 -130 80 10 {lab=B}
N 140 210 140 350 {lab=Y}
N 80 210 80 350 {lab=#net2}
N -220 -120 -220 30 {lab=A}
N -220 200 -220 210 {lab=B}
N -220 210 -220 350 {lab=B}
N -180 280 80 280 {lab=#net2}
N -360 280 -220 280 {lab=B}
N -360 -60 -220 -60 {lab=A}
N -300 120 -300 280 {lab=B}
N -300 120 20 120 {lab=B}
N 20 -60 20 120 {lab=B}
N 20 -60 80 -60 {lab=B}
N 110 -190 110 -170 {lab=A}
N -280 -190 110 -190 {lab=A}
N -280 -190 -280 -60 {lab=A}
N 110 50 110 80 {lab=#net1}
N -90 80 110 80 {lab=#net1}
N -90 -60 -90 80 {lab=#net1}
N -180 -60 -90 -60 {lab=#net1}
N 110 80 110 170 {lab=#net1}
N 110 390 110 420 {lab=A}
N 140 -60 240 -60 {lab=Y}
N 140 280 240 280 {lab=Y}
N 240 -60 240 280 {lab=Y}
N 240 80 380 80 {lab=Y}
N -180 -160 -180 -150 {lab=VDD}
N -180 -240 -180 -160 {lab=VDD}
N -180 150 -180 170 {lab=VDD}
N -330 150 -180 150 {lab=VDD}
N -330 -230 -330 150 {lab=VDD}
N -330 -230 -180 -230 {lab=VDD}
N -20 420 110 420 {lab=A}
N -20 -190 -20 420 {lab=A}
C {sky130_fd_pr/pfet3_01v8.sym} -200 -120 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} -200 30 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} -200 200 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} -200 350 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8.sym} 110 -150 3 1 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 110 30 1 1 {name=M6
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
C {sky130_fd_pr/pfet3_01v8.sym} 110 190 3 1 {name=M7
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
C {sky130_fd_pr/nfet3_01v8.sym} 110 370 1 1 {name=M8
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
C {iopin.sym} -180 -240 0 0 {name=p4 lab=VDD}
C {ipin.sym} -360 -60 0 0 {name=p1 lab=A}
C {ipin.sym} -360 280 0 0 {name=p2 lab=B}
C {opin.sym} 380 80 0 0 {name=p3 lab=Y}
C {gnd.sym} -180 60 0 0 {name=l1 lab=0}
C {gnd.sym} -180 380 0 0 {name=l2 lab=0}
