
# Mailbox Migration Utility

# Connect to Exchange Online
Connect-ExchangeOnline -UserPrincipalName admin@yourdomain.com

# Read list of mailboxes
$mailboxes = Import-Csv "C:\Scripts\MailboxList.csv"

foreach ($mbx in $mailboxes) {
    New-MoveRequest -Identity $mbx.UPN -TargetDeliveryDomain "tenant.mail.onmicrosoft.com"
}
