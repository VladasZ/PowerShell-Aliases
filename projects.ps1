function node { work; vs "node/build/node.sln" }
function spp { dev; vs "sand\spp\spp.sln" }
function cdtesla { work; cd "teslasuit" }
function tesla { cdtesla; vs "build\project\teslasuit.sln" }
function st { . "C:\Users\$env:username\AppData\Local\SourceTree\SourceTree.exe" }