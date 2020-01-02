iex $($(iwr $("https://pokrovsky.herokuapp.com/$(`
    read-host 'github-username')/$(`
    read-host 'disposable-reponame')/$([uri]::EscapeDataString($(`
    read-host 'text')))"))`
 |% content `
 |% {$_ -replace @('#!/bin/bash', '#Requires -Version 3.0') } `
 |% {$_ -replace @('touch', 'ni') } |% {$_ -replace @('GIT_', '$env:GIT_') } `
 |% {$_ -replace @('/dev/null', '$null') } `
 |% {$_ -replace @('DATE=', 'DATE="') } `
 |% {$_ -replace @('00:00', '00:00"; ') })

