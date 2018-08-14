$XMLFiles = get-childitem "C:\FMBPublic\Downloads\Upload\dm_spl_release_human_rx_part3\prescription\" -recurse | where {$_.extension -eq ".xml"} | % {
      $_.FullName
}
$XMLFiles

Foreach ($XMLFile in $XMLFiles) {
$XMLFileName = Split-Path $XMLFile -leaf
$XMLFilePath = $XMLFile -Replace $XMLFileName, ''
#$XMLFilePath
$XMLFileName = $XMLFileName -Replace '.xml',''
#$XMLFileName
#$XMLFile

$SqlConnection = new-object System.Data.SqlClient.SqlConnection
$SqlConnection.ConnectionString = "Data Source=SQL2016;Database=DrugData;Integrated Security=True;"
$SqlCommand = New-Object System.Data.SqlClient.SqlCommand
$SqlCommand.CommandText = "Exec [dbo].[spInsertXMLData] @XMLDataID, @PhotoLocation, @FileLocation"
$SqlCommand
# Add parameters to pass values to the stored procedure
$SqlCommand.Parameters.AddWithValue("@XMLDataID", $XMLFileName) | Out-Null
$SqlCommand.Parameters.AddWithValue("@PhotoLocation", $XMLFilePath) | Out-Null
$SqlCommand.Parameters.AddWithValue("@FileLocation", $XMLFile) | Out-Null
$SQLCommand.Connection = $SqlConnection
$SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
$SqlAdapter.SelectCommand = $SqlCommand
$DataSet = New-Object System.Data.DataSet
$SqlAdapter.Fill($DataSet)
$SqlConnection.Close()
$DataSet.Tables[0]

Clear-Variable -Name sqlCommand
#$SqlCommand

}
