function node { work; vs "node/build/node.sln" }
function spp { dev; vs "sand\spp\spp.sln" }
function spy { cd '~/Google Drive/dev/python' }
function scm { cd '~/Google Drive/dev/sand/cmake' }
function st { . "C:\Users\$env:username\AppData\Local\SourceTree\SourceTree.exe" }
function cdbuild { dev; cd build }

function updater {
    .\build\project\source\updater\Debug\updater.exe $args
}

#Work

function cdtesla { work; cd "teslasuit" }

function retesla {
    cdtesla
    if((Test-Path 'build' -PathType Container)) { 
        Remove-Item -Recurse -Force build
    }
    tesla
}

function tesla { 
    cdtesla
    if(!(Test-Path 'build' -PathType Container)) { 
        build
    }
    vs "build\project\teslasuit.sln" 
}


#Projects

function cdengine { dev; cd "projects\TestEngine" }

function reengine {
    cdengine
    if((Test-Path 'build' -PathType Container)) { 
        Remove-Item -Recurse -Force build
    }
    engine
}

function engine { 
    cdengine
    if(!(Test-Path 'build' -PathType Container)) { 
        newbuild
    }
    vs "build\TestEngine.sln" 
}

function cdnet { dev; cd "projects\CPPNetworking" }

function renet {
    cdnet
    if((Test-Path 'build' -PathType Container)) { 
        Remove-Item -Recurse -Force build
    }
    net
}

function net { 
    cdnet
    if(!(Test-Path 'build' -PathType Container)) { 
        build
    }
    vs "build\CPPNetworking.sln" 
}