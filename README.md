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

1) Configure tplink_port.py program so it runs, or whatever other program you want run on changes.
2) drop on_change.sh file somewhere it will be picked up.
3) Copy lg-tv-ethernet-change.* to /etc/systemd/system/.
4) sudo systemctl daemon-reload (to read the files)
5) sudo systemctl enable --now lg-tv-ethernet-change.path

I've created a venv and put bs4 and httpx in there because linux mint now complains more loudly
about installing stuff into system python.
