function py {
    python3 $@
}
function _py {
    python3 /Users/$USER/Google\ Drive/docs/.shell/helper.py $@
}
function res {
    . ~/.bash_profile 
}
function subl {
    /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl
}
function subll {
    subl .
}
function dev {
    cd /Users/$USER/Google\ Drive/dev
}
function cdal {
    cd /Users/$USER/Google\ Drive/docs/.shell/
}
function al {
    cdal
   subll
}
function op {
    open .
}
function getbuild {
    _py cleanclone vladasz/build
}
function build {
    python3 build.py
}
