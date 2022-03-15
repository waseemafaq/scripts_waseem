# $computername = $env:COMPUTERNAME
# $data = Get-EventLog System -EntryType Error -Newest 100 -ComputerName $computername |
# Group-Object -Property Source -NoElement

# #Create an HTMl Report

# $data | Sort-Object -Property Count, Name -Descending |
# Select-Object Count, Name |
# ConvertTo-Html | Out-File C:\eventlogoutput.html

# Invoke-Item C:\eventlogoutput.html


param(
    # Parameter help description
    # [string]$log = "Application",
    # [string]$computername = $env:COMPUTERNAME,
    # [int32]$newest = 100

    # Parameter help description
    [Parameter(Mandatory)] [string]$Log,
    [Parameter(Mandatory)] [string]$Computername,
    [Parameter(Mandatory)] [int32]$Newest = 100
    
)


$data = Get-EventLog $log -EntryType Error -Newest $newest -ComputerName $computername |
Group-Object -Property Source -NoElement

#Create an HTMl Report

$data | Sort-Object -Property Count, Name -Descending |
Select-Object Count, Name |
ConvertTo-Html | Out-File C:\eventlogoutput.html

Invoke-Item C:\eventlogoutput.html