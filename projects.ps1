

$__workPath = "$__devPath/work"
$__teslaPath = "$__workPath/service"
$__hapticPath = "$__workPath/HapticEditor"

function node { work; vs "node/build/node.sln" }
function spp { dev; cd 'sand/spp'; vs "build/spp.sln" }
function spy { cd $__devPath + 'python' }
function scm { cd $__devPath + 'sand/cmake' }
function st { . "C:/Users/$env:username/AppData/Local/SourceTree/SourceTree.exe" }
function cdbuild { dev; cd build }

#Work

function pingcu { ping 192.168.1.1 -t }
function udp { nc -ulvp $args }
function tcp { nc -lvp $args }

function arm {
    sand
    vs "arm/build/node.sln"
}

function cdsmon {
    dev
    cd "projects/smon"
}

function smon {
    cdsmon
    vs "build/smon.sln"
}

function cdtesla { work; cd "service" }
function cdshell { dev; cd "shell" }
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
    . "C:\Users\u.zakreuskis\dev\work\service\build\project\tests\api\bin\test.api.exe"
}

function ser {
    . "C:\Users\u.zakreuskis\dev\work\service\build\project\source\service\bin\teslasuit.service.exe"
}

function cdpatch {
    cd "C:\Program Files (x86)\Teslasuit\"
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

function inst_release {
    cp "$__teslaPath\build\project\source\updater\Release\updater.exe" "C:\Program Files (x86)\Teslasuit\1.0\bin\updater.exe"
    cp "$__teslaPath\build\project\source\service\bin\teslasuit.service.exe" "C:\Program Files (x86)\Teslasuit\1.0\bin\teslasuit.service.exe"
    cp "$__teslaPath\build\project\source\api\Release\teslasuit.api.dll" "C:\Program Files (x86)\Teslasuit\1.0\lib\teslasuit.api.dll"
    cp "$__teslaPath\build\project\source\rest_api\Release\rest.api.dll" "C:\Program Files (x86)\Teslasuit\1.0\lib\rest.api.dll"
  
    mkdir "C:\Program Files (x86)\Teslasuit\patch_release" -Force
    mkdir "C:\Program Files (x86)\Teslasuit\patch_release\lib" -Force
    mkdir "C:\Program Files (x86)\Teslasuit\patch_release\bin" -Force

    cp "$__teslaPath\build\project\source\service\bin\teslasuit.service.exe" "C:\Program Files (x86)\Teslasuit\patch_release\bin\teslasuit.service.exe"
    cp "$__teslaPath\build\project\source\updater\Release\updater.exe" "C:\Program Files (x86)\Teslasuit\patch_release\bin\updater.exe"
    cp "$__teslaPath\build\project\source\rest_api\Release\rest.api.dll" "C:\Program Files (x86)\Teslasuit\patch_release\lib\rest.api.dll"
    cp "$__teslaPath\build\project\source\api\Release\teslasuit.api.dll" "C:\Program Files (x86)\Teslasuit\patch_release\lib\teslasuit.api.dll"
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

function cu {
    work
    vs "control_unit/build/ControlUnit.sln"
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
