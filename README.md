# reverse-proxy docker image

## When Do You Need This

Reverse proxy allows you to run multiple web servers when you have only one public IP address.

## How It Works

reverse-proxy takes care of https registration using [let's encrypt certbot](https://letsencrypt.org/getting-started/).

On your real web server, open and serve http only. The reverse-proxy will take care of https handling.

## How to Use It

1. Have a machine ("ubuntu-server") that you can run docker. Make sure 80 and 443 are available.
2. Set up your router to forward 80 and 443 to the ubuntu-server.
3. On ubuntu-server, clone this repo.
4. Modify start.sh to fill in your domain names and email.
5. Modify sites-available-default:
   1. `your.domain1.name` and `your.domain2.name`
   2. proxy_pass - IP address of the http server
6. Run `./build.sh`
7. Run `./run.sh`

## References

- https://phoenixnap.com/kb/nginx-reverse-proxy
- https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/
