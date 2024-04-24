<#
.SYNOPSIS
Gets a list of English Wikipedia articles using the given query.

.DESCRIPTION
Yearning for a Wikipedia click-spiral, but can't stand to leave the terminal until you absolutely have to?
With this Powershell script, query to your heart's content from the comfort of the command line.

.EXAMPLE
Enter-RabbitHole "linksto:Shell_(computing)"

.EXAMPLE
Enter-RabbitHole -limit 20 "PowerShell"

.LINK
Invoke-RestMethod

.INPUTS
System.String. You can pipe the search query string to this cmdlet.

.OUTPUTS
Enter-RabbitHole returns an array of objects each consisting of a title and URL for a Wikipedia article.

#>
function Enter-RabbitHole
{
  param(
    # Query to search for, such as what you would enter in a Wikipedia search online
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,
    # How many results to retrieve and display
    [int]
    $limit = 5
  )

  $escapedQuery = [uri]::EscapeDataString($query)
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$escapedQuery"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages | Select-Object -Property title, @{Name='url'; Expression = { "https://en.wikipedia.org/wiki/$($_.key)" }} 
}
