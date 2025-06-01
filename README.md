# systemd-change-monitor

Always hated systemd because it pushes so many features together into one monolithic
system, however with some effort we can create a file change monitoring system
to act on home-automation events, with very low resource usage.  Obviously the solution
becomes linux-only, but that's not such a problem when the OS is running under 
Proxmox, it's just another VM.

This is an example of a TV connection to a tp-link smart port being controlled by the
presence or absence of a file, which in turn can be managed via a simple Go web-based
UI.

See https://github.com/bifferos/esp-controller/tree/main/web-ui for the UI.



