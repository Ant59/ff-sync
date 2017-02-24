# ff-sync

Dockerfile for Firefox Sync 1.5 server

## Run

Build the image from this repo
`docker build https://github.com/Ant59/ff-sync.git -t ant59/ff-sync`

Then run the image, making sure to specify a secret and a public URL
`docker run -d -v ffsync:/ff-sync --env URL=https://exmaple.com/ff-sync --env SECRET=whateveryoursecretis -p 5000:5000 ant59/ff-sync`

I run this behind Caddy as a proxy
`proxy /ff-sync localhost:5000`
