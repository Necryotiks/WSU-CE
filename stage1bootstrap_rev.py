################################################
# USAGE INSTRUCTIONS
# 1. MOVE STAGE1BOOTSTRAP.PY TO NEEDED DIRECTORY
# 2. RUN STAGE1BOOTSTRAP.PY
# 3. MOVE ANY VERILOG OR XDC FILES ALREADY CREATED TO THE RTL AND CONSTRAINTS DIRECTORIES RESPECTIVELY
# 4. RUN TCL update
################################################
import sys
import os
from os import path
from shutil import copy
header_str = "###################################################\n#THIS IS A COMPUTER GENERATED FILE, DO NOT MODIFY.#\n#GENERATED: yyyy-mm-dd-hh-mm-ss                   #\n###################################################\n"
help_str = "Vivado Project Creation Tool: \n -h Help\n -n Create a new Vivado project with the give name\n -p Project part number\n"
def main():
    if len(sys.argv) <= 1:
        print(help_str)
        sys.exit(0)
    else:
        if sys.argv[1] == "-h":
            print(help_str)
            sys.exit(0)
        elif sys.argv[1] == "-n":
            if len(sys.argv) == 3:
                create_project(sys.argv[2])
                init_build_tcl(pdir=sys.argv[2],part_str='',def_flag=True)
                path = os.getcwd() + '/'
                create_verilog_file(path)
                #write blackboard tcl file here
                sys.exit(0)
            elif len(sys.argv) == 5:
                pstr = sys.argv[4]
                create_project(sys.argv[2])
                init_build_tcl(pdir=sys.argv[2],part_str=pstr,def_flag=False)
                sys.exit(0)
            elif len(sys.argv) < 3:
                print("Error: Expected directory name as second argument.")
                sys.exit(0)
            else:
                print("Error: Argument list not satisfied.") 
                sys.exit(0)

    #Creute stage 2 bootstrap file
def create_project(pdir):
# Create main project directory
    if os.path.exists(pdir):
        print("The project directory \"%s\" already exists. skipping creation" % (pdir))
       #check subdirectories and make them if they don't exist
    else:
        os.mkdir(pdir)
        print("Project directory \"%s\" successfully made!" % (pdir))

#Create project subdirectories
    path = os.getcwd() + '/' + pdir + '/'
    dirname = ['rtl','logs','bench','checkpoints','constraints','bitstream','bench/formal','bench/sim','reports','reports/timing','reports/utilization','reports/drc']
    for subdir in dirname:
        if os.path.exists(path + subdir):
            print("The \"" + subdir + "\" subdirectory already exists, skipping creation.")
        else:
           print("Creating the \"" + subdir + "\" subdirectory.")
           os.mkdir(path + subdir)

def init_build_tcl(pdir,part_str,def_flag):
    path = os.getcwd() + '/' + pdir + '/'
    os.chdir(path)
    build_tcl = open(path + "build.tcl","w+")
#----------------------------------------------
    src_tcl = open(path + "rtl/src.tcl", "w+")
    src_tcl.write(header_str)
    tcl_file_up(path=path,target=src_tcl,subfile="rtl")
    src_tcl.close()
    #run TCL update script here
    cons_tcl = open(path + "constraints/src.tcl", "w+")
    cons_tcl.write(header_str)
    tcl_file_up(path=path,target=cons_tcl,subfile="constraints")
    cons_tcl.close()
#----------------------------------------------
    build_tcl.write(header_str)
    build_tcl.write("set PROJ_NM \"%s\"\n" % (pdir))
    build_tcl.write("set TOP_MODULE \"top\"\n")
    if def_flag == True:
        build_tcl.write("set PART_NUM \"xc7z007sclg400-1\"\n")
    else:
        build_tcl.write("set PART_NUM \"%s\"\n" % (part_str))
    build_tcl.write("create_project -force $PROJ_NM $PROJ_NM\n")
    build_tcl.write("source ./rtl/src.tcl\n")
    build_tcl.write("source ./constraints/cons.tcl\n")
    build_tcl.write("synth_design -top $TOP_MODULE -part $PART_NUM\n")
    build_tcl.write("report_timing_summary -file ./reports/timing/${PROJ_NM}_post_synth_tim.rpt\n")
    build_tcl.write("report_utilization -file ./reports/utilization/${PROJ_NM}_post_synth_util.rpt\n")
    build_tcl.write("write_checkpoint -force ./checkpoints/${PROJ_NM}_post_synth.dcp")
    build_tcl.write("\n")
    build_tcl.write("opt_design\n")
    build_tcl.write("report_timing_summary -file ./reports/timing/${PROJ_NM}_post_opt_tim.rpt\n")
    build_tcl.write("report_utilization -file ./reports/utilization/${PROJ_NM}_post_opt_util.rpt\n")
    build_tcl.write("report_drc -file ./reports/drc/${PROJ_NM}_post_opt_drc.rpt\n")
    build_tcl.write("place_design\n")
    build_tcl.write("report_timing_summary -file ./reports/timing/${PROJ_NM}_post_place_tim.rpt\n")
    build_tcl.write("report_utilization -file ./reports/utilization/${PROJ_NM}_post_place_util.rpt\n")
    build_tcl.write("route_design\n")
    build_tcl.write("write_bitstream -force ./bitstream/output\n")
    print("Project build script created!")

def tcl_file_up(path,target,subfile):
    for _,_,entry in os.walk(path+subfile):
        for srcfile in entry:
            if srcfile.endswith('.v'):
                target.write("read_verilog ./rtl/" + srcfile + '\n') 
            elif srcfile.endswith('.sv'):
                target.write("read_verilog -sv ./rtl/" + srcfile + '\n') 
            elif srcfile.endswith('.xci'):
                target.write("read_ip ./rtl/" + srcfile + '\n') 
            elif srcfile.endswith('.xdc'):
                target.write("read_xdc ./constraints/" + srcfile + '\n')
            #elif srcfile.endswith('.vhd'):
            #    target.write("read_vhdl ./rtl/" + srcfile + '\n') 
def create_test_harness(path,target,subfile):
    for _,_,entry in os.walk(path+subfile):
        for srcfile in entry:
            if srcfile.endswith('.v') or srcfile.endswith('.sv'):
                os.mkdir(path + "bench/formal/" + srcfile) 
                os.mkdir(path + "bench/sim/" + srcfile) 
                shutil.copy(srcfile, path + "bench/sim/" + srcfile)
                shutil.copy(srcfile, path + "bench/formal/" + srcfile)
    
    #TODO:create test harness
def create_verilog_file(path):
    new_f = open(path + "rtl/create_file.py","w+")
    new_f.write("import os\n")
    new_f.write("import sys\n")
    new_f.write("from os import path\n")
    new_f.write("def main():\n")
    new_f.write("\tif len(sys.argv) > 2 and sys.argv[1] == \"-n\":\n")
    new_f.write("\t\tsrc = open(\"%s.v\"% (sys.argv[2]) ,\"w+\")\n")
    new_f.write("\t\tsrc.write(\"module %s\\n\" % (sys.argv[2]))\n")
    new_f.write("\t\tsrc.write(\")\\n\")\n")
    new_f.write("\t\tsrc.write(\"endmodule\\n\")\n")
    new_f.write("\t\tsrc.write(\"\\n\")\n")
    new_f.write("\t\tsrc.close()\n")
    new_f.write("\t\tupdate_tcl = open(\"./rtl.tcl\",\"w+\")\n")
    #TODO: read every file and update src tcl
    new_f.write("\t\tupdate_tcl.write(\"for _,_,entry in os.walk(path+subfile):\\n\"\n")
    new_f.write("\t\tupdate_tcl.write(\"\tfor srcfile in entry:\\n\")\n")
    new_f.write("\t\tupdate_tcl.write(\"\t\tif srcfile.endswith('.v'):\\n\")\n")
                target.write("read_verilog ./rtl/" + srcfile + '\n') 
            elif srcfile.endswith('.sv'):
                target.write("read_verilog -sv ./rtl/" + srcfile + '\n') 
            elif srcfile.endswith('.xci'):
                target.write("read_ip ./rtl/" + srcfile + '\n') 
            elif srcfile.endswith('.xdc'):
                target.write("read_xdc ./constraints/" + srcfile + '\n')
    new_f.write("main()\n")
    new_f.close()

def write_blackboard_xdc(target):

    #TODO: correct string spacing
    target.write("##Master XDC")
    target.write("\n")
    target.write("##Clock\n")
    target.write("#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Schematic=SYSCLK\\n\")\n")
    target.write("#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 4} [get_ports { clk }];\\n\")\n")
    target.write("\n")
    target.write("##LEDS\n")
    target.write("#set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L14P_T2_SRCC_34 Schematic=LD0\n")
    target.write("#set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L14P_T2_SRCC_34 Schematic=LD1\n")
    target.write("#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L14P_T2_SRCC_34 Schematic=LD2\n")
    target.write("#set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L14P_T2_SRCC_34 Schematic=LD3\n")
    target.write("\n")
    target.write("##RGB_LEDS\n")
    target.write("#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_0[0] }]; #IO_L3P_T0_DWS_PUDC_B_34 Schematic=LD4_R\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_0[1] }]; #IO_25_34 Schematic=LD4_G\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_0[2] }]; #IO_25_34 Schematic=LD4_B\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_1[0] }]; #IO_L3P_T0_DWS_PUDC_B_34 Schematic=LD5_R\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_1[1] }]; #IO_25_34 Schematic=LD5_G\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_1[2] }]; #IO_25_34 Schematic=LD5_B\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_2[0] }]; #IO_25_34 Schematic=LD6_R\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_2[1] }]; #IO_25_34 Schematic=LD6_G\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_2[2] }]; #IO_25_34 Schematic=LD6_G\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_3[0] }]; #IO_L8N_T1_34 Schematic=LD7_R\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_3[1] }]; #IO_L7P_T1_34 Schematic=LD7_G\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { RGB_led_3[2] }]; #IO_L7P_T1_34 Schematic=LD7_G\\n\")\n")
    target.write("\n")
    target.write("###Switches\n")
    target.write("#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L19N_T3_VREF_34 Schematic=SW0\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L19N_T3_VREF_34 Schematic=SW1\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L19N_T3_VREF_34 Schematic=SW2\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L19N_T3_VREF_34 Schematic=SW3\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { sw[4] }]; #IO_L19N_T3_VREF_34 Schematic=SW4\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { sw[5] }]; #IO_L19N_T3_VREF_34 Schematic=SW5\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { sw[6] }]; #IO_L19N_T3_VREF_34 Schematic=SW6\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { sw[7] }]; #IO_L19N_T3_VREF_34 Schematic=SW7\\n\")\n")
    target.write("\n")
    target.write("###Buttons\n")
    target.write("#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L8P_T1_34 Schematic=BTN0\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L8P_T1_34 Schematic=BTN1\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L8P_T1_34 Schematic=BTN2\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L8P_T1_34 Schematic=BTN2\\n\")\n")
    target.write("\n")
    target.write("##SevenSegmentDisplay\\n\")\n")
    target.write("##Anodes\n")
    target.write("#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { anode[0] }]; #IO_L10P_T1_AD11P_35 Schematic=SSEG_AN0\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { anode[1] }]; #IO_L10P_T1_AD11P_35 Schematic=SSEG_AN1\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { anode[2] }]; #IO_L10P_T1_AD11P_35 Schematic=SSEG_AN2\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { anode[3] }]; #IO_L10P_T1_AD11P_35 Schematic=SSEG_AN3\\n\")\n")
    target.write("\n")
    target.write("##Cathodes\n")
    target.write("#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA\\n\")\n")
    target.write("##Accelerometer/Gyroscope/Magnetometer\n")
    target.write("#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { GYRO_SCL }]; #IO_L17N_T2_AD5N_35 Schematic=GYRO_SCL\n")
    target.write("#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { GYRO_SDA }]; #IO_L10N_T1_AD11N_35 Schematic=GYRO_SDA\n")
    target.write("#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { GYRO_SDO_A/G }]; #IO_L17P_T2_AD5P_35 Schematic=GYRO_SDO_A/G\n")
    target.write("#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { GYRO_SDO_M }]; #IO_L11N_T1_SRCC_35 Schematic=GYRO_SDO_M\n")
    target.write("#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { GYRO_CS_A/G }]; #IO_L12P_T1_MRCC_35 Schematic=GYRO_CS_A/G\n")
    target.write("#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { GYRO_CS_M }]; #IO_L24P_T3_AD15P_35 Schematic=GYRO_CS_M\n")
    target.write("#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { DEN_A_G }]; #IO_L20N_T3_AD6N_35 Schematic=GYRO_DEN_A/G\n")
    target.write("#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { DRDY_M }]; #IO_L9N_T1_DQS_AD3N_35 Schematic=GYRO_DRDY_M\n")
    target.write("#set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { INT_A_G }]; #IO_L7N_T1_AD2N_35 Schematic=GYRO_INT_A/G\n")
    target.write("#set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { INT_M }]; #IO_L9P_T1_DQS_AD3P_35 Schematic=GYRO_INT_M\n")
    target.write("##MIC\n")
    target.write("#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { M_clk }]; #IO_L21P_T3_DQS_AD14P_35 Schematic=M_CLK\n")
    target.write("#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { M_data }]; #IO_L22P_T3_AD7P_35 Schematic=M_DATA\n")
    target.write("\n")
    target.write("##Speaker\n")
    target.write("#set_property -dict { PACKAGE_PIN G18  IOSTANDARD LVCMOS33 } [get_ports { audio }]; #IO_L16N_T2_35 Schematic=AUDIO\n")
    target.write("\n")
    target.write("##VGA\n")
    target.write("#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { vga_r[0] }]; #IO_L10P_T1_34 Sch=VGA_R4_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { vga_r[1] }]; #IO_L10N_T1_34 Sch=VGA_R5_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { vga_r[2] }]; #IO_L18P_T2_34 Sch=VGA_R6_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { vga_r[3] }]; #IO_L18N_T2_AD13N_35 Sch=VGA_R7_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { vga_g[0] }]; #IO_L5N_T0_34 Sch=VGA_G4_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { vga_g[1] }]; #IO_L3N_T0_DQS_34 Sch=VGA_G5_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { vga_g[2] }]; #IO_L11P_T1_SRCC_34 Sch=VGA_G6_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { vga_g[3] }]; #IO_L11N_T1_SRCC_34 Sch=VGA_G7_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { vga_b[0] }]; #IO_L1P_T0_34 Sch=VGA_B4_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { vga_b[1] }]; #IO_L5P_T0_34 Sch=VGA_B5_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { vga_b[2] }]; #IO_L2N_T0_34 Sch=VGA_B6_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { vga_b[3] }]; #IO_L4P_T0_34 Sch=VGA_B7_CON\n")
    target.write("#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports {HS}]; #IO_L2P_T0_34 Sch=VGA_HS\n")
    target.write("#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports {VS}]; #IO_L1N_T0_34 Sch=VGA_VS\n")
    target.write("##HDMI Signals\n")
    target.write("#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports hdmi_clk_n]; #IO_L12N_T1_MRCC_34 Sch=HDMI_TX_CLK_N\n")
    target.write("#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports hdmi_clk_p]; #IO_L12P_T1_MRCC_34 Sch=HDMI_TX_CLK_P\n")
    target.write("#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[0]]; #IO_L21N_T3_DQS_34 Sch=HDMI_TX0_N\n")
    target.write("#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[0]]; #IO_L21P_T3_DQS_34 Sch=HDMI_TX0_P\n")
    target.write("#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[1]]; #IO_L23N_T3_34 Sch=HDMI_TX1_N\n")
    target.write("#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[1]]; #IO_L23P_T3_34 Sch=HDMI_TX1_P\n")
    target.write("#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_n[2]]; #IO_L13N_T2_MRCC_34 Sch=HDMI_TX2_N\n")
    target.write("#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports hdmi_tx_p[2]]; #IO_L13P_T2_MRCC_34 Sch=HDMI_TX2_P\n")
    target.write("#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports hdmi_cec]; #IO_L9N_T1_DQS_34 Sch=HDMI_TX_CEC\n")
    target.write("#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports hdmi_hpd]; #IO_L24N_T3_34 Sch=HDMI_TX_HPD\n")
    target.write("#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports hdmi_out_en]; #IO_L6N_T0_VREF_35 Sch=HDMI_OUT_EN\n")
    target.write("#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports hdmi_scl]; #IO_L20P_T3_34 Sch=HDMI_TX_SCL\n")
    target.write("#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports hdmi_sda]; #IO_L20N_T3_34 Sch=HDMI_TX_SDA\n")
    target.write("\n")
    target.write("##PmodA                                                                                                        \n")
    target.write("#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { JA1_P }]; #IO_L6P_T0_35 Sch=JA1_P   \n")
    target.write("#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { JA1_N }]; #IO_L6N_T0_VREF_35 Sch=JA1_N\n")
    target.write("#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { JA2_P }]; #IO_L18P_T2_AD13P_35 Sch=JA2_P\n")
    target.write("#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { JA2_N }]; #IO_L18N_T2_AD13N_35 Sch=JA2_N\n")
    target.write("#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { JA3_P }]; #IO_L5P_T0_AD9P_35 Sch=JA3_P\n")
    target.write("#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { JA3_N }]; #IO_L5N_T0_AD9N_35 Sch=JA3_N\n")
    target.write("#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { JA4_P }]; #IO_L3P_T0_DQS_AD1P_35 Sch=JA4_P\n")
    target.write("#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { JA4_N }]; #IO_L3N_T0_DQS_AD1N_35 Sch=JA4_N\n")
    target.write("                           \n")
    target.write("##PmodB                                                                                                        \n")
    target.write("#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { JB1_P }]; #IO_L4P_T0_35 Sch=JB1_P   \n")
    target.write("#set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { JB1_N }]; #IO_L4N_T0_35 Sch=JB1_N   \n")
    target.write("#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { JB2_P }]; #IO_L15P_T2_DQS_AD12P_35 Sch=JB2_P\n")
    target.write("#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { JB2_N }]; #IO_L15N_T2_DQS_AD12N_35 Sch=JB2_N\n")
    target.write("#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { JB3_P }]; #IO_L1P_T0_AD0P_35 Sch=JB3_P\n")
    target.write("#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { JB3_N }]; #IO_L1N_T0_AD0N_35 Sch=JB3_N\n")
    target.write("#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { JB4_P }]; #IO_L2P_T0_AD8P_35 Sch=JB4_P\n")
    target.write("#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { JB4_N }]; #IO_L2N_T0_AD8N_35 Sch=JB4_N\n")
    target.write("                                                                                                               \n")
    target.write("#Servos                                                                                                        \n")
    target.write("#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports servo1]; #IO_L16P_T2_35 Sch=SERVO1     \n")
    target.write("#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports servo2]; #IO_L19N_T3_VREF_35 Sch=SERVO2\n")
    target.write("#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports servo3]; #IO_0_35 Sch=SERVO3           \n")
    target.write("#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports servo4]; #IO_L7P_T1_AD2P_35 Sch=SERVO4\n")

main()
