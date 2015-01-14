$Name = New-xDscResourceProperty -Name Name -Type String -Attribute Key -Description 'Name of the database' 
$ServerName = New-xDscResourceProperty -Name ServerName -Type String -Attribute Key -Description 'Name of the database server in which database should be created'
$MaximumSizeInGB = New-xDscResourceProperty -Name MaximumSizeInGB -Type UInt32 -Attribute Write -Description 'Maximum size of the database in GB'
$Collation = New-xDscResourceProperty -Name Collation -Type String -Attribute Write -Description 'Collation of the database'
$Edition = New-xDscResourceProperty -Name Edition -Type String -Attribute Write -Description 'Edition of the database'
$ServerCredential = New-xDscResourceProperty -Name ServerCredential -Type PSCredential -Attribute Required -Description 'Credential to the database server'
$AzureSubscriptionName = New-xDscResourceProperty -Name AzureSubscriptionName -Type String -Attribute Write -Description 'Specifies the name of the Azure subscription that should be set to Current'
$AzurePublishSettingsFile = New-xDscResourceProperty -Name AzurePublishSettingsFile -Type String -Attribute Write -Description 'Specifies the location of the Publish Settings file for the Azure Subscription'
$Ensure = New-xDscResourceProperty -Name Ensure -Type String -Attribute Write -ValidateSet "Present", "Absent" -Description 'Ensure that database is present or absent'
New-xDscResource -Name  -Property @($Name, $ServerName, $MaximumSizeInGB, $Collation, $Edition, $ServerCredential, $AzureSubscriptionName, $AzurePublishSettingsFile, $Ensure) -ModuleName msAzure -FriendlyName 
