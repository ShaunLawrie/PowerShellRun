<#
.SYNOPSIS
Initializes PSRun entries.
#>
function Enable-PSRunEntry {
    [CmdletBinding()]
    param (
        [ValidateSet('All', 'Application', 'Executable', 'Function', 'Utility', 'Favorite')]
        [String[]]$Category = 'All'
    )

    if ($Category -contains 'All') {
        $Category = 'Application', 'Executable', 'Function', 'Utility', 'Favorite'
    }
    $script:globalStore.EnableEntries($Category)
}
