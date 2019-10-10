Configuration FIPSEnable
{
    Registry FipsAlgorithmPolicy
    {
        Ensure="Present"  # You can also set Ensure to "Absent"
        Key="HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\FipsAlgorithmPolicy"
        ValueName="Enabled"
        ValueData="1"
 ValueType="Binary"
    }
}

FIPSTest -output C:\scripts\FIPS
Start-DScConfiguration -Path C:\scripts\FIPS -Wait -Force- Verbose