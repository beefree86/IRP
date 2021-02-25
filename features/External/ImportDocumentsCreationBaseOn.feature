﻿#language: en
@tree
@IgnoreOnCIMainBuild
@ExportScenarios

Feature: export scenarios (documents)

Background:
	Given I launch TestClient opening script or connect the existing one

Scenario: Create document SalesOrder objects (SC before SI, creation based on)

	
	And I check or create document "SalesOrder" objects:
		| 'Ref'                                                                 | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'      | 'LegalName'                                                         | 'ManagerSegment'                                                          | 'Partner'                                                          | 'PriceIncludeTax' | 'ShipmentConfirmationsBeforeSalesInvoice' | 'Status'                                                                 | 'UseItemsShipmentScheduling' | 'Author'                                                        | 'BusinessUnit' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'False'        | '15'     | '01.02.2021 19:50:45' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=aa78120ed92fbced11eaf118bdb7bb73' | 'e1cib/data/Catalog.Companies?ref=aa78120ed92fbced11eaf113ba6c185c' | 'e1cib/data/Catalog.Currencies?ref=aa78120ed92fbced11eaf113ba6c1855' | '01.01.0001 00:00:00' | 'e1cib/data/Catalog.Companies?ref=aa78120ed92fbced11eaf116b32709a2' | 'e1cib/data/Catalog.PartnerSegments?ref=aa78120ed92fbced11eaf116b327099b' | 'e1cib/data/Catalog.Partners?ref=aa78120ed92fbced11eaf113ba6c1870' | 'True'            | 'True'                                    | 'e1cib/data/Catalog.ObjectStatuses?ref=aa78120ed92fbced11eaf114c59ef021' | 'True'                       | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''             | ''            | '20 874'         |
	

	And I refill object tabular section "ItemList":
		| 'Ref'                                                                 | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'DeliveryDate'        | 'ProcurementMethod'                 | 'Detail'        | 'BusinessUnit'                                                          | 'RevenueType'                                                                    | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'CancelReason'                                                                |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '63008c12-b682-4aff-b29f-e6927036b09a' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=aa78120ed92fbced11eaf115bcc9c5fc' | 'e1cib/data/Catalog.Stores?ref=aa78120ed92fbced11eaf114c59ef00c' | '418,64'    | '26'           | '520'   | 'e1cib/data/Catalog.PriceTypes?ref=aa78120ed92fbced11eaf114c59eeffe' | '1'        | '75,36'     | '494'         | 'e1cib/data/Catalog.Units?ref=aa78120ed92fbced11eaf113ba6c1862' | '27.01.2021 00:00:00' | 'Enum.ProcurementMethods.Stock'     | ''              | 'e1cib/data/Catalog.BusinessUnits?ref=aa78120ed92fbced11eaf114c59ef025' | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=aa78120ed93fbced11eaf114c59ef02b' | 'False'            | '1'                  | ''                                                                            |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '84a27f76-82ee-4a1f-970f-fe490b4e8f70' | 'True'   | 'e1cib/data/Catalog.ItemKeys?ref=aa78120ed92fbced11eaf115bcc9c601' | 'e1cib/data/Catalog.Stores?ref=aa78120ed92fbced11eaf114c59ef00c' | '1 610,17'  | '100'          | '400'   | 'e1cib/data/Catalog.PriceTypes?ref=aa78120ed92fbced11eaf114c59eeffe' | '5'        | '289,83'    | '1 900'       | 'e1cib/data/Catalog.Units?ref=aa78120ed92fbced11eaf113ba6c1862' | '27.01.2021 00:00:00' | 'Enum.ProcurementMethods.Stock'     | 'not available' | 'e1cib/data/Catalog.BusinessUnits?ref=aa78120ed92fbced11eaf114c59ef025' | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=aa78120ed93fbced11eaf114c59ef02b' | 'False'            | '5'                  | 'e1cib/data/Catalog.CancelReturnReasons?ref=b76197e183b782dc11eb60d037e266d0' |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'e34f52ea-1fe2-47b2-9b37-63c093896682' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=aa78120ed92fbced11eaf115bcc9c602' | 'e1cib/data/Catalog.Stores?ref=aa78120ed92fbced11eaf114c59ef00c' | '2 817,8'   | '175'          | '350'   | 'e1cib/data/Catalog.PriceTypes?ref=aa78120ed92fbced11eaf114c59eeffe' | '10'       | '507,2'     | '3 325'       | 'e1cib/data/Catalog.Units?ref=aa78120ed92fbced11eaf113ba6c1862' | '27.01.2021 00:00:00' | 'Enum.ProcurementMethods.NoReserve' | ''              | 'e1cib/data/Catalog.BusinessUnits?ref=aa78120ed92fbced11eaf114c59ef025' | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=aa78120ed93fbced11eaf114c59ef02b' | 'False'            | '10'                 | ''                                                                            |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '5d82f8d1-e3f8-4453-aa45-4f7ac9601659' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=aa78120ed92fbced11eaf115bcc9c605' | 'e1cib/data/Catalog.Stores?ref=aa78120ed92fbced11eaf114c59ef00c' | '13 525,42' | '840'          | '8 400' | 'e1cib/data/Catalog.PriceTypes?ref=aa78120ed92fbced11eaf114c59eeffe' | '2'        | '2 434,58'  | '15 960'      | 'e1cib/data/Catalog.Units?ref=aa78120ed92fbced11eaf115bcc9c60b' | '27.01.2021 00:00:00' | 'Enum.ProcurementMethods.Purchase'  | ''              | 'e1cib/data/Catalog.BusinessUnits?ref=aa78120ed92fbced11eaf114c59ef025' | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=aa78120ed93fbced11eaf114c59ef02b' | 'False'            | '24'                 | ''                                                                            |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '0a13bddb-cb97-4515-a9ef-777b6924eb71' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=aa78120ed92fbced11eaf11c17ff4367' | 'e1cib/data/Catalog.Stores?ref=aa78120ed92fbced11eaf114c59ef00c' | '80,51'     | '5'            | '100'   | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType'              | '1'        | '14,49'     | '95'          | 'e1cib/data/Catalog.Units?ref=aa78120ed92fbced11eaf113ba6c1862' | '27.01.2021 00:00:00' | ''                                  | ''              | 'e1cib/data/Catalog.BusinessUnits?ref=aa78120ed92fbced11eaf114c59ef023' | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=aa78120ed93fbced11eaf114c59ef02b' | 'False'            | '1'                  | ''                                                                            |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '6f6dfb41-d0f8-450e-a482-8ec73611481c' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=aa78120ed92fbced11eaf115bcc9c5fc' | 'e1cib/data/Catalog.Stores?ref=aa78120ed92fbced11eaf114c59ef00c' | '847,46'    | '0'            | '500'   | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType'              | '2'        | '152,54'    | '1 000'       | 'e1cib/data/Catalog.Units?ref=aa78120ed92fbced11eaf113ba6c1862' | '27.01.2021 00:00:00' | 'Enum.ProcurementMethods.Stock'     | ''              | 'e1cib/data/Catalog.BusinessUnits?ref=aa78120ed92fbced11eaf114c59ef025' | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=aa78120ed93fbced11eaf114c59ef02b' | 'False'            | '2'                  | ''                                                                            |
		

	And I refill object tabular section "SpecialOffers":
		| 'Ref'                                                                 | 'Key'                                  | 'Offer'                                                                 | 'Amount' | 'Percent' |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '63008c12-b682-4aff-b29f-e6927036b09a' | 'e1cib/data/Catalog.SpecialOffers?ref=b76197e183b782dc11eb60c82e154a51' | '26'     | '0'       |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '84a27f76-82ee-4a1f-970f-fe490b4e8f70' | 'e1cib/data/Catalog.SpecialOffers?ref=b76197e183b782dc11eb60c82e154a51' | '100'    | '0'       |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'e34f52ea-1fe2-47b2-9b37-63c093896682' | 'e1cib/data/Catalog.SpecialOffers?ref=b76197e183b782dc11eb60c82e154a51' | '175'    | '0'       |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '5d82f8d1-e3f8-4453-aa45-4f7ac9601659' | 'e1cib/data/Catalog.SpecialOffers?ref=b76197e183b782dc11eb60c82e154a51' | '840'    | '0'       |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '0a13bddb-cb97-4515-a9ef-777b6924eb71' | 'e1cib/data/Catalog.SpecialOffers?ref=b76197e183b782dc11eb60c82e154a51' | '5'      | '0'       |
		

	And I refill object tabular section "TaxList":
		| 'Ref'                                                                 | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount'   | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '63008c12-b682-4aff-b29f-e6927036b09a' | 'e1cib/data/Catalog.Taxes?ref=aa78120ed92fbced11eaf116b32709c4' | ''          | 'e1cib/data/Catalog.TaxRates?ref=aa78120ed92fbced11eaf114c59ef010' | '75,36'    | 'True'                 | '75,36'        |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '84a27f76-82ee-4a1f-970f-fe490b4e8f70' | 'e1cib/data/Catalog.Taxes?ref=aa78120ed92fbced11eaf116b32709c4' | ''          | 'e1cib/data/Catalog.TaxRates?ref=aa78120ed92fbced11eaf114c59ef010' | '289,83'   | 'True'                 | '289,83'       |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'e34f52ea-1fe2-47b2-9b37-63c093896682' | 'e1cib/data/Catalog.Taxes?ref=aa78120ed92fbced11eaf116b32709c4' | ''          | 'e1cib/data/Catalog.TaxRates?ref=aa78120ed92fbced11eaf114c59ef010' | '507,2'    | 'True'                 | '507,2'        |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '5d82f8d1-e3f8-4453-aa45-4f7ac9601659' | 'e1cib/data/Catalog.Taxes?ref=aa78120ed92fbced11eaf116b32709c4' | ''          | 'e1cib/data/Catalog.TaxRates?ref=aa78120ed92fbced11eaf114c59ef010' | '2 434,58' | 'True'                 | '2 434,58'     |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '0a13bddb-cb97-4515-a9ef-777b6924eb71' | 'e1cib/data/Catalog.Taxes?ref=aa78120ed92fbced11eaf116b32709c4' | ''          | 'e1cib/data/Catalog.TaxRates?ref=aa78120ed92fbced11eaf114c59ef010' | '14,49'    | 'True'                 | '14,49'        |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | '6f6dfb41-d0f8-450e-a482-8ec73611480c' | 'e1cib/data/Catalog.Taxes?ref=aa78120ed92fbced11eaf116b32709c4' | ''          | 'e1cib/data/Catalog.TaxRates?ref=aa78120ed92fbced11eaf114c59ef010' | '152,54'   | 'True'                 | '152,54'       |
	

	And I refill object tabular section "Currencies":
		| 'Ref'                                                                 | 'Key'                                  | 'CurrencyFrom'                                                       | 'Rate'   | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount'    |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'b2056b06-b9a5-4448-aead-f65ecd3408b0' | 'e1cib/data/Catalog.Currencies?ref=aa78120ed92fbced11eaf113ba6c1855' | '1'      | '1'           | 'False'           | '1'            | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=aa78120ed92fbced11eaf113ba6c185f' | '22 774'    |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'b2056b06-b9a5-4448-aead-f65ecd3408b0' | 'e1cib/data/Catalog.Currencies?ref=aa78120ed92fbced11eaf113ba6c1855' | '1'      | '1'           | 'False'           | '1'            | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=aa78120ed92fbced11eaf113ba6c185d' | '22 774'    |
		| 'e1cib/data/Document.SalesOrder?ref=b76197e183b782dc11eb61805768329b' | 'b2056b06-b9a5-4448-aead-f65ecd3408b0' | 'e1cib/data/Catalog.Currencies?ref=aa78120ed92fbced11eaf113ba6c1855' | '0,1712' | '5,8411'      | 'False'           | '1'            | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=aa78120ed92fbced11eaf113ba6c185e' | '3 898,91'  |
		