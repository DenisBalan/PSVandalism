# PSVandalism 😂
Powershell Github-History-Vandalism-as-a-Service

Wrapper around @pikesley vandalism service.
@see https://github.com/pikesley/pokrovsky

![screenshot](http://sam.pikesley.org/pokrovsky/img/final-result.png)
#### Requirements: 
Powershell ver >= 3.0, check via `$PSVersionTable.PSVersion`

## Get started

1. clone this repo ✔
`git clone https://github.com/DenisBalan/PSVandalism`

2. open powershell `./PSVandalism/PSVandalism.ps1`
enter prompted variables (`github-username`, `disposable-reponame`, `text`)

3. enjoy your new github activity graph 😎

## Bonus! - oneliner 🎁

Just copy-paste this into your powershell terminal

`
iex $($(iwr $("https://pokrovsky.herokuapp.com/$(read-host 'github-username')/$(read-host 'disposable-reponame')/$([uri]::EscapeDataString($(read-host 'text')))")) |% content |% {$_ -replace @('#!/bin/bash', '#Requires -Version 3.0') } |% {$_ -replace @('touch', 'ni') } |% {$_ -replace @('GIT_', '$env:GIT_') } |% {$_ -replace @('/dev/null', '$null') } |% {$_ -replace @('DATE=', 'DATE="') } |% {$_ -replace @('00:00', '00:00"; ') }) 
`
