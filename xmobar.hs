-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1680x1050 monitors, with the right monitor as primary
Config {
    font = "xft:DejaVu Sans-7:antialias=false",
    bgColor = "#000000",
    fgColor = "#ffffff",

    position = Static { xpos = 0, ypos = 0, width = 1940, height = 14 },
    lowerOnStart = False,
    commands = [
        Run Cpu ["-L","3","-H","50","--normal","#CEFFAC","--high","#FFB6B0"] 10,
        Run MultiCpu ["-t","<total0>%<total1>%<total2>%<total3>%<total4>%<total5>%<total6>%<total7>%<total8>%<total9>%<total10>%<total11>%","-L","2","-H","50","--normal","#CEFFAC","--high","#FFB6B0","-w","5"] 10,
        Run Memory ["-t","<usedratio>% <fc=#bbb>(<used>MB/<total>MB)</fc>"] 10,
	Run Swap ["-t", "<usedratio>%"] 10,
        Run Network "eth0" ["-t","<rx>, <tx>","-H","200","-L","100","-S","true","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","10"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
	Run Uptime ["-t","<days>d <hours>h <minutes>m"] 10,
	Run DiskU [("/", "<fc=#bbb>/:</fc> <used>/<size>"), ("/home", "<fc=#bbb>/home:</fc> <used>/<size>"), ("/var", "<fc=#bbb>/var:</fc> <used>/<size>"), ("md126p1", "hdd/media: <used>/<size>")]["-L", "20", "-H", "50", "-m", "1", "-p", "3"] 20,
	Run DiskIO [("/", "<read> <write>")]["-L", "20", "-H", "50"] 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{<fc=#466EA6>Disk Usage</fc> %disku%  <fc=#466EA6>Disk IO</fc> %diskio%  <fc=#466EA6>CPU Activity</fc> %multicpu%  <fc=#466EA6>Memory</fc> %memory%  <fc=#466EA6>Swap</fc> %swap%  <fc=#466EA6>Network</fc> %eth0%  <fc=#466EA6>Uptime</fc> %uptime%  <fc=#466EA6>%date%</fc>"
}
