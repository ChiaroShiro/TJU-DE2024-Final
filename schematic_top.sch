# File saved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new Top work:Top:NOFILE -nosplit
load symbol display7 work:display7:NOFILE HIERBOX pinBus iData input.left [3:0] pinBus oData output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol game_control work:game_control:NOFILE HIERBOX pin iClk input.left pin iPause input.left pin iToLeft input.left pin iToRight input.left pin oCrash output.right pin oGet output.right pin oHSync output.right pin oLose output.right pin oVSync output.right pin oWin output.right pinBus iBarMoveSpeed input.left [3:0] pinBus oBlue output.right [2:1] pinBus oGreen output.right [2:0] pinBus oRed output.right [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_INV0 work INV pin I0 input pin O output fillcolor 1
load symbol MP3_control work:MP3_control:NOFILE HIERBOX pin iClk input.left pin iDREQ input.left pin iRst input.left pin oSCLK output.right pin oSI output.right pin oXCS output.right pin oXDCS output.right pin oXRESET output.right pinBus iSelect input.left [1:0] pinBus iVol input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol sound_control work:sound_control:NOFILE HIERBOX pin iClk input.left pin iCrash input.left pin iGet input.left pin iLose input.left pin iPause input.left pin iWin input.left pin oGamePause output.right pin oMP3Rst output.right pinBus oMP3Select output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol speed_control work:speed_control:NOFILE HIERBOX pin iClk input.left pin iSpeedDown input.left pin iSpeedUp input.left pinBus oSpeed output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load port iPause input -pg 1 -y 130
load port port_vs1003b_xreset output -pg 1 -y 700
load port oVSync output -pg 1 -y 400
load port port_vs1003b_si output -pg 1 -y 640
load port port_vs1003b_dreq input -pg 1 -y 620
load port port_vs1003b_sclk output -pg 1 -y 620
load port to_left input -pg 1 -y 460
load port speed_down input -pg 1 -y 360
load port speed_up input -pg 1 -y 380
load port port_vs1003b_xdcs output -pg 1 -y 680
load port oHSync output -pg 1 -y 340
load port port_vs1003b_xcs output -pg 1 -y 660
load port to_right input -pg 1 -y 480
load port iClk input -pg 1 -y 80
load portBus oDisplay output [6:0] -attr @name oDisplay[6:0] -pg 1 -y 520
load portBus oOutBlue output [2:1] -attr @name oOutBlue[2:1] -pg 1 -y 260
load portBus oOutRed output [2:0] -attr @name oOutRed[2:0] -pg 1 -y 380
load portBus oOutGreen output [2:0] -attr @name oOutGreen[2:0] -pg 1 -y 320
load inst speed_ctrl speed_control work:speed_control:NOFILE -autohide -attr @cell(#000000) speed_control -pinBusAttr oSpeed @name oSpeed[3:0] -pg 1 -lvl 3 -y 330
load inst game game_control work:game_control:NOFILE -autohide -attr @cell(#000000) game_control -pinBusAttr iBarMoveSpeed @name iBarMoveSpeed[3:0] -pinBusAttr oBlue @name oBlue[2:1] -pinBusAttr oGreen @name oGreen[2:0] -pinBusAttr oRed @name oRed[2:0] -pg 1 -lvl 4 -y 250
load inst iRst0_i RTL_INV0 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 3 -y 660
load inst mp3 MP3_control work:MP3_control:NOFILE -autohide -attr @cell(#000000) MP3_control -pinBusAttr iSelect @name iSelect[1:0] -pinBusAttr iVol @name iVol[7:0] -pg 1 -lvl 4 -y 610
load inst iPause0_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -y 240
load inst display display7 work:display7:NOFILE -autohide -attr @cell(#000000) display7 -pinBusAttr iData @name iData[3:0] -pinBusAttr oData @name oData[6:0] -pg 1 -lvl 4 -y 510
load inst iClk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 80
load inst sound_ctrl sound_control work:sound_control:NOFILE -autohide -attr @cell(#000000) sound_control -pinBusAttr oMP3Select @name oMP3Select[1:0] -pg 1 -lvl 2 -y 40
load net game_pause -pin iPause0_i I1 -pin sound_ctrl oGamePause
netloc game_pause 1 2 1 580
load net iPause -port iPause -pin iPause0_i I0 -pin sound_ctrl iPause
netloc iPause 1 0 3 NJ 130 160 230 NJ
load net port_vs1003b_xreset -pin mp3 oXRESET -port port_vs1003b_xreset
netloc port_vs1003b_xreset 1 4 1 NJ
load net display_data[2] -attr @rip oSpeed[2] -pin display iData[2] -pin game iBarMoveSpeed[2] -pin speed_ctrl oSpeed[2]
load net mp3_rst -pin iRst0_i I0 -pin sound_ctrl oMP3Rst
netloc mp3_rst 1 2 1 540
load net mp3_select[0] -attr @rip oMP3Select[0] -pin mp3 iSelect[0] -pin sound_ctrl oMP3Select[0]
load net oVSync -pin game oVSync -port oVSync
netloc oVSync 1 4 1 NJ
load net port_vs1003b_si -pin mp3 oSI -port port_vs1003b_si
netloc port_vs1003b_si 1 4 1 NJ
load net iRst0 -pin iRst0_i O -pin mp3 iRst
netloc iRst0 1 3 1 NJ
load net oOutBlue[1] -attr @rip oBlue[1] -pin game oBlue[1] -port oOutBlue[1]
load net port_vs1003b_dreq -pin mp3 iDREQ -port port_vs1003b_dreq
netloc port_vs1003b_dreq 1 0 4 NJ 620 NJ 620 NJ 620 NJ
load net port_vs1003b_sclk -pin mp3 oSCLK -port port_vs1003b_sclk
netloc port_vs1003b_sclk 1 4 1 NJ
load net to_left -pin game iToLeft -port to_left
netloc to_left 1 0 4 NJ 460 NJ 460 NJ 460 NJ
load net oDisplay[3] -attr @rip oData[3] -pin display oData[3] -port oDisplay[3]
load net speed_down -pin speed_ctrl iSpeedDown -port speed_down
netloc speed_down 1 0 3 NJ 360 NJ 360 NJ
load net <const0> -ground -pin mp3 iVol[7] -pin mp3 iVol[6] -pin mp3 iVol[5] -pin mp3 iVol[4] -pin mp3 iVol[3] -pin mp3 iVol[2] -pin mp3 iVol[1] -pin mp3 iVol[0]
load net oOutGreen[2] -attr @rip oGreen[2] -pin game oGreen[2] -port oOutGreen[2]
load net oOutRed[2] -attr @rip oRed[2] -pin game oRed[2] -port oOutRed[2]
load net oWin -pin game oWin -pin sound_ctrl iWin
netloc oWin 1 1 4 260 440 NJ 440 NJ 560 1220
load net display_data[3] -attr @rip oSpeed[3] -pin display iData[3] -pin game iBarMoveSpeed[3] -pin speed_ctrl oSpeed[3]
load net mp3_select[1] -attr @rip oMP3Select[1] -pin mp3 iSelect[1] -pin sound_ctrl oMP3Select[1]
load net oDisplay[2] -attr @rip oData[2] -pin display oData[2] -port oDisplay[2]
load net display_data[0] -attr @rip oSpeed[0] -pin display iData[0] -pin game iBarMoveSpeed[0] -pin speed_ctrl oSpeed[0]
load net iClk_IBUF -pin game iClk -pin iClk_IBUF_inst O -pin mp3 iClk -pin sound_ctrl iClk -pin speed_ctrl iClk
netloc iClk_IBUF 1 1 3 180 310 520 420 920
load net oOutGreen[1] -attr @rip oGreen[1] -pin game oGreen[1] -port oOutGreen[1]
load net oOutRed[1] -attr @rip oRed[1] -pin game oRed[1] -port oOutRed[1]
load net oCrash -pin game oCrash -pin sound_ctrl iCrash
netloc oCrash 1 1 4 200 190 NJ 180 NJ 180 1240
load net oDisplay[1] -attr @rip oData[1] -pin display oData[1] -port oDisplay[1]
load net oGet -pin game oGet -pin sound_ctrl iGet
netloc oGet 1 1 4 220 210 NJ 200 NJ 200 1220
load net oOutGreen[0] -attr @rip oGreen[0] -pin game oGreen[0] -port oOutGreen[0]
load net speed_up -pin speed_ctrl iSpeedUp -port speed_up
netloc speed_up 1 0 3 NJ 380 NJ 380 NJ
load net iPause0 -pin game iPause -pin iPause0_i O
netloc iPause0 1 3 1 940
load net oDisplay[6] -attr @rip oData[6] -pin display oData[6] -port oDisplay[6]
load net oOutRed[0] -attr @rip oRed[0] -pin game oRed[0] -port oOutRed[0]
load net port_vs1003b_xdcs -pin mp3 oXDCS -port port_vs1003b_xdcs
netloc port_vs1003b_xdcs 1 4 1 NJ
load net oDisplay[0] -attr @rip oData[0] -pin display oData[0] -port oDisplay[0]
load net oHSync -pin game oHSync -port oHSync
netloc oHSync 1 4 1 NJ
load net display_data[1] -attr @rip oSpeed[1] -pin display iData[1] -pin game iBarMoveSpeed[1] -pin speed_ctrl oSpeed[1]
load net oDisplay[5] -attr @rip oData[5] -pin display oData[5] -port oDisplay[5]
load net oLose -pin game oLose -pin sound_ctrl iLose
netloc oLose 1 1 4 240 280 NJ 280 NJ 460 1240
load net port_vs1003b_xcs -pin mp3 oXCS -port port_vs1003b_xcs
netloc port_vs1003b_xcs 1 4 1 NJ
load net to_right -pin game iToRight -port to_right
netloc to_right 1 0 4 NJ 480 NJ 480 NJ 480 NJ
load net iClk -port iClk -pin iClk_IBUF_inst I
netloc iClk 1 0 1 NJ
load net oDisplay[4] -attr @rip oData[4] -pin display oData[4] -port oDisplay[4]
load net oOutBlue[2] -attr @rip oBlue[2] -pin game oBlue[2] -port oOutBlue[2]
load netBundle @display_data 4 display_data[3] display_data[2] display_data[1] display_data[0] -autobundled
netbloc @display_data 1 3 1 840
load netBundle @mp3_select 2 mp3_select[1] mp3_select[0] -autobundled
netbloc @mp3_select 1 2 2 500 700 NJ
load netBundle @oDisplay 7 oDisplay[6] oDisplay[5] oDisplay[4] oDisplay[3] oDisplay[2] oDisplay[1] oDisplay[0] -autobundled
netbloc @oDisplay 1 4 1 NJ
load netBundle @oOutGreen 3 oOutGreen[2] oOutGreen[1] oOutGreen[0] -autobundled
netbloc @oOutGreen 1 4 1 NJ
load netBundle @oOutBlue 2 oOutBlue[2] oOutBlue[1] -autobundled
netbloc @oOutBlue 1 4 1 NJ
load netBundle @oOutRed 3 oOutRed[2] oOutRed[1] oOutRed[0] -autobundled
netbloc @oOutRed 1 4 1 NJ
levelinfo -pg 1 0 30 320 670 1070 1260 -top -10 -bot 750
show
fullfit
#
# initialize ictrl to current module Top work:Top:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1
