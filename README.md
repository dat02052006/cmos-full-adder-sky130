# Thiết kế, Tối ưu và Đánh giá CMOS Full Adder 1-bit (SKY130 PDK)

Dự án thực hiện thiết kế ở mức độ transistor (schematic & physical layout), tối ưu hóa kích thước kênh dẫn ($W/L$), mô phỏng kiểm chứng và phân tích biến thiên PVT cho mạch cộng toàn phần 1-bit (**1-bit Full Adder**) sử dụng công nghệ **SkyWater SKY130 130nm PDK** cùng bộ công cụ EDA mã nguồn mở.

---

## 1. Cấu trúc thư mục Repository

```text
├── static_cmos/                  # Thiết kế kiến trúc Static Complementary CMOS
│   ├── schematic/                # Sơ đồ nguyên lý mức transistor (.sch, .sym)
│   ├── layout/                   # Thiết kế layout vật lý & file trích xuất ký sinh (.mag, .gds, _pex.spice)
│   ├── testbench/                # Mạch kiểm tra chức năng, đo delay, công suất và PVT
│   └── logicaleffort/            # Tính toán sizing theo phương pháp Logical Effort
│
├── transmission_gate/            # Thiết kế kiến trúc Transmission-Gate Full Adder (TGFA)
│   ├── schematic/                # Sơ đồ nguyên lý mức transistor (XOR, MUX21, Full Adder)
│   ├── layout/                   # Thiết kế layout vật lý & LVS/DRC/PEX
│   ├── testbench/                # Mạch kiểm tra và khảo sát PVT
│   └── logicaleffort/            # Tối ưu kích thước W/L theo mô hình Elmore Delay / Logical Effort
│
└── README.md                     # Tài liệu tổng quan và báo cáo kết quả đánh giá
```

---

## 2. Công cụ EDA sử dụng

* **PDK:** SkyWater SKY130 (`sky130A` / `open_pdks`)
* **Schematic Capture:** Xschem
* **SPICE Simulation:** ngspice
* **Waveform Viewer:** Gaw / Python Matplotlib
* **Physical Layout & DRC:** Magic VLSI / KLayout
* **LVS (Layout vs. Schematic):** Netgen
* **PEX (Parasitic Extraction):** Magic PEX (`ext2spice`)

---

## 3. Kiến trúc mạch & Cơ sở lựa chọn kích thước ($W/L$)

### 3.1. Kiến trúc 1: Static Complementary CMOS Full Adder
* **Cấu trúc:** Mạng kéo lên (PUN - PMOS) và mạng kéo xuống (PDN - NMOS) đối ngẫu hoàn toàn (Mirror Adder / Standard 28T–36T CMOS), đảm bảo biên độ logic full-swing ($0 \rightarrow V_{DD}$) và độ miễn nhiễu cao.
* **Lựa chọn kích thước $W/L$:**
  * Chiều dài kênh dẫn tối thiểu: $L = 0.15\,\mu\text{m}$ (`sky130_fd_pr__nfet_01v8`, `sky130_fd_pr__pfet_01v8`).
  * Tỷ lệ độ linh động hạt tải $\mu_n / \mu_p \approx 2.5 - 3$, do đó chọn $W_p / W_n \approx [2.5]$ cho các cổng cơ bản để cân bằng thời gian chuyển mạch ($t_{pLH} \approx t_{pHL}$).
  * Áp dụng phương pháp **Logical Effort** để định cỡ các tầng transistor mắc nối tiếp (stack) trên đường truyền nhớ $C_{in} \rightarrow C_{out}$ nhằm giảm điện trở tương đương và tối ưu trễ.

### 3.2. Kiến trúc 2: Transmission-Gate Full Adder (TGFA)
* **Cấu trúc:** Sử dụng các cặp cổng truyền dẫn CMOS (NMOS + PMOS mắc song song) kết hợp bộ đảo để tạo khối `XOR/XNOR` và bộ dồn kênh `MUX 2:1` cho ngõ ra `Sum` và `Cout`.
* **Lựa chọn kích thước $W/L$:**
  * Sử dụng $L = 0.15\,\mu\text{m}$ cho toàn bộ transistor.
  * Tối ưu hóa kích thước $W$ dựa trên mô hình **Elmore Delay** nhằm cân bằng giữa điện trở dẫn $R_{on}$ của cổng truyền và điện dung ký sinh tại các nút trung gian, đồng thời đảm bảo khả năng lái tải ở ngõ ra.

| Thành phần / Tầng mạch | Static CMOS ($W_n / W_p$) | Transmission-Gate ($W_n / W_p$) | Ghi chú |
| :--- | :---: | :---: | :--- |
| Inverter chuẩn | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | $L = 0.15\,\mu\text{m}$ |
| Cổng tạo `Sum` | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | Tối ưu đối xứng |
| Cổng tạo `Cout` | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | `[...]` $\mu\text{m}$ / `[...]` $\mu\text{m}$ | Tối ưu đường carry |

---

## 4. Phân tích biến thiên PVT (Process - Voltage - Temperature)

Mạch được kiểm chứng độ tin cậy sau trích xuất ký sinh (Post-Layout PEX) trên các điều kiện khắc nghiệt của SKY130:
* **Process Corners:** `tt` (Typical-Typical), `ff` (Fast-Fast), `ss` (Slow-Slow), `sf` (Slow-Fast), `fs` (Fast-Slow).
* **Điện áp nguồn ($V_{DD}$):** Danh định $1.8\,\text{V}$, khảo sát biến thiên $\pm 10\%$ ($1.62\,\text{V} \rightarrow 1.98\,\text{V}$).
* **Nhiệt độ ($T$):** Khảo sát từ $-40^\circ\text{C}$, $27^\circ\text{C}$ (danh định) đến $125^\circ\text{C}$.

| Góc khảo sát (Corner) | $V_{DD}$ (V) | Nhiệt độ ($^\circ\text{C}$) | Static CMOS Delay (ps) | TGFA Delay (ps) | Static CMOS Power ($\mu\text{W}$) | TGFA Power ($\mu\text{W}$) |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **Typical (`tt`)** | `1.80` | `27` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Best Case (`ff`)** | `1.98` | `-40` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Worst Case (`ss`)** | `1.62` | `125` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Skewed (`sf`)** | `1.80` | `27` | `[...]` | `[...]` | `[...]` | `[...]` |
| **Skewed (`fs`)** | `1.80` | `27` | `[...]` | `[...]` | `[...]` | `[...]` |

---

## 5. Tổng hợp so sánh hai kiến trúc (Post-Layout)

Bảng dưới đây tổng hợp các chỉ số hiệu năng tại điều kiện danh định (`tt`, $V_{DD} = 1.8\,\text{V}$, $T = 27^\circ\text{C}$):

| Tiêu chí đánh giá | Static Complementary CMOS | Transmission-Gate (TGFA) | Nhận xét |
| :--- | :---: | :---: | :--- |
| **Số lượng Transistor** | `[28 / 36]` T | `[...]` T | TGFA tiết kiệm diện tích linh kiện hơn |
| **Diện tích Layout (Area)** | `[...]` $\mu\text{m}^2$ | `[...]` $\mu\text{m}^2$ | Kích thước $W \times H$ trên Magic VLSI |
| **Worst-case Delay ($t_{pd}$)** | `[...]` ps | `[...]` ps | Đo từ ngõ vào tới `Sum` / `Cout` |
| **Công suất trung bình ($P_{avg}$)** | `[...]` $\mu\text{W}$ | `[...]` $\mu\text{W}$ | Bao gồm công suất động và rò tĩnh |
| **Power-Delay Product (PDP)** | `[...]` fJ | `[...]` fJ | $\text{PDP} = P_{avg} \times t_{pd}$ |
| **Độ ổn định theo PVT** | Rất cao (Full-swing, khả năng phục hồi mức logic tốt) | Trung bình - Cao (Nhạy cảm hơn với điện dung tải khi mắc nối tiếp) | Static CMOS ít biến động trễ qua các corner hơn |

---

## 6. Mở rộng: 4-bit Ripple Carry Adder (RCA)

Từ cell **1-bit Full Adder** đã tối ưu và đóng gói thành macro layout chuẩn, nhóm tiến hành ghép tầng 4 cell nối tiếp để xây dựng bộ cộng **4-bit Ripple Carry Adder**:
* **Đường găng (Critical Path):** $A_0 / B_0 / C_{in} \rightarrow C_{out,0} \rightarrow C_{out,1} \rightarrow C_{out,2} \rightarrow C_{out,3}$ (hoặc $Sum_3$).
* **Kết quả mô phỏng Critical Carry Path ($C_{in} \rightarrow C_{out,3}$):**
  * Tổng trễ lan truyền đường carry (`tt`, $1.8\,\text{V}$, $27^\circ\text{C}$): `[...]` ps.
  * Tần số hoạt động tối đa ước tính ($f_{max}$): `[...]` MHz.
  * Tổng công suất tiêu thụ 4-bit RCA: `[...]` $\mu\text{W}$.

---

## 7. Hướng dẫn chạy mô phỏng

1. Đảm bảo đã cài đặt `open_pdks` (SKY130) và thiết lập biến môi trường `PDK_ROOT`.
2. Mở schematic bằng Xschem:
   ```bash
   cd static_cmos/schematic   # hoặc transmission_gate/schematic
   xschem fulladder.sch
   ```
3. Chạy netlist và mô phỏng bằng `ngspice` từ thư mục `testbench/`:
   ```bash
   cd ../testbench
   ngspice fa_tb_delay.spice
   ```
