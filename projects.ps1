function node { work; vs "node/build/node.sln" }
function spp { dev; cd 'sand/spp'; vs "build/spp.sln" }
function spy { cd '~/Google Drive/dev/python' }
function scm { cd '~/Google Drive/dev/sand/cmake' }
function st { . "C:/Users/$env:username/AppData/Local/SourceTree/SourceTree.exe" }
function cdbuild { dev; cd build }

function updater {
    . "C:\Users\U.Zakreuskis\Google Drive\dev\work\teslasuit\build\project\source\updater\Debug\updater.exe" $args
}

#Work

function cdtesla { work; cd "teslasuit" }
function _rmbuild { _py rm build }

function retesla {
    cdtesla
    _rmbuild

    tesla
}

function tesla { 
    cdtesla
    if(!(Test-Path 'build' -PathType Container)) { 
        build
    }
    vs "build/project/teslasuit.sln" 
}


#Projects

function cddeploy { dev; cd "projects/deploy" }

function cdengine { dev; cd "projects/TestEngine" }

function reengine {
    cdengine
    _rmbuild
    engine
}

function engine { 
    cdengine
    if(!(Test-Path 'build' -PathType Container)) { 
        newbuild
    }
    vs "build/TestEngine.sln" 
}

function cdnet { dev; cd "projects/CPPNetworking" }

function renet {
    cdnet
    _rmbuild
    net
}

function net { 
    cdnet
    if(!(Test-Path 'build' -PathType Container)) { 
        newbuild
    }
    vs "build/CPPNetworking.sln" 
}