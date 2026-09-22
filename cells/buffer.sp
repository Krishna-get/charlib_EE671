* Sky130 buffer schematic netlist
.subckt inv1 in vdd vss vout wp1=1.26 wn1=0.42 L1=0.15
xm01 vout in vdd vdd sky130_fd_pr__pfet_01v8 W={wp1} L={L1} AS={wp1*2*L1} AD={wp1*2*L1} PS={2*(wp1+2*L1)} PD={2*(wp1+2*L1)}
xm02 vout in vss vss sky130_fd_pr__nfet_01v8 W={wn1} L={L1} AS={wn1*2*L1} AD={wn1*2*L1} PS={2*(wn1+2*L1)} PD={2*(wn1+2*L1)}
.ends inv1

.subckt buffer inp out_buff VDD GND
Xinv1 inp VDD GND out1 inv1 wp1=1.26 wn1=0.42
Xinv2 out1 VDD GND out_buff inv1 wp1=1.474 wn1=0.487
.ends buffer