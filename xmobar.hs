-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1680x1050 monitors, with the right monitor as primary
Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",

    position = Static { xpos = 0, ypos = -4, width = 1900, height = 14 },
    lowerOnStart = False,
    commands = [
        Run Cpu ["-L","3","-H","50","--normal","#CEFFAC","--high","#FFB6B0"] 10,
        Run MultiCpu ["-t","Cpu:<total0>%<total1>%<total2>%<total3>%<total4>%<total5>%<total6>%<total7>%<total8>%<total9>%<total10>%<total11>%","-L","2","-H","50","--normal","#CEFFAC","--high","#FFB6B0","-w","5"] 10,
        Run Memory ["-t","Mem: <usedratio>%"] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","100","-S","true","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","10"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
	Run Uptime ["-t","Uptime: <days>d <hours>h <minutes>m"] 10,
	Run DiskU [("/", "ssd: <used>/<size>"), ("sdc1", "<usedbar>"), ("md126p2", "hdd/var: <used>/<size>"), ("md126p1", "hdd/media: <used>/<size>")]["-L", "20", "-H", "50", "-m", "1", "-p", "3"] 20,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %disku%  %multicpu%  %memory%  %eth0%  %uptime%  <fc=#466EA6>%date%</fc>"
}
