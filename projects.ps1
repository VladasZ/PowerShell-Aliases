

$__teslaPath = "$__devPath/work/teslasuit"
$__hapticPath = "$__devPath/work/HapticEditor"

function node { work; vs "node/build/node.sln" }
function spp { dev; cd 'sand/spp'; vs "build/spp.sln" }
function spy { cd $__devPath + 'python' }
function scm { cd $__devPath + 'sand/cmake' }
function st { . "C:/Users/$env:username/AppData/Local/SourceTree/SourceTree.exe" }
function cdbuild { dev; cd build }

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

function test {
    . "$__devPath\work\teslasuit\build\project\tests\api\bin\test.api.exe"
}

function cdpatch {
    cd "C:\Program Files (x86)\Teslasuit\patch\"
}

function inst {
    cp "$__teslaPath\build\project\source\updater\Debug\updater.exe" "C:\Program Files (x86)\Teslasuit\1.0\bin\updater.exe"
    cp "$__teslaPath\build\project\source\service\bin\teslasuit.service.exe" "C:\Program Files (x86)\Teslasuit\1.0\bin\teslasuit.service.exe"
    cp "$__teslaPath\build\project\source\api\Debug\teslasuit.api.dll" "C:\Program Files (x86)\Teslasuit\1.0\lib\teslasuit.api.dll"
    cp "$__teslaPath\build\project\source\rest_api\Debug\rest.api.dll" "C:\Program Files (x86)\Teslasuit\1.0\lib\rest.api.dll"
  
    mkdir "C:\Program Files (x86)\Teslasuit\patch" -Force
    mkdir "C:\Program Files (x86)\Teslasuit\patch\lib" -Force
    mkdir "C:\Program Files (x86)\Teslasuit\patch\bin" -Force

    cp "$__teslaPath\build\project\source\service\bin\teslasuit.service.exe" "C:\Program Files (x86)\Teslasuit\patch\bin\teslasuit.service.exe"
    cp "$__teslaPath\build\project\source\updater\Debug\updater.exe" "C:\Program Files (x86)\Teslasuit\patch\bin\updater.exe"
    cp "$__teslaPath\build\project\source\rest_api\Debug\rest.api.dll" "C:\Program Files (x86)\Teslasuit\patch\lib\rest.api.dll"
    cp "$__teslaPath\build\project\source\api\Debug\teslasuit.api.dll" "C:\Program Files (x86)\Teslasuit\patch\lib\teslasuit.api.dll"
}

function insta {
    cp "$__teslaPath\build_android\project\source\rest_api\librest.api.so" "$__hapticPath\android\libs\armv7\librest.api.so"
}

function builda {
    cdtesla
    cd build_android/project
    make
    cd ../..
}

function cdsdk {
    work; cd 'sdk'
}


function teslasign {

}

function esptool {
    . "C:\Program Files (x86)\Teslasuit\1.0\bin\esptool.exe" $args
}

function mkspiffs {
    . "C:\Program Files (x86)\Teslasuit\1.0\bin\mkspiffs.exe" $args
}

function updater {
    . "C:\Program Files (x86)\Teslasuit\1.0\bin\updater.exe" $args
}


function binarycreator {
    . 'C:\Qt\QtIFW-3.0.2\bin\binarycreator' $args
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
