all :
	if [[ -e opencart-2-assetpayments-payment-module.ocmod.zip ]]; then rm opencart-2-assetpayments-payment-module.ocmod.zip; fi
	zip -r opencart-2-assetpayments-payment-module.ocmod.zip upload install.xml