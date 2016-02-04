
# dash-docset-torch
Some scripts to generate [dash](https://kapeli.com/dash)/[zeal](https://zealdocs.org/)
docset for [torch](http://torch.ch).

You can download the latest release [here](https://github.com/ppwwyyxx/dash-docset-torch/releases).

# Steps to generate the docset
+ Install [dashing](https://github.com/technosophos/dashing#readme)
+ `cd THIS_REPO`
+ `./mds/gen-html.sh`
+ `cd html && dashing build` will give you a `torch.docset` folder.

Right now it only roughly parses from the markdown documentation is torch repo, naively by its header level.

![screenshot](/screenshot.png)

