#!/usr/bin/env python
# -*- coding: utf-8 -*-

from . import (
    Status
#    modsde,
    regex,
)

# If you want to start i3status automatically with i3pystatus,
# uncomment the following lines
#import subprocess
#process = subprocess.Popen(["i3status", "-c", "~/.i3/status"], stdout=subprocess.PIPE, universal_newlines=True)
#status = Status(input_stream=process.stdout)

# If you want to run i3pystatus on it's own,
# uncomment the following line
status = Status(standalone=True)

# If you want to use i3pystatus to extend i3status' output, use this:
status = Status()
 
# Regular expression file watcher
# If you're using a thinkpad, chances are that this displays your fan speed and level
status.register("regex",
    regex="speed:\s+([0-9]+)\nlevel:\s+([a-zA-Z0-9]+)",
    file="/proc/acpi/ibm/fan",
    format="{0} [{1}]")

# You can let i3pystatus check for new mail using the mail module
# It can check multiple sources with multiple backends

# The IMAP backend
from .mail.imap import IMAP
imap_servers = {
    "color": "#ff0000",
    "servers": [
        {
            "host": "www.testhost1.com",
            "port": "993",
            "ssl" : True,
            "username": "your_username",
            "password": "your_password",
            "pause": 20
        },
        {
            "host": "www.testhost2.net",
            "port": "993",
            "ssl" : True,
            "username": "your_username",
            "password": "your_password",
            "pause": 20
        }
    ]
}
imap = IMAP(imap_servers)

# Notmuchmail is also supported
from .mail.notmuchmail import Notmuch
notmuch = Notmuch("~/path/to/your/notmuch/db")

# With thunderbird-dbus-sender, even Thunderbird can report to i3pystatus
from .mail.thunderbird import Thunderbird
tb = Thunderbird()

status.register("mail",
    backends=[
        imap,
        notmuch,
        tb
    ])

# the mods.de forum new bookmarks module
status.register("modsde",
    username="your_username",
    password="your_password")


# the battery status checker module
status.register("battery")

# There's a clock, too
status.register("clock")

# And some more\u2026 take a look at the README for all modules and options.

# start the handler
status.run()
