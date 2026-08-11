# Daily user maintenance

User-level systemd timer that runs once per day

## Install

```bash
install.sh
```

## Manual run

```bash
systemctl --user start daily-user-maintenance.service
```

## Uninstall

```bash
systemctl --user disable --now daily-user-maintenance.timer
rm -f ~/.config/systemd/user/daily-user-maintenance.{service,timer}
rm -rf ~/.local/share/doc/daily-user-maintenance
systemctl --user daemon-reload
```
