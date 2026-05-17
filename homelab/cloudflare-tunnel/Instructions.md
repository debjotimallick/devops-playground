Install cloudflare tunnel using the install.sh script.
Once installed, copy the install command from cloudflare tunnel dashboard which looks like this
```sh
sudo cloudflared service install <token>
```
Check if cloudflare is running using
```sh
sudo systemctl status cloudflared
```