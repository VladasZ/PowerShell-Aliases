function node { work; vs "node/build/node.sln" }
function spp { dev; vs "sand\spp\spp.sln" }
function st { . "C:\Users\$env:username\AppData\Local\SourceTree\SourceTree.exe" }

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
        build
    }
    vs "build\TestEngine.sln" 
}