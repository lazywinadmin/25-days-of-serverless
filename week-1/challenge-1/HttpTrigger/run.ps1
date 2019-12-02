using namespace System.Net

# Input bindings are passed in via param block.
param(
    $Request,
    $TriggerMetadata
)

# To Debug, uncomment the following
#Wait-Debugger

#  נ (Nun), ג (Gimmel), ה (Hay), or ש (Shin)

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body       = $(' נ', ' ג', ' ה', ' ש' | Get-Random)
    })
