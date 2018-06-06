#git

function gs { git status }
function gp { git push }

function push {
    git add -A
    git commit -m "$args"
    git push
}

function cclone {
    _py cleanclone $args
}

function getbuild {
    cclone vladasz/build
}