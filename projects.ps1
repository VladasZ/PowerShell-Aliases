function node { work; vs "node/build/node.sln" }
function spp { dev; cd 'sand/spp'; vs "build/spp.sln" }
function spy { cd $__devPath + 'python' }
function scm { cd $__devPath + 'sand/cmake' }
function st { . "C:/Users/$env:username/AppData/Local/SourceTree/SourceTree.exe" }
function cdbuild { dev; cd build }

function updater {
    . "C:\Program Files (x86)\Teslasuit\1.0\bin\updater.exe" $args
}

#Work

function cdtesla { work; cd "teslasuit" }
function _rmbuild { rm build -Force -Recurse }

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

function inst {
    cp "$__devPath\work\teslasuit\build\project\source\updater\Debug\updater.exe" "C:\Program Files (x86)\Teslasuit\1.0\bin\updater.exe"
    cp "$__devPath\work\teslasuit\build\project\source\rest_api\Debug\rest.api.dll" "C:\Program Files (x86)\Teslasuit\1.0\lib\rest.api.dll"
  
    mkdir "C:\Program Files (x86)\Teslasuit\pack" -Force
    cp "$__devPath\work\teslasuit\build\project\source\updater\Debug\updater.exe" "C:\Program Files (x86)\Teslasuit\pack\updater.exe"
    cp "$__devPath\work\teslasuit\build\project\source\rest_api\Debug\rest.api.dll" "C:\Program Files (x86)\Teslasuit\pack\rest.api.dll"
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