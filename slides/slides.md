---
theme: default
title: A Reluctant Powersheller
info: |
  ## A Reluctant Powersheller
  A story of learning and using Powershell

  ps.bowmanjd.com
highlighter: shiki
drawings:
  presenterOnly: true
  persist: false
mdc: true
transition: slide-left
class: text-center
hideInToc: true
---


# Reluctant Powersheller

<div class="justify-center flex">

![Powershell logo](/logo-powershell-core.svg)

</div>

## A story of Powershell and growing to respect it

ps.bowmanjd.com

<!--
It is an honor to be here. I am Jonathan Bowman. I am a hobbyist developer. I have also been a teacher, preacher, web developer, IT director, CRM consultant, and now I write SQL all day at Cargas. Cargas is the most humane and thoughtful place I have ever worked with technology, and I am proud to be there. I am also proud of my engagement with Neovim, Linux, Python, bash, Rust, even trying to learn a little Go these days (the language, not the game). And today I am sharing with you about Powershell, which I am ambivalent about. But I have grown to a place where I have to say: I like Powershell. I recommend Powershell for a variety of use cases. And I genuinely enjoy working with the syntax.
-->

---
class: text-center
hideInToc: true
---

<div class="justify-center flex">

![qr code for ps.bowmanjd.com](/qrcode.svg)

</div>

# ps.bowmanjd.com

---

<Toc minDepth="1" maxDepth="2"></Toc>

---
layout: center
---

![shell intro](/intro.gif){v-click}

---
layout: image
image: /shell-unix-programming-env.png
backgroundSize: contain
---

<!--
From the 1984 book _The Unix Programming Environmment_ by Brian Kernighan and Rob Pike:

- Although most users think of the shell as an interactive command interpreter, it is really a programming language in which each statement runs a command. Because it must satisfy both the interactive and programming aspects of command execution, it is a strange language, shaped as much by history as by design. [Both an interactive interpreter, like a REPL (read-eval-print loop), and a programming language. And it evolves over time due to dynamic needs.]
- The range of its application leads to an unsettling quantity of detail in the language, but you don't need to understand every nuance to use it effectively. [Some good encouragement, there. Just wade in or even dive in]

-->

---
layout: image
image: /powershell-marketing.png
backgroundSize: contain
---

<!--

- what does a marketing team do when told to promote a command-line shell?
- "Those who don't automate are doomed to repeat themselves" -- love this quote. Is true to the powershell community. It isn't competing so much with other shells, as it is competing with the practice of "clicking through your problems" which is rampant in Windows culture.

-->

---
layout: image
image: /modernize-democratize.png
backgroundSize: contain
---

<!--

- The API for windows infrastructure
- Powershell is open source and cross-platform

-->

---

# Open Source

- [github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell)
- [github.com/MicrosoftDocs/PowerShell-Docs](https://github.com/MicrosoftDocs/PowerShell-Docs)

---

# Installation on various platforms

- Windows: `winget install Microsoft.PowerShell`
- Mac: `brew install powershell/tap/powershell`
- Any: `docker run -it mcr.microsoft.com/powershell`
- Linux: [add the repo then install via package manager](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)
- Nix: `nix-shell -p powershell`

<!--
Powershell 5 is pre-installed on Windows. But the current cross-platform version is Powershell 7. This can be installed on Windows with winget, Mac with brew, or you can run in docker. Microsoft has instructions for Linux, as it varies by distribution, such as Debian, Ubuntu, Redhat or derivative, Alpine, Arch, etc.
-->

---

# Editors

- VS Code with [Powershell extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
- Neovim works well (suggested plugins: mason, nvim-lspconfig (use `powershell_es`), mason-lspconfig
- [Powershell for Sublime Text](https://github.com/SublimeText/PowerShell/)
- Language Server: [github.com/PowerShell/PowerShellEditorServices](https://github.com/PowerShell/PowerShellEditorServices)

<!--

Powershell and VS Code certainly seem made for each other. I enjoy writing Powershell in Neovim. There is a Powershell package for Sublime text, although I am uncertain how well it works and how up to date it is. Really, though, any editor with LSP support should be able to work with the PowerShellEditorServices language server.

-->

---
layout: section
---

# Documentation

---

# [Get-Help](https://learn.microsoft.com/powershell/module/microsoft.powershell.core/get-help)

- Use `Get-Help` command to access documentation
- `Get-Help Get-Command` finds help for the command `Get-Command`
- `Help` is the same as `Get-Help`, but paged.
- `Help array` searches for docs about arrays
- `Help about_*` will show results that start with "about_"
- `Help -Online Get-Member` opens a web page about `Get-Member`
- `Help -Examples Invoke-RestMethod` shows examples for `irm` 
- `Update-Help` to periodically update the local docs

---
layout: center
---

<SlidevVideo autoplay autoreset='slide'>
  <source src="pshelp.webm" type="video/webm" />
</SlidevVideo>

<!--
Get-Help (or Help if you want to view it with a pager) can be followed with a command name.

In this case, `Get-Help`. Currently, there are only a few pages, and a note about "only partial help". So, we enter `Get-Help` and the docs download.

Now, the same help article is much more verbose, including examples.
-->

---

Explore Online

- [learn.microsoft.com/powershell/](https://learn.microsoft.com/powershell/)
- [powershellgallery.com](https://www.powershellgallery.com/)
- [.NET API browser](https://learn.microsoft.com/en-us/dotnet/api/)

---

# Learn X in Y Minutes

[learnxinyminutes.com/docs/powershell](https://learnxinyminutes.com/docs/powershell)

---

# Community

- [discord.com/invite/powershell](https://discord.com/invite/powershell)
- [powershell.slack.com](https://powershell.slack.com/)
- [Official Community blog](https://devblogs.microsoft.com/powershell-community/)
- [reddit.com/r/PowerShell/](https://www.reddit.com/r/PowerShell/)
- [powershell.org](https://powershell.org/)

---

# Streams

- [Research Triangle Powershell Users Group](https://www.youtube.com/c/rtpsug)
- [@PowershellOrg](https://www.youtube.com/@PowershellOrg)

---
layout: two-cols-header
layoutClass: gap-16
---

# Laid back and folksy: Powershell MVA videos

::left::

![Getting Started with Powershell 3.0](/getting-started-with-powershell.png){style="height:200px"}

[Getting Started with PowerShell 3.0](https://learn.microsoft.com/en-us/shows/GetStartedPowerShell3/)
<br>([also on Youtube](https://www.youtube.com/watch?v=UVUd9_k9C6A&list=PL7T06JEc5PF6kusr3cg6eYqCAiU6ezVj5&index=2))

::right::

![Advanced Tools * Scripting with Powershell 3.0](/advanced-tools-and-scripting.png){style="height:200px"}

[Advanced Tools & Scripting with PowerShell 3.0](https://learn.microsoft.com/en-us/shows/advpowershell3/)
<br>([also on Youtube](https://www.youtube.com/watch?v=K4YDHFalAK8&list=PL7T06JEc5PF6kusr3cg6eYqCAiU6ezVj5&index=1))

---

# The Powershell Podcast by PDQ

[The Powershell Podcast](https://www.pdq.com/resources/the-powershell-podcast/)

---

# Powershell 101 book

- [Available to read online for free](https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/00-introduction)
- [Also on LeanPub](https://leanpub.com/powershell101)

---

# Let's build a Wikipedia search client

```ps1
Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)"
```

<div v-click>
```txt
StatusCode        : 200
StatusDescription : OK
Content           : {"pages":[{"id":21255,"key":"North_Korea","title":"North Korea","excerpt":"North Korea, officially the Democratic People's Republic of Korea (DPRK), 
                    is a country in East Asia. It constitutes the north…
RawContent        : HTTP/1.1 200 OK
                    Date: Fri, 19 Apr 2024 00:31:53 GMT
                    Server: mw1404.eqiad.wmnet
                    X-Content-Type-Options: nosniff
                    Cache-Control: no-cache
                    Access-Control-Allow-Origin: *
                    Vary: Accept-Encoding
                    Age: 0
                    X-Cac…
Headers           : {[Date, System.String[]], [Server, System.String[]], [X-Content-Type-Options, System.String[]], [Cache-Control, System.String[]]…}
Images            : {}
InputFields       : {}
Links             : {}
RawContentLength  : 2096
RelationLink      : {}
```
</div>

---

````md magic-move
```ps1
Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)"
```

```ps1
(Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)")
```

```ps1
(Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)").Content
```
````

<div v-click>
```ansi{all}{maxHeight:'26.5rem'}
{"pages":[{"id":21255,"key":"North_Korea","title":"North Korea","excerpt":"North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the northern half of the Korean Peninsula","matched_title":null,"description":"Country in East Asia","thumbnail":{"mimetype":"image/svg+xml","width":60,"height":30,"duration":null,"url":"//upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/60px-Flag_of_North_Korea.svg.png"}},{"id":18890,"key":"Microsoft_Windows","title":"Microsoft Windows","excerpt":"Microsoft Windows is a product line of proprietary graphical operating systems developed and marketed by Microsoft. It is grouped into families and sub-families","matched_title":null,"description":"Computer operating systems","thumbnail":null},{"id":20640,"key":"MacOS","title":"MacOS","excerpt":"macOS (/ˌmækoʊˈɛs/ MAK-oh-ESS), originally Mac OS X, previously shortened as OS X, is an operating system developed and marketed by Apple since 2001. It","matched_title":null,"description":"Operating system for Apple computers","thumbnail":null},{"id":6097297,"key":"Linux","title":"Linux","excerpt":"Linux (/ˈlɪnʊks/ LIN-uuks) is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released","matched_title":null,"description":"Family of Unix-like operating systems","thumbnail":{"mimetype":"image/svg+xml","width":60,"height":71,"duration":null,"url":"//upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/60px-Tux.svg.png"}},{"id":22194,"key":"Operating_system","title":"Operating system","excerpt":"An operating system (OS) is system software that manages computer hardware and software resources, and provides common services for computer programs.","matched_title":null,"description":"Software that manages computer hardware resources","thumbnail":{"mimetype":"image/svg+xml","width":60,"height":89,"duration":null,"url":"//upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Operating_system_placement.svg/60px-Operating_system_placement.svg.png"}}]}
```
</div>

---

````md magic-move
```ps1
(Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)").Content
```

```ps1
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-WebRequest $url
$response.Content
```

```ps1
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-WebRequest $url
$body = $response.Content | ConvertFrom-Json
$body
```
````

<div v-click>
```ansi{all}{maxHeight:'26.5rem'}
pages
-----
{@{id=21255; key=North_Korea; title=North Korea; excerpt=North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitute…
```
</div>

---

````md magic-move

```ps1
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-WebRequest $url
$body = $response.Content | ConvertFrom-Json
$body
```

```ps1
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
$body = $response.Content | ConvertFrom-Json
$body
```

```ps1
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
```

```ps1
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
$pages = $response.pages
$pages
```
````

<div v-click>
```ansi{all}{maxHeight:'21.5rem'}
id            : 21255
key           : North_Korea
title         : North Korea
excerpt       : North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the northern half of the Korean Peninsula
matched_title : 
description   : Country in East Asia
thumbnail     : @{mimetype=image/svg+xml; width=60; height=30; duration=; url=//upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/60px-Flag_of_North_Korea.svg.png}

id            : 18890
key           : Microsoft_Windows
title         : Microsoft Windows
excerpt       : Microsoft Windows is a product line of proprietary graphical operating systems developed and marketed by Microsoft. It is grouped into families and sub-families
matched_title : 
description   : Computer operating systems
thumbnail     : 

id            : 20640
key           : MacOS
title         : MacOS
excerpt       : macOS (/ˌmækoʊˈɛs/ MAK-oh-ESS), originally Mac OS X, previously shortened as OS X, is an operating system developed and marketed by Apple since 2001. It
matched_title : 
description   : Operating system for Apple computers
thumbnail     : 

id            : 6097297
key           : Linux
title         : Linux
excerpt       : Linux (/ˈlɪnʊks/ LIN-uuks) is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released
matched_title : 
description   : Family of Unix-like operating systems
thumbnail     : @{mimetype=image/svg+xml; width=60; height=71; duration=; url=//upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/60px-Tux.svg.png}

id            : 22194
key           : Operating_system
title         : Operating system
excerpt       : An operating system (OS) is system software that manages computer hardware and software resources, and provides common services for computer programs.
matched_title : 
description   : Software that manages computer hardware resources
thumbnail     : @{mimetype=image/svg+xml; width=60; height=89; duration=; url=//upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Operating_system_placement.svg/60px-Operating_system_placement.svg.png}
```
</div>

---

```ps1
$pages | Format-Table
```

<div v-click>
```text{all}{maxHeight:'26.5rem'}
     id key               title             excerpt
     -- ---               -----             -------                                                                                                                         
  21255 North_Korea       North Korea       North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the norther…
  18890 Microsoft_Windows Microsoft Windows Microsoft Windows is a product line of proprietary graphical operating systems developed and marketed by Microsoft. It is group…
  20640 MacOS             MacOS             macOS (/ˌmækoʊˈɛs/ MAK-oh-ESS), originally Mac OS X, previously shortened as OS X, is an operating system developed and markete…
6097297 Linux             Linux             Linux (/ˈlɪnʊks/ LIN-uuks) is a family of open-source Unix-like operating systems based on the Linux kernel, an operating syste…
  22194 Operating_system  Operating system  An operating system (OS) is system software that manages computer hardware and software resources, and provides common services…
```
</div>

---

```ps1
$pages | Get-Member
```

<div v-click>
```text{all}{maxHeight:'26.5rem'}
   TypeName: System.Management.Automation.PSCustomObject

Name          MemberType   Definition
----          ----------   ----------
Equals        Method       bool Equals(System.Object obj)
GetHashCode   Method       int GetHashCode()
GetType       Method       type GetType()
ToString      Method       string ToString()
description   NoteProperty string description=Country in East Asia
excerpt       NoteProperty string excerpt=North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the northern …
id            NoteProperty long id=21255
key           NoteProperty string key=North_Korea
matched_title NoteProperty object matched_title=null
thumbnail     NoteProperty System.Management.Automation.PSCustomObject thumbnail=@{mimetype=image/svg+xml; width=60; height=30; duration=; url=//upload.wikimedia.org/wikip…
title         NoteProperty string title=North Korea
```
</div>

---

```ps1
$body.pages.GetType()
```

<div v-click>
```text{all}{maxHeight:'26.5rem'}
IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     Object[]                                 System.Array
```
</div>

---

````md magic-move
```ps1
$pages | ConvertTo-Html
```

```ps1
$pages | ConvertTo-Html -Fragment
```

```ps1
$pages | ConvertTo-Html -Fragment -Property Key, Title, Description
```
````

<div v-click>
```html
<table>
<colgroup><col/><col/><col/></colgroup>
<tr><th>key</th><th>title</th><th>description</th></tr>
<tr><td>North_Korea</td><td>North Korea</td><td>Country in East Asia</td></tr>
<tr><td>Microsoft_Windows</td><td>Microsoft Windows</td><td>Computer operating systems</td></tr>
<tr><td>MacOS</td><td>MacOS</td><td>Operating system for Apple computers</td></tr>
<tr><td>Linux</td><td>Linux</td><td>Family of Unix-like operating systems</td></tr>
<tr><td>Operating_system</td><td>Operating system</td><td>Software that manages computer hardware resources</td></tr>
</table>
```
</div>

---

<table>
<colgroup><col/><col/><col/></colgroup>
<tr><th>key</th><th>title</th><th>description</th></tr>
<tr><td>North_Korea</td><td>North Korea</td><td>Country in East Asia</td></tr>
<tr><td>Microsoft_Windows</td><td>Microsoft Windows</td><td>Computer operating systems</td></tr>
<tr><td>MacOS</td><td>MacOS</td><td>Operating system for Apple computers</td></tr>
<tr><td>Linux</td><td>Linux</td><td>Family of Unix-like operating systems</td></tr>
<tr><td>Operating_system</td><td>Operating system</td><td>Software that manages computer hardware resources</td></tr>
</table>

---

````md magic-move
```ps1
$pages = $pages | Select-Object -Last 4
```

```ps1
$pages = $pages | Select-Object -Last 4 | Sort-Object -Property key
```

```ps1
$pages = $pages | Select-Object -Last 4 | Sort-Object -Property key
$pages
```

```ps1
$pages = $pages | Select-Object -Last 4 | Sort-Object -Property key
$pages.title
```
````

<div v-click>
```text
Linux
MacOS
Microsoft Windows
Operating system
```
</div>

---

# Notable Powershell Modules

- [dbatools.io](https://dbatools.io/)
- [pester.dev](https://pester.dev/) (Testing framework)
- [PSPGP](https://github.com/EvotecIT/PSPGP)
- [Posh-ACME](https://poshac.me/docs/) (Let's Encrypt)
- [ImportExcel](https://github.com/dfinke/ImportExcel)
- [MailoZaurr](https://github.com/EvotecIT/MailoZaurr) (SMTP, POP3, IMAP...)
- [SimplySql](https://github.com/mithrandyr/SimplySql) to query various db engines
- [PS-TextTable](https://github.com/jjcarrier/PS-TextTable) (Convert text to PS objects)
- [PS-TableUI](https://github.com/jjcarrier/PS-TableUI) (TUI item selector)
- [Pode](https://badgerati.github.io/Pode/) A Powershell web framework!?

---


