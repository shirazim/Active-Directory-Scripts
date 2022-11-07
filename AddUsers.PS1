#Very simple script that imports a CSV of users/attributes and adds them into AD

$Users = import-csv C:\users\shirazi\desktop\users.csv 

$users | % {

    new-aduser -Name $_.name `
    -surname $_.surename `
    -emailaddress $_.email `
    -employeeid $_.'employee id' `
    -officePhone $_.'phone number'

}
