# Status of integration with [Freshworks CRM][freshworks-crm-url]

[Microsoft Power Automate][microsoft-pa] supports many connectors for different systems but unfortunately
it does not support [Freshworks CRM][freshworks-crm-url] (formerly known as Freshsales).

The only way to integrate it with Microsoft Azure Marketplace Customer Lead would be to write custom intermediate web endpoint.

### Some additional documentation

* [Use an HTTPS endpoint to manage commercial marketplace leads][ms-az-https-leads]
* [Use Azure Table storage to manage commercial marketplace leads][ms-az-table]


[freshworks-crm-url]: https://www.freshworks.com/crm/ "Freshworks CRM | Customer-for-Life Cloud"
[freshworks-crm-api]: https://developers.freshworks.com/crm/api/ "Freshworks CRM API"
[microsoft-pa]: https://flow.microsoft.com/en-us/ "Microsoft Power Automate"
[pa-connectors]: https://flow.microsoft.com/en-us/connectors/ "List of supported connectors"
[ms-az-https-leads]: https://docs.microsoft.com/en-us/azure/marketplace/partner-center-portal/commercial-marketplace-lead-management-instructions-https "Use an HTTPS endpoint to manage commercial marketplace leads"
[ms-az-table]: https://docs.microsoft.com/en-us/azure/marketplace/partner-center-portal/commercial-marketplace-lead-management-instructions-azure-table "Use Azure Table storage to manage commercial marketplace leads"