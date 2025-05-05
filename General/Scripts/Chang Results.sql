INSERT INTO Chinook.IT_Software_Inventory ("Software Name","Number of Licenses","Cost Per User","Expiration Date","Date Purchased","License Type","Vendor Name","Total Cost","Department Using Software","Vendor Point of Contact")
	VALUES ('AWS Cloud Services',166,149.95,'2025-09-07','2024-09-07','Per Device','Amazon',24891.7,'All Departments','amazon@support.com');
INSERT INTO Chinook.IT_Software_Inventory ("Software Name","Number of Licenses","Cost Per User","Expiration Date","Date Purchased","License Type","Vendor Name","Total Cost","Department Using Software","Vendor Point of Contact")
	VALUES ('Adobe Photoshop',123,126.83,'2024-08-28','2023-08-29','Per User','Adobe',15600.09,'Sales','adobe@support.com');
DELETE FROM Chinook.IT_Software_Inventory
	WHERE `Software Name`='AWS Cloud Services';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=32,"Cost Per User"=154.62,"Expiration Date"='2024-05-29',"Date Purchased"='2023-05-30',"License Type"='Open Source',"Total Cost"=4947.84,"Department Using Software"='Sales'
	WHERE `Software Name`='Cisco Webex';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=61,"Cost Per User"=242.9,"Expiration Date"='2025-05-12',"Date Purchased"='2024-05-12',"License Type"='Usage-Based',"Total Cost"=14816.9,"Department Using Software"='HR'
	WHERE `Software Name`='Dropbox Business';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=342,"Cost Per User"=862.78,"Expiration Date"='2024-09-21',"Date Purchased"='2023-09-22',"License Type"='Per User',"Total Cost"=295070.75,"Department Using Software"='Finance'
	WHERE `Software Name`='Google Workspace';
UPDATE Chinook.IT_Software_Inventory
	SET "Total Cost"=137608.92
	WHERE `Software Name`='Jira';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=121,"Cost Per User"=97.35,"Expiration Date"='2025-08-12',"Date Purchased"='2024-08-12',"License Type"='Usage-Based',"Total Cost"=11779.35,"Department Using Software"='Finance'
	WHERE `Software Name`='Microsoft Office 365';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=410,"Cost Per User"=639.15,"Expiration Date"='2024-05-27',"Date Purchased"='2023-05-28',"License Type"='Open Source',"Total Cost"=262051.5,"Department Using Software"='Engineering'
	WHERE `Software Name`='Notion';
UPDATE Chinook.IT_Software_Inventory
	SET "Total Cost"=169670.8
	WHERE `Software Name`='Oracle Database';
INSERT INTO Chinook.IT_Software_Inventory ("Software Name","Number of Licenses","Cost Per User","Expiration Date","Date Purchased","License Type","Vendor Name","Total Cost","Department Using Software","Vendor Point of Contact")
	VALUES ('SAP ERP',151,697.91,'2025-09-27','2024-09-27','Per Device','SAP',105384.41,'Legal','sap@support.com');
DELETE FROM Chinook.IT_Software_Inventory
	WHERE `Software Name`='SAP ERP';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=112,"Cost Per User"=332.07,"Expiration Date"='2025-12-11',"Date Purchased"='2024-12-11',"License Type"='Enterprise',"Total Cost"=37191.84,"Department Using Software"='All Departments'
	WHERE `Software Name`='Tableau';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=216,"Cost Per User"=408.27,"Expiration Date"='2025-02-28',"Date Purchased"='2024-02-29',"License Type"='Usage-Based',"Total Cost"=88186.32,"Department Using Software"='Sales'
	WHERE `Software Name`='Trello';
UPDATE Chinook.IT_Software_Inventory
	SET "Number of Licenses"=395,"Cost Per User"=551.89,"Expiration Date"='2024-09-13',"Date Purchased"='2023-09-14',"License Type"='Per Core',"Total Cost"=217996.55,"Department Using Software"='Sales'
	WHERE `Software Name`='VMware vSphere';
UPDATE Chinook.IT_Software_Inventory
	SET "Total Cost"=173677.95
	WHERE `Software Name`='Zoom';
