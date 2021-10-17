# ======================
# show expiring certificates
# ======================

$result = Get-ChildItem cert: -Recurse -ExpiringInDays 30 | Select-Object -Property Thumbprint, Subject, NotAfter  | ConvertTo-Html
$mailbody = "
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta name='viewport' content='initial-scale=1.0, width=device-width, maximum-scale=1.0, minimal-ui' charset='utf-8'/>

<style type='text/css'>

body
{
	font-family: Arial, Helvetica, 'Open-Sans', 'Segoe UI', sans-serif;
}

table
{
	table-layout: fixed;
	margin: 0 auto;
}

@media screen and (min-width: 601px) {
	.container
	{
        width: 600px !important;
	}
}

a.button
{
	-webkit-transition:             background-color, 0.3s;
    transition:                     background-color, 0.3s;
}

a.button:hover
{
	background-color: #fcfcf9;
	color: #9db877 !important;
}

.appleLinks a
{
	color: #fcfcf9 !important;
}

</style>
</head>

<body bgcolor='#f4f5f4' style='margin:0px; padding:0px; background: #f4f5f4; font-family: Arial, Helvetica, 'Open-Sans', 'Segoe UI', sans-serif; -webkit-text-size-adjust: none;'>

<table align='center' bgcolor='#9db877' width='100%' cellpadding='0' cellspacing='0'>
	<tbody>
		<tr>
			<td>

				<!--[if mso]>
				<table width='600' align='center' cellpadding='0' cellspacing='0' border='0'>
				<tr>
				<td>
				<![endif]-->

				<table align='center' class='container' width='100%' cellpadding='0' cellspacing='0' style='max-width: 600px;'>
				    <tr>
				        <td align='center'>

						<!--[if mso]>
						<table width='100%' align='center' cellpadding='0' cellspacing='0' border='0'>
				    	<tr>
				      	<td>
						<![endif]-->
							
							<div style='height:60px;width:100%;font-size:60px;line-height:60px;'>&nbsp;</div>
								<table valign='bottom' align='center' width='100%' cellpadding='0' cellspacing='0'>
									<tbody>
										<tr>
											<td border='0' style='text-align: center; vertical-align: bottom; color: #fcfcf9; font-weight: bold; line-height: 44px;'>
												<h2 style='vertical-align: bottom; font-size: 32px'>Certificate Expiration Warning</h2>
											</td>
										</tr>
									</tbody>
								</table>
							<div style='height:40px;width:100%;font-size:40px;line-height:40px;'>&nbsp;</div>
							
								<table align='center' width='100%' cellpadding='0' cellspacing=''>
									<tbody>
										<tr>
											<td style='text-align: center; vertical-align: top; font-size: 20px; color: #fcfcf9;'>
												<p>We have detected that the following certificates are about to expire. Please renew them soon to avoid interruption of service.</p>
											</td>
										</tr>
									</tbody>
								</table>

								<table width='100%' border='0' cellspacing='0' cellpadding='20' align='center'>
								  <tr>
								    <td>
								      <table border='0' cellspacing='0' cellpadding='0' align='center'>
								        <tr>
								          <td align='center' style='-webkit-border-radius: 1px; -moz-border-radius: 1px; border-radius: 1px;' bgcolor='#9db877'; color: #fcfcf9;'>
								         <p>$result</p>
										  </td>
								        </tr>
								      </table>
								    </td>
								  </tr>
								</table>
							<div style='height:30px;width:100%;font-size:80px;line-height:80px;'>&nbsp;</div>

						<!--[if mso]>
						</td>
						</tr>
						</table>
						<![endif]-->
						
				        </td>
				    </tr>
				</table>

				<!--[if mso]>
				</td>
				</tr>
				</table>
				<![endif]-->

			</td>
		</tr>
	</tbody>
</table>

<table align='center' bgcolor='#fcfcf9' width='100%' cellpadding='0' cellspacing='0'>
	<tbody>
		<tr>
			<td>
				<!--[if mso | IE]>
				<table width='600' align='center' cellpadding='0' cellspacing='0' border='0' style='max-width: 600px; width:600px !important;'>
				<tr>
				<td>
				<![endif]-->

				<table bgcolor='#fcfcf9' align='center' class='container' width='100%' cellpadding='0' cellspacing='0' style='max-width: 600px;'>
				    <tr>
				        <td align='center'>

				        <!--[if mso | IE]>
						<table width='100%' align='center' cellpadding='0' cellspacing='0' border='0'>
				    	<tr>
				      	<td>
						<![endif]-->

							<div style='height:50px;width:100%;font-size:50px;line-height:50px;'>&nbsp;</div>
								<table align='center' bgcolor='#fcfcf9' width='100%' cellpadding='20' cellspacing='0'>
									<tbody>
										<tr>
											<td style='text-align: center; vertical-align: middle; font-size: 14px; color: #2d3959;'>
												This email was generated by Cortado Server.
											</td>
										</tr>
									</tbody>
								</table>
							<div style='height:50px;width:100%;font-size:50px;line-height:50px;'>&nbsp;</div>

						<!--[if mso | IE]>
						</td>
						</tr>
						</table>
						<![endif]-->

				        </td>
				    </tr>
				</table>

				<!--[if mso | IE]>
				</td>
				</tr>
				</table>
				<![endif]-->

			</td>
		</tr>
	</tbody>
</table>

<table align='center' width='100%' height='244' cellpadding='0' cellspacing='0' bgcolor='#f4f5f4' style='border-top: 1px solid #e4e5e7; height: 244px;'>
	<tbody>
		<tr>
			<td>
				<!--[if mso]>
				<table width='100%' align='center' cellpadding='0' cellspacing='0' border='0'>
				<tr>
				<td>
				<![endif]-->

				<table bgcolor='#f4f5f4' align='center' class='container' width='100%' cellpadding='0' cellspacing='0' style='max-width: 600px;'>
				    <tr>
				        <td align='center'>

				        <!--[if mso]>
						<table width='600' align='center' cellpadding='0' cellspacing='0' border='0'>
				    	<tr>
				      	<td>
						<![endif]-->

						<div style='height:50px;width:100%;font-size:50px;line-height:50px;'>&nbsp;</div>
							<table align='center' bgcolor='#f4f5f4' width='100%' cellpadding='0' cellspacing='0'>
								<tbody>
									<tr>													
										<td width='100%' height='22' align='center' style='text-align: center; vertical-align: top; font-size: 14px; color: #bfbfbf; height: 22px;'>
											&#169; Cortado Mobile Solutions GmbH 2018
										</td>
									</tr>
									<tr>
										<td width='100%' height='66' align='center' style='text-align: center; vertical-align: top; font-size: 12px; color: #bfbfbf; height:66px;'>
											<a href='https://www.cortado.com/legal-notes/' style='color: #bfbfbf'>Legal Notes</a>
										</td>
									</tr>
								</tbody>
							</table>
							<div style='height:50px;width:100%;font-size:50px;line-height:50px;'>&nbsp;</div>

						<!--[if mso]>
						</td>
						</tr>
						</table>
						<![endif]-->

				        </td>
				    </tr>
				</table>

				<!--[if mso]>
				</td>
				</tr>
				</table>
				<![endif]-->

			</td>
		</tr>
	</tbody>
</table>

</body>
</html>
"

# ======================
# Sending Email Section
# ======================

$strFrom = "Ebuka"
$strTo = "johnonyejegbu@outlook.com"
$strSubject = "Cortado Certification Alert"
$strSMTPServer = "mail.google.com"


$objEmailMessage = New-Object system.net.mail.mailmessage
$objEmailMessage.From = ($strFrom)
$objEmailMessage.To.Add($strTo)
$objEmailMessage.Subject = $strSubject
$objEmailMessage.IsBodyHTML = $true



$objEmailMessage.Body =  $mailbody



$objSMTP = New-Object Net.Mail.SmtpClient($strSMTPServer)
$objSMTP.Send($objEmailMessage)