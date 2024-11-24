/*
Group : 7
Project Title : OTT Subscription Model
Names :  Shubhada Bagal (002962718), 
        Monica Choudhari (002957299),
        Kaustubh Khedekar (002922222), 
        Sanket Bansal (002969158), 
        Yichi Zhang (002191084)
*/

--------------------------------------------------------------------------------------------------------------------
/**************************************************   DML   *******************************************************/
--------------------------------------------------------------------------------------------------------------------

/**********************************  Inserting Values into Login  ********************************/
Use demofile;
go

INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES ('roy.bruan@gmail.com', '111', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust143')), '2022-07-10 04:23:00', '1', '0', '2022-08-31 02:45:00');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('holstenjoseph90@gmail.com',	'121', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust144')),	'2011-04-11 03:12:30', '0', '1', '2012-04-11 03:15:45');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('bansal.s@yahoo.com', '131', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust145')), '2020-04-10 08:14:32', '1', '0', '2020-04-11 08:15:45');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('tthomas@amazon.com', '141', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust146')), '2018-08-09 01:15:40', '1', '0', '2020-08-09 01:15:40');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('calvin@fb.com', '151', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust147')), '2001-12-08 04:17:00', '0', '1', '2005-12-08 04:17:58');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('khedekar.k@gmail.com', '161', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust148')), '2013-10-07 02:19:57', '0', '1',	'2013-12-07 01:59:00');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('jameson01@gmail.com', '171', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust149')), '2015-07-06 04:59:45', '1', '0', '2015-09-06 04:57:46');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('foster.p@google.com', '181', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust150')), '2002-04-05 03:22:01', '0', '1', '2003-04-06 05:23:05');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('seansanders@harvard.edu', '191', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust151')), '2017-03-04 04:50:15', '0', '1', '2018-04-11 05:11:11');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('bagalshubhada@gmail.com', '201', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust152')), '2010-01-03 05:15:15', '1', '0', '2012-01-03 01:15:14');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('zhang.yichi@gmail.com', '211', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust153')), '2000-12-02 03:27:11', '0', '1', '2001-01-01 01:01:01');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('choudhari94@bosch.com', '221', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust154')), '2022-11-01 04:00:00', '1',	'0', '2022-12-01 04:00:05');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('wang.simon@northeastern.edu', '231', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust155')), '2021-03-31 06:31:00', '1', '0', '2022-02-11 05:01:00');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('swaroop.s@gmail.com', '241', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust156')), '2017-09-30 00:50:15', '0', '1', '2017-10-31');
INSERT INTO Login(EmailID, AccountID, EncryptedPassword, LoginTimestamp, UserLogin, UserLogout, LogoutTimestamp)
VALUES('desai.m@northeastern.edu', '251', EncryptByKey(Key_GUID('Password_Encryption_Key'), CONVERT(VARBINARY,'cust157')), '2014-07-30 00:01:15', '0',	'1', '2016-07-30 01:00:30');


/**********************************  Inserting Values in UserAccount  ********************************/

SET Identity_Insert UserAccount ON
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES ('111', 'roy.bruan@gmail.com', '11', 'Roy', 'Bruan', 'M', '1999-02-15', '+1 207-460-8621', '1999-02-15');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('121', 'holstenjoseph90@gmail.com', '12', 'Joseph', 'Holsten', 'M', '1983-05-18', '+1 305-982-5488',	'2021-10-18');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('131', 'bansal.s@yahoo.com', '13', 'Sanket',	'Bansal', 'M', '1996-01-20', '+1 253-794-6028', '2015-05-07');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('141', 'tthomas@amazon.com',	'14', 'Trina', 'Thomas', 'F', '1997-10-19',	'+1 231-953-7810', '2021-12-18');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('151', 'calvin@fb.com', '15', 'Calvin', 'Cuellar', 'M', '1998-09-27', '+1 304-431-9404', '2008-11-27');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('161', 'khedekar.k@gmail.com', '16', 'Kaustubh',	'Khedekar', 'M', '1997-08-28', '+1 582-333-2991', '2010-09-25');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('171', 'jameson01@gmail.com', '17',	'Wilma', 'Jameson', 'F', '1991-01-01', '+1 505-644-5758',	'2022-04-15');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('181', 'foster.p@google.com', '18', 'Patricia',	'Foster', 'F', '1964-11-16', '+1 248-522-5565',	'2017-05-18');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('191', 'seansanders@harvard.edu', '19', 'Sean', 'Sanders', 'M', '1996-02-28', '+1 505-644-6078', '2001-06-20');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('201', 'bagalshubhada@gmail.com', '20', 'Shubhada', 'Bagal',	'F', '1994-06-28', '+1 213-274-9101', '2022-04-15');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('211', 'zhang.yichi@gmail.com', '21', 'Yichi', 'Zhang', 'F',	'1997-12-31', '+1 582-333-9700', '2008-11-27');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('221', 'choudhari94@bosch.com', '22', 'Monica', 'Choudhari', 'F', '1993-12-05', '+1 582-682-3314', '2022-07-21');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('231', 'wang.simon@northeastern.edu', '23', 'Simon',	'Wang', 'M', '1980-11-06', '+1 505-644-0911', '2021-01-18');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('241', 'swaroop.s@gmail.com', '24', 'Sneha',	'Swaroop', 'F', '1999-03-06', '+1 276-341-4272', '2021-12-18');
INSERT INTO UserAccount(AccountID, EmailID, BillingID, FirstName, LastName, Gender, DateOfBirth, PhoneNumber, AccountOpeningDate)
VALUES('251', 'desai.m@northeastern.edu', '25',	'Mitesh', 'Desai', 'M', '1983-05-22', '+1 210-700-9861', '2019-05-29');
SET Identity_Insert UserAccount OFF


/**********************************  Inserting Values into Devices  ********************************/

INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111111, 111, 'Windows');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111112, 121, 'Mac');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111113, 131, 'Windows');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111114, 141, 'Chrome OS');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111115, 151, 'iPhone');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111116, 161, 'Samsung');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111117, 171, 'iPhone 11');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111118, 181, 'iPhone 11');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111119, 191, 'iPhone SE');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111120, 201, 'Windows');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111121, 211, 'Windows');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111122, 221, 'Windows');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111123, 231, 'Windows');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111124, 241, 'Mac');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES(111125, 251, 'iPad Air 2');


/**********************************  Inserting Values into RequestReportContent  ********************************/

INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('1', '111', 'Request', 'Dick Johnson Is Dead', 'As her father nears the end of his life, filmmaker Kirsten Johnson stages his death in inventive and comical ways to help them both face the inevitable', '2');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('2', '121', 'Cancel', 'The Starling', 'A woman adjusting to life after a loss contends with a feisty bird that is taken over her garden and a husband who is struggling to find a way forward','1');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('3', '131', 'Cancel', 'Stowaway', 'A three-person crew on a mission to Mars faces an impossible choice when an unplanned passenger jeopardizes the lives of everyone on board', '4');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('4', '141', 'Request', 'Wild Dog', 'A brash but brilliant Indian intelligence agent leads a covert operation to nab the mastermind behind a series of attacks threatening national security', '3');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('5',	'151', 'Cancel', 'On the Verge', 'Four women a chef, a single mom, an heiress and a job seeker dig into love and work, with a generous side of midlife crises, in pre-pandemic LA', '6');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('6', '161', 'Cancel', 'Zero', 'A shy teen with the power to turn invisible must get it under control to help defend his neighborhood, putting aside the pursuit of his artistic dream', '12');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('7', '171', 'Request', 'Izzy Koala World', 'Young koala caretaker Izzy Bee and her family rescue cuddly creatures in need and help them head back into the wild on Australias Magnetic Island', '8');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('8',	'181', 'Cancel', 'Tobot Galaxy Detectives',	'An intergalactic device transforms toy cars into robots: the Tobots! Working with friends to solve mysteries, they protect the world from evil', '2')
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('9',	'191', 'Request', 'Luis Miguel - The Series', 'This series dramatizes the life story of Mexican superstar singer Luis Miguel, who has captivated audiences in Latin America and beyond for decades', '10');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('10', '201',	'Cancel', 'PJ Masks', 'Three 6-year-old kids who live normal lives during the day become superheroes at night, fighting crime as a team known as PJ Masks', '4');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('11', '211', 'Request', 'Rudra: Secret of the Black Moon', 'Kid magician Rudra sets out to save Earth from the demon of Black Moon planet, but can he get the job done if his spells dont work on enemy territory', '5');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('12', '221', 'Request', 'Rudra: The Rise of King Pharaoh', 'When a malicious, resurrected mummy begins to steal the energy of young people in Mumbai, kid magician Rudra must use his special powers to stop him', '5');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('13', '231', 'Cancel', 'Free to Play', 'This documentary follows three professional video game players as they compete in an international tournament with a million-dollar prize', '6');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('14', '241',	'Request', 'Miss Sloane', 'A tenacious Capitol Hill lobbyist with a well-earned reputation for winning takes on the most challenging battle of her career', '7');
INSERT INTO RequestReportContent(ReqID, AccountID, RequestType, ContentName, ContentDescription, NoOfReqReceived)
VALUES('15', '251', 'Cancel', 'American Me', 'Three friends born in poverty create their own capitalist dream as powerful gang members. Time in prison makes one of them consider a fresh beginning', '1');


/**********************************  Inserting Values into CustomerFeedback  ********************************/

INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1001', '111', 'Awesome!', '5.0');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1002', '121', 'Please do not watch this movie',	'1.8');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1003', '131', 'Not Great', '2.8');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1004', '141', 'Funny!.One time watch', '4.9');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1005', '151', 'Too Good. A must watch movie', '5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1006', '161', 'Absolutely fantastic!', '5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1007', '171', 'Great Story and Love the Characters!!!!!!', '5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1008', '181', 'It�s better when the bad guys are just bad, not bad and creepy. Just not good', '2');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1009', '191', 'Terribly written, poor acting', '1.8');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1010', '201', 'Love all the characters and humorous dialog', '4.5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1011', '211', 'Great film making techniques! Great story!', '5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1012', '221', 'It was pathetic', '1.9');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1013', '231', 'Very good photography and sound, better than the first part', '4.5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1014', '241', 'Beautiful & inspiring!', '5');
INSERT INTO CustomerFeedback(FeedbackID, AccountID, Feedback, FeedbackRating)
VALUES('1015', '251', 'Great humor and lots of action',	'5');


/**********************************  Inserting Values into BillingInfo  ********************************/

INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('11', '2001', '101', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'3530129304228530')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'101')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'02/27')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('12', '2002', '102', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'7925729917896910')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'102')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'01/28')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('13', '2003', '103', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'8410924029737750')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'113')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'03/27')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('14', '2004', '104', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'4481123606032370')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'103')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'03/27')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('15', '2005', '105', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'9307152430663370')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'104')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'04/29')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('16', '2006', '106', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'4329397765916170')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'105')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'12/29')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('17', '2007', '107', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'6081241962287600')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'615')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'11/28')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('18', '2008', '108', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'1604120619878120')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'616')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'10/27')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('19', '2009', '109', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'7928086148603350')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'617')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'08/26')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('20', '2010', '110', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'7950187794165940')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'618')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'06/26')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('21', '2011', '111', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'1892524235055200')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'619')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'05/27')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('22', '2012', '112', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'6626343400993430')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'620')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'04/28')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('23', '2013', '113', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'9834267973562920')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'621')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'01/26')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('24', '2014', '114', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'1162454601059540')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'622')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'05/25')));
INSERT INTO BillingInfo(BillingID, PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted)
VALUES('25', '2015', '115', EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'6267822343143430')), 
EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'623')), EncryptByKey(Key_GUID('Billing_Encryption_Key'), CONVERT(VARBINARY,'02/29')));


/**********************************  Inserting Values into AddressInfo  ********************************/

INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('101', '3001', 'Boston', 'Massachusetts', '02115', 'United States');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('102', '3002', 'New Delhi', 'Delhi', '110001', 'India');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('103', '3003', 'Paris', '75000', 'NULL', 'France');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('104', '3004', 'Guiyang', 'Guizhou',	'550000', 'China');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('105', '3005', 'Mysore', 'Karnataka', '570001', 'India');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('106', '3006', 'Mumbai', 'Maharashtra', '400001', 'India');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('107', '3007', 'Little Rock', 'Arkansas', '72002', 'United States');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('108', '3008', 'Otaru', 'Hokkaido', '047-0000', 'Japan');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('109', '3009', 'Bordeaux', 'NULL', '30072', 'France');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('110', '3010', 'Udaipur', 'Rajasthan', '313001', 'India');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('111', '3011', 'Sendai', 'Tohoku', '980-0000', 'Japan');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('112', '3012', 'Hangzhou', 'Zhejiang', '242332', 'China');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('113', '3013', 'Beverly Hills', 'California', '90209', 'United States');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('114', '3014', 'Dover', 'Delaware', '19906', 'United States');
INSERT INTO AddressInfo(AddressID, StreetID, City, State, ZipCode, Country)
VALUES('115', '3015', 'Toulouse', 'NULL', '31004', 'France');


/**********************************  Inserting Values into StreetAddress  ********************************/

INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3001', '489', 'Boylston St', '1');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3002', '589', 'Park St', '6');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3003', '11', 'Russ St', '12');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3004', '506', 'George St', '10');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3005', '111', 'Andrew St', '5');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3006', '2', 'SB St', '205');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3007', '1', 'Apollo St', '503');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3008', '5', 'Beacon St', '66');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3009', '45', 'Bean St', '78');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3010', '76', 'Brookline St', '24');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3011', '33', 'Charles St', '11');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3012', '453', 'Back Bay', '13');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3013', '22', 'Huntington Ave', '45');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3014', '999', 'Commonwealth Ave', '66');
INSERT INTO StreetAddress(StreetID, StreetNumber, StreetName, ApartmentNumber)
VALUES('3015', '1100', 'Tremonth St', '77');


/**********************************  Inserting Values into SubscriptionPlan  ********************************/

INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2001', 'Basic', 'Not Active', '9.99', '2022-04-07', '2022-05-07', 'Content are not of my type');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2002', 'Premium', 'Not Active', '24.99', '2022-03-19', '2022-04-18', 'Content is Offensive');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2003', 'Premium', 'Active', '24.99', '2022-07-06', '08-05-2022', 'Lack of Content');	
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2004', 'Basic', 'Not Active', '9.99', '2022-07-13', '2022-08-12', 'Plan is Expensive');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2005', 'Standard', 'Not Active', '14.99', '2022-05-25', '2022-06-24', 'Not enough Content');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2006', 'Standard',	'Not Active', '14.99', '2022-02-20', '2022-03-20', 'Platform is not User Friendly');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2007', 'Premium', 'Not Active', '24.99', '2022-04-23', '2022-05-23', 'Content is Unorganized');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2008', 'Premium', 'Not Active', '24.99', '2022-05-02',	'2022-06-01', 'Plan is Expensive');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2009', 'Premium', 'Not Active', '24.99', '2022-07-01', '2022-03-03', 'To many commercials');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2010', 'Standard', 'Not Active', '14.99', '2022-02-01', '2022-04-15', 'Content is Offensive');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2011', 'Standard', 'Active', '14.99', '2022-07-08', '2022-08-13', '');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2012', 'Standard',	'Not Active', '14.99', '2022-01-05', '2022-02-04', 'Lack of New Content');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2013', 'Standard', 'Not Active', '14.99', '2022-05-17', '2022-06-16', 'Content is Offensive');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2014', 'Premium', 'Not Active', '24.99', '2022-03-22',	'2022-04-28', 'Not enough Content');
INSERT INTO SubscriptionPlan(PlanID, PlanType, PlanStatus, PlanCost, PlanStartDate, PlanEndDate, ReasonForCancellation)
VALUES('2015', 'Standard', 'Not Active', '14.99', '2022-01-13', '2022-02-12', 'Plan is Expensive');


/**********************************  Inserting values into Advertisement  ********************************/

INSERT INTO Advertisement VALUES('123123', '2001', 'Amazon', 'Online',	'10000', '2022-07-11', GETDATE(), '10000');
INSERT INTO Advertisement VALUES('124134', '2002', 'Youtube', 'Online', '1000', '2019-08-12', GETDATE(), '12000');
INSERT INTO Advertisement VALUES('125145', '2003', 'Amazon', 'Online', '50000', '2020-03-31', GETDATE(), '1100');
INSERT INTO Advertisement VALUES('126156', '2004', 'JC Penney', 'Online', '35000', '2015-08-12', GETDATE(), '300');
INSERT INTO Advertisement VALUES('127167', '2005', 'Netflix', 'Online', '100000', '2017-01-16', GETDATE(), '1300');
INSERT INTO Advertisement VALUES('128178', '2006', 'JC Penney', 'In state', '25000', '2020-06-06', GETDATE(), '33000');
INSERT INTO Advertisement VALUES('129189', '2007', 'JC Penney', 'In state', '3700', '2020-01-31', GETDATE(), '30010');
INSERT INTO Advertisement VALUES('130200', '2008', 'CBS', 'National wide', '45000', '2019-02-23', GETDATE(), '2000');
INSERT INTO Advertisement VALUES('131211', '2009', 'CBS', 'National wide', '15000', '2019-05-15', GETDATE(), '21000');
INSERT INTO Advertisement VALUES('132222', '2010', 'CBS', 'National wide', '40000', '2021-01-31', GETDATE(), '15000');
INSERT INTO Advertisement VALUES('133233', '2011', 'CBS', 'National wide', '48899', '2018-11-13', GETDATE(), '25000');
INSERT INTO Advertisement VALUES('134244', '2012', 'Facebook', 'Online', '98000', '2020-12-31', GETDATE(), '9500');
INSERT INTO Advertisement VALUES('135255', '2013',	'Facebook', 'Online', '22000',	'2017-11-30', GETDATE(), '36000');
INSERT INTO Advertisement VALUES('136266', '2014',	'Facebook',	'Online', '38000', '2020-07-22', GETDATE(), '9600');
INSERT INTO Advertisement VALUES('137277', '2015', 'Facebook', 'Online', '65000', '2002-10-08', GETDATE(), '15000');


/**********************************  Inserting values into TVShows  ********************************/

INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s100', '2001', '4001', 'Stranger Things','TV Horror, TV Mysteries, TV Sci-Fi, Fantasy', '15+', '930300', 'Millie Bobby Brown',
'Duffer brothers','English','Emmys, Golden Globe, Grammy',8.7,'2016-07-15');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s101', '2002', '4002', 'The Crown','British TV Shows, TV Dramas', '11+', '21000','Claire Foy','Stephen Daldry','English','Emmys, Golden Globe, Oscars',8.7,'2016-11-04');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s102', '2003', '4003', 'Demon Slayer: Kimetsu no Yaiba','Anime Series, International TV Shows', '16+', '177300','Natsuki Hanae','Haruo Sotozaki','Japanese','Crunchyroll Anime Awards',8.2,'2019-04-06');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s103', '2004', '4004', 'The Queens Gambit','TV Dramas', '15+', 62000,'Anya Taylor-Joy','Scott Frank','English','Emmys, Golden Globe',8.6,'2020-10-23');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s104', '2005', '4005', 'Emily in Paris','Romantic TV Shows, TV Dramas', '17+', 58000,'Lily Collins','Andrew Fleming','English','Emmys, Golden Globe',6.9,'2020-10-23');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s105', '2006', '4006', 'A perfect crime','Romantic TV Shows, TV Dramas', '18+', 143200,'Catherine Russel','Jay Cail Stone','German','Berlin Series Award',7.3,'2020-09-25');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s106', '2007', '4007', 'Betaal','TV Action & Adventure, TV Horror', '18+', 85000,'Viineet Kumar','Patrick Graham','Hindi','-',5.4,'2020-03-20'); 
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s107', '2008', '4008', 'Money Heist - La casa de papel','Crime TV Shows, Spanish-Language TV Shows', '18+', 19900,'Alvaro Morte','�lex Pina','Spanish','Emmys, Platino Awards',8.2,'2017-05-02');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s108', '2009', '4009', 'Formula 1: Drive to Survive','Docuseries', '12+', 87400,'-','Liberty Media','English','Sports Emmy Award, Eddie Awards',8.6,'2017-05-02');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s109', '2010', '4010', 'Pablo Escobar, El Patron del mal','Crime TV Shows, Spanish-Language TV Shows', '18+', 520000, 'Andraos Parra','Carlos Moreno','Spanish','Colombian Television Award',7.8,'2012-05-28');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s110', '2011', '4011', 'Bridgerton','Romantic TV Shows, TV Dramas', '17+', 6254900,'Adjoa Andoh','Tom Verica','English','Emmys, BAFTA Awards',7.3,'2020-12-25');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s111', '2012', '4012', 'Mismatched','Romantic TV Shows, TV Comedies', '13+', 25900,'Prajakta Koli','Akarsh Khurana','Hindi','-',5.4,'2020-11-20');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s112', '2013', '4013', 'The Haunting of Bly Manor','TV Dramas, TV Horror, TV Mysteries', '18+', 60000,'Victoria Pedretti','Mike Flanagan','English','Emmys, MTV Awards',7.3,'2020-10-09');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate)
VALUES('s113', '2014', '4014', 'Food Wars!: Shokugeki no Soma','Anime Series, Teen TV Shows', '15+', 86000,'Yoshitsugu Matsuoka','Yoshitomo Yonetani','Japanese','Crunchyroll Anime Awards',8.9,'2015-04-04');
INSERT INTO TVSeries(SeriesID, PlanID, OrderID, Title, Genre, AgeGroup, sViews, Actor, Director, sLanguage, Awards, Rating, ReleaseDate) 
VALUES('s114', '2015', '4015', 'Criminal: UK','British TV Shows, Crime TV Shows', '12+', 66000,'Katherine Kelly','Jim Field Smith','English','Emmys, BAFTA Awards',7.6,'2019-09-20');
--SET Identity_Insert TVShows OFF


/**********************************  Inserting values into PurchaseOrder  ********************************/

INSERT INTO PurchaseOrder VALUES('4001', '44622.00', '2019-07-05', '2029-07-06', '2019-07-05');
INSERT INTO PurchaseOrder VALUES('4002', '56622.00', '2020-02-02', '2030-02-05', '2020-02-02');
INSERT INTO PurchaseOrder VALUES('4003', '76345.00', '2012-07-02', '2022-07-06', '2012-07-02');
INSERT INTO PurchaseOrder VALUES('4004', '87643.00', '2015-11-04', '2025-11-06', '2015-11-04');
INSERT INTO PurchaseOrder VALUES('4005', '47777.00', '2022-07-05', '2022-07-06', '2022-07-05');
INSERT INTO PurchaseOrder VALUES('4006', '45454.00', '2013-07-06', '2023-07-06', '2013-07-06');
INSERT INTO PurchaseOrder VALUES('4007', '46666.00', '2022-07-10', '2022-07-06', '2022-07-10');
INSERT INTO PurchaseOrder VALUES('4008', '49864.00', '2021-09-08', '2032-09-06', '2021-09-08');
INSERT INTO PurchaseOrder VALUES('4009', '98765.00', '2020-07-03', '2030-07-06', '2020-07-03');
INSERT INTO PurchaseOrder VALUES('4010', '87654.00', '2020-07-01', '2030-07-06', '2020-07-01');
INSERT INTO PurchaseOrder VALUES('4011', '76543.00', '2017-07-02', '2027-07-06', '2017-07-02');
INSERT INTO PurchaseOrder VALUES('4012', '45678.00', '2018-07-06', '2023-07-06', '2018-07-06');
INSERT INTO PurchaseOrder VALUES('4013', '56789.00', '2018-07-07', '2023-07-06', '2018-07-07');
INSERT INTO PurchaseOrder VALUES('4014', '123456.00', '2019-07-09', '2024-07-06', '2019-07-09');
INSERT INTO PurchaseOrder VALUES('4015', '400000', '2020-07-05', '2025-07-06', '2020-07-05');
INSERT INTO PurchaseOrder VALUES('4016', '44882.00', '2016-07-12', '2026-07-06', '2016-07-12');
INSERT INTO PurchaseOrder VALUES('4017', '67662.00', '2016-07-10', '2026-07-06', '2016-07-10');
INSERT INTO PurchaseOrder VALUES('4018', '100002.00', '2015-07-06', '2025-07-06', '2015-07-06');
INSERT INTO PurchaseOrder VALUES('4019', '200009.00', '2017-07-03', '2027-07-06', '2017-07-03');
INSERT INTO PurchaseOrder VALUES('4020', '34500', '2022-07-05', '2032-07-06', '2022-07-05');


/**********************************  Inserting values into Movies  ********************************/

INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6001,2001,4001,'Dick Johnson Is Dead','Mystery','Adult',22111,'Melissa McCarthy','Kirsten Johnson','English','',7.5,'2022-09-25');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6002,2002,4002,'The Starling','Thriller','Children',16823,'Anna Kendrick','Theodore Melfi','Hindi','Oscar',8.0,'2021-09-24');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6003,2003,4003,'Stowaway','Horror','Children',682532,'Nagarjuna Akkineni','Joe Penna','English','Film Fare',9.5,'2022-04-22');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6004,2004,4004,'Wild Dog','Historical','Children',32020,'Olu Jacobs','Ahishor Solomon','Korean','National Award',10,'2021-04-22');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6005,2005,4005,'Oloibiri','Romance','Children',19711,'Richard Mofe-Damijo','Curtis Graham','English','Film Fare',7.9,'2021-04-21');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6006,2006,4006,'Tell Me When','Mystery','Adult',27752,'Chris O''Dowd','Gerardo Gatica','Hindi','',4.5,'2021-04-21');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6007,2007,4007,'Keymon and Nani in Space Adventure','Mystery','Adult',4730,'Toni Collette','Maclain Way','English','Film Fare',7.0,'2021-04-20');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6008,2008,4008,'Motu Patlu Dino Invasion','Thriller','Adult',57152,'Dia Mirza','Suhas Kadav','Spanish','National Award',9.9,'2022-04-20');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6009,2009,4009,'Motu Patlu in Octupus World','Horror','Adult',56253,'Sourav Chakraborty','Suhas Kadav','English','Oscar',8.9,'2021-04-20');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6010,2010,4010,'Motu Patlu VS Robo Kids','Historical','Adult',30923,'Sourav Chakraborty','Suhas Kadav','Hindi','Oscar',8.5,'2021-04-20');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6011,2011,4011,'Rudra: Secret of the Black Moon','Romance','Adult',40286,'Sourav Chakraborty','Akshay Sanjeev Chavan','English','Film Fare',7.9,'2021-04-20');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6012,2012,4012,'Rudra: The Rise of King Pharaoh','Mystery','Adult',17500,'Shailendra Pandey','Sumit Das','Korean','National Award',9.5,'2022-04-20');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6013,2013,4013,'Free to Play','Mystery','Adult',47752,'Shailendra Pandey','Sumit Das','English','',4.4,'2021-04-19');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6014,2014,4014,'Miss Sloane','Thriller','Adult',45322,'Mukesh Pandey','John Madden','Hindi','Oscar',9.8,'2022-04-19');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6015,2015,4015,'American Me','Horror','Adult',48953,'Jessica Chastain','Edward James Olmos','English','Film Fare',7.7,'2021-04-17');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6016,2016,4016,'Delhi Belly','Historical','Adult',41952,'Edward James Olmos','Abhinay Deo','Spanish','National Award',7.8,'2021-04-17');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6017,2017,4017,'Dhobi Ghat (Mumbai Diaries)','Romance','Adult',69999,'Imran Khan','Kiran Rao','English','',9.6,'2021-04-17');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6018,2018,4018,'Jaane Tu... Ya Jaane Na','Mystery','Children',35000,'Aamir Khan','Abbas Tyrewala','Hindi','Oscar',9.8,'2021-04-17');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6019,2019,4019,'Untold: Breaking Point','Mystery','Children',17153,'Imran Khan','Chapman Way','English','',5.0,'2021-09-07');
INSERT INTO Movies(MovieID, PlanID, OrderID, Title, Genre, AgeGroup, mViews, Actor, Director, mLanguage, Awards, Rating, ReleaseDate) 
VALUES (6020,2020,4020,'Lagaan','Thriller','Children',18400,'Aamir Khan','Ashutosh Gowariker','Korean','National Award',8.5,'2021-04-17');


/**********************************  Inserting values into Seasons  ********************************/

INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7001','s100','Stranger Things Season 1','2016-07-16');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7002','s100','Stranger Things Season 2','2017-10-07');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7003','s100','Stranger Things Season 13','2019-07-04');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7004','s101','The Crown Season 1','2016-11-04');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7005','s101','The Crown Season 2','2017-11-08');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7006','s102','Demon Slayer: Kimetsu no Yaiba Season1','2019-04-03');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7007','s102','Demon Slayer: Kimetsu no Yaiba Season2','2022-12-05');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7008','s103','The Queens Gambit','2020-10-23');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7009','s104','Emily in Paris Season 1','2020-10-02');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7010','s104','Emily in Paris Season 2','2021-12-22');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7011','s105','A perfect crime','2020-09-25');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7012','s106','Betaal','2020-05-24');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7013','s107','Money Heist - La casa de papel Season 1','2017-05-02');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7014','s107','Money Heist - La casa de papel Season 2','2017-10-16');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7015','s107','Money Heist - La casa de papel Season 3','2019-07-19');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7016','s108','Formula 1: Drive to Survive Season 1','2019-03-08');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7017','s108','Formula 1: Drive to Survive Season 2','2020-02-28');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7018','s108','Formula 1: Drive to Survive Season 3','2021-05-19');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7019','s109','Narcos Season 1','2012-08-28');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7020','s109','Narcos Season 2','2016-09-02');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7021','s109','Narcos Season 3','2021-11-05');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7022','s110','Bridgerton Season 1','2020-12-25');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7023','s110','Bridgerton Season 2','2022-03-25');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7024','s111','Mismatched','2020-11-20');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7025','s112','Hunting an Internet Killer','2019-12-18');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7026','s113','Food Wars!: Shokugeki no Soma','2015-04-04');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7027','s113','Food wars! the second plate','2016-07-02');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7028','s113','Food Wars! The Third Plate','2017-10-04');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7029','s114','Criminal: UK Season 1','2019-10-20');
INSERT INTO Seasons (SeasonID,SeriesID,SeasonName,ReleaseDate) VALUES ('7030','s114','Criminal: UK Season 2','2020-09-16');


/**********************************  Inserting values into Episodes  ********************************/

INSERT INTO Episodes(EpisodeID, SeasonID, EpisodeName, ReleaseDate)
VALUES(8001,7001,'The Vanishing of Will Byers', '2016-07-15'),
	  (8002,7001,'The weirdo on maple street','2016-07-15'),
	  (8003,7001,'Holly, Jolly','2016-07-15'),
	  (8004,7001,'The Body','2016-07-15'),
	  (8005,7001,'The Flea and the Acrobat','2016-07-15'),
	  (8006,7001,'The Monster','2016-07-15'),
	  (8007,7002,'Madmax','2017-10-27'),
	  (8008,7002,'Trick or Treat Freak','2017-10-27'),
	  (8009,7002,'The Pollywog','2017-10-27'),
	  (8010,7002,'Will the wise','2017-10-27'),
	  (8011,7002,'Dig Dug','2017-10-27'),
	  (8012,7002,'The Gate','2017-10-27'),
	  (8013,7003,'Suzie, Do you copy?','2019-07-04'),
	  (8014,7003,'The mall rats','2019-07-04'),
	  (8015,7003,'The Sauna Test','2019-07-04'),
	  (8016,7003,'The flayed','2019-07-04'),
	  (8017,7003,'The bite','2019-07-04'),
	  (8018,7004,'Wolferton Splash','2016-11-04'),
	  (8019,7004,'Hyde Park Corner','2016-11-04'),
	  (8020,7004,'Windsor','2016-11-04'),
	  (8021,7004,'Act of God','2016-11-04'),
	  (8022,7004,'Smoke and Mirrors','2016-11-04'),
	  (8023,7005,'Misadventure','2017-12-08'),
	  (8024,7005,'A company of men','2017-12-08'),
	  (8025,7005,'Lisbon','2017-12-08'),
	  (8026,7005,'Beryl','2017-12-08'),
	  (8027,7005,'Marionettes','2017-12-08'),
	  (8028,7006,'Cruelty','2019-04-07'),
	  (8029,7006,'Trainer Sakonji Urokodaki','2019-04-13'),
	  (8030,7006,'Sabito and Makomo','2019-04-20'),
	  (8031,7006,'Final Selection','2019-04-20'),
	  (8032,7006,'My Own Steel','2019-04-27'),
	  (8033,7006,'Sabito and Makomo','2019-05-04'),
	  (8034,7007,'Flame Hashira','2021-10-10'),
	  (8035,7007,'Deep Sleep','2021-10-17'),
	  (8036,7007,'Should have been','2021-10-24'),
	  (8037,7007,'Insult','2021-11-07'),
	  (8038,7007,'Move forward','2021-11-14'),
	  (8039,7008,'Openings','2020-10-23'),
	  (8040,7008,'Exchanges','2020-10-23'),
	  (8041,7008,'Doubled Pawns','2020-10-23'),
	  (8042,7008,'Middle Game','2020-10-23'),
	  (8043,7008,'Fork','2020-10-23'),
	  (8045,7008,'Adjournment','2020-10-23'),
	  (8046,7008,'End Game','2020-10-23'),
	  (8047,7008,'Doubled Pawns','2020-10-23'),
	  (8048,7009,'Emily in Paris','2020-10-02'),
	  (8049,7009,'Masculin, Feminin','2020-10-02'),
	  (8050,7009,'Sexy or Sexist','2020-10-02'),
	  (8051,7009,'A kiss is just a kiss','2020-10-02'),
	  (8052,7010,'Voulex-vous COucher Avec Moi?','2021-12-22'),
	  (8053,7010,'Do you know the way to ST. Tropez','2021-12-22'),
	  (8054,7010,'Bon Anniversaire!','2021-12-22'),
	  (8055,7010,'Jules and Em','2021-12-22'),
	  (8056,7010,'An Englishman in Paris','2021-12-22'),
	  (8057,7010,'Boiling Point','2021-12-22'),
	  (8058,7011,'Martyr','2020-09-25'),
	  (8059,7011,'Capitalist','2020-09-25'),
	  (8060,7011,'Occupier','2020-09-25'),
	  (8061,7011,'Victim','2020-09-25'),
	  (8062,7012,'The Tunnel','2020-05-24'),
	  (8063,7012,'The Barracks','2020-05-24'),
	  (8064,7012,'The battle','2020-05-24'),
	  (8065,7012,'The Colonel','2020-05-24'),
	  (8066,7013,'Episode 1','2017-12-20'),
	  (8067,7013,'Episode 2','2017-12-20'),
	  (8068,7013,'Episode 3','2017-12-20'),
	  (8069,7013,'Episode 4','2017-12-20'),
	  (8070,7013,'Episode 5','2017-12-20'),
	  (8071,7014,'Episode 1','2018-04-06'),
	  (8072,7014,'Episode 2','2018-04-06'),
	  (8073,7014,'Episode 3','2018-04-06'),
	  (8074,7014,'Episode 4','2018-04-06'),
	  (8075,7014,'Episode 5','2018-04-06'),
	  (8076,7015,'We are Back','2019-07-19'),
	  (8077,7015,'Aikido','2019-07-19'),
	  (8078,7015,'48 meters underground','2019-07-19'),
	  (8079,7015,'Its Dolphin Time','2019-07-19'),
	  (8080,7015,'Boom, Boom, Ciao','2019-07-19'),
	  (8081,7016,'All to play for','2019-03-08'),
	  (8082,7016,'The king of spain','2019-03-08'),
	  (8083,7016,'Redemption','2019-03-08'),
	  (8084,7016,'The art of war','2019-03-08'),
	  (8085,7016,'Trouble at the top','2019-03-08'),
	  (8086,7017,'Lights Out','2020-02-28'),
	  (8087,7017,'Boiling Point','2020-02-28'),
	  (8088,7017,'Dog fight','2020-02-28'),
	  (8089,7017,'Dark Days','2020-02-28'),
	  (8090,7017,'Great Expectations','2020-02-28'),
	  (8091,7018,'Cash is king','2021-03-19'),
	  (8092,7018,'Back on Track','2021-03-19'),
	  (8093,7018,'Nobodys fool','2021-03-19'),
	  (8094,7018,'We need to talk about Ferrari','2021-03-19'),
	  (8095,7018,'The end of the affair','2021-03-19'),
	  (8096,7018,'The comeback kid','2021-03-19'),
	  (8097,7019,'Descenso','2015-08-28'),
	  (8098,7019,'The Sword of Simon Bolivar','2015-08-28'),
	  (8099,7019,'The men of always','2015-08-28'),
	  (8100,7019,'The palace in flames','2015-08-28'),
	  (8101,7019,'There will be a future','2015-08-28'),
	  (8102,7020,'Free at last','2016-09-02'),
	  (8103,7020,'Cambalache','2016-09-02'),
	  (8104,7020,'Our man in Madrid','2016-09-02'),
	  (8105,7020,'The Good, the bad and the dead','2016-09-02'),
	  (8106,7020,'The enemies of my enemy','2016-09-02'),
	  (8107,7021,'The Kingpin Strategy','2017-09-01'),
	  (8108,7021,'The Kali KGB','2017-09-01'),
	  (8109,7021,'Follow the money','2017-09-01'),
	  (8110,7021,'Checkmate','2017-09-01'),
	  (8111,7021,'MRO','2017-09-01'),
	  (8112,7022,'Diamond of the first water','2020-12-25'),
	  (8113,7022,'Shock and Delight','2020-12-25'),
	  (8114,7022,'Art of the Swoon','2020-12-25'),
	  (8115,7022,'An affair of honor','2020-12-25'),
	  (8116,7022,'The Duke and I','2020-12-25'),
	  (8117,7023,'Capital R Rake','2022-03-25'),
	  (8118,7023,'Off to the races','2022-03-25'),
	  (8119,7023,'A bee in your bonnet','2022-03-25'),
	  (8120,7023,'Victory','2022-03-25'),
	  (8121,7023,'An unthinkable fate','2022-03-25'),
	  (8122,7024,'When dimple met rishi','2020-11-20'),
	  (8123,7024,'Hot summer, cold vibes','2020-11-20'),
	  (8124,7024,'Message deleted','2020-11-20'),
	  (8125,7024,'Making moves','2020-11-20'),
	  (8126,7024,'Its not a date','2020-11-20'),
	  (8127,7024,'Games we play','2020-11-20'),
	  (8128,7025,'The Great Good Place','2020-10-09'),
	  (8129,7025,'The Pupil','2020-10-09'),
	  (8130,7025,'The Two Faces, part one','2020-10-09'),
	  (8131,7025,'The way it came','2020-10-09'),
	  (8132,7025,'The Altar of the dead','2020-10-09'),
	  (8133,7026,'The Vast Wasteland','2015-04-15'),
	  (8134,7026,'God Tongue','2015-04-15'),
	  (8135,7026,'The Chef','2015-04-15'),
	  (8136,7026,'Sacred mother','2015-04-15'),
	  (8137,7026,'The Ice Queen','2015-04-15'),
	  (8138,7027,'That which is placed within box','2016-07-02'),
	  (8139,7027,'Interplay of Light and Shadow','2016-07-02'),
	  (8140,7027,'The Age of Kings','2016-07-02'),
	  (8141,7027,'The Pursuer','2016-07-02'),
	  (8142,7027,'The secret of the first bite','2016-07-02'),
	  (8143,7027,'Morning shall come again','2016-07-02'),
	  (8144,7028,'Challenging the ten','2017-10-04'),
	  (8145,7028,'Ma & La','2017-10-04'),
	  (8146,7028,'The Lunar Feast','2017-10-04'),
	  (8147,7028,'A Pride of Young Lions','2017-10-04'),
	  (8148,7028,'The Shadow over the dining table','2017-10-04'),
	  (8149,7029,'Edgar','2019-09-20'),
	  (8150,7029,'Stacey','2019-09-20'),
	  (8151,7029,'Jay','2019-09-20'),
	  (8152,7030,'Julia','2020-09-16'),
	  (8153,7030,'Alex','2020-09-16'),
	  (8154,7030,'Danielle','2020-09-16'),
	  (8155,7030,'Sandeep','2020-09-16');


/**********************************  Inserting values into Reviews  ********************************/

INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES ('9001',	's100',	'6001', '7001',	'8001',	'Like',	GETDATE(), '9.6');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9002', 's101', '6002', '7002', '8002', 'Dislike', GETDATE(), '3.2');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9003', 's102', '6003', '7003', '8003', 'Like', GETDATE(), '6.5');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9004', 's103', '6004',	'7004', '8004',	'Like', GETDATE(), '8.7');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9005', 's104', '6005', '7005', '8005', 'Dislike', GETDATE(), '4.5');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9006', 's105', '6006', '7006', '8006', 'Like', GETDATE(), '6.8');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9007', 's106', '6007', '7007', '8007', 'Like', GETDATE(), '9.8');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9008', 's107', '6008', '7008', '8008', 'Dislike', GETDATE(), '6.5');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9009', 's108', '6009', '7009', '8009', 'Like', GETDATE(), '7.9');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9010', 's109', '6010', '7010', '8010', 'Like', GETDATE(), '7.7');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating)
VALUES('9011', 's110', '6011', '7011', '8011', 'Dislike', GETDATE(), '4.5');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9012', 's111', '6012', '7012', '8012', 'Like', GETDATE(), '7.5');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9013', 's112', '6013', '7013', '8013', 'Like', GETDATE(), '8');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9014', 's113', '6014', '7014', '8014', 'Dislike', GETDATE(), '5');
INSERT INTO Reviews(ReviewID, SeriesID, MovieID, SeasonID, EpisodeID, LikesDislikes, RatingDate, Rating) 
VALUES('9015', 's114', '6015', '7015', '8015', 'Like', GETDATE(), '7.9');


/**************************************************** UPDATE ******************************************/

UPDATE SubscriptionPlan
SET PlanStatus = 'Active', ReasonForCancellation = null
WHERE PlanID in (2008,2014,2001,2004,2012, 2006, 2009, 2015, 2003, 2011);

Update UserAccount set PhoneNumber = 9887877670 where AccountID = 111;
Update UserAccount set PhoneNumber = 9887877675 where AccountID = 121;
Update UserAccount set PhoneNumber = 7685764563 where AccountID = 131;
Update UserAccount set PhoneNumber = 6754658978 where AccountID = 141;
Update UserAccount set PhoneNumber = 3453756493 where AccountID = 151;
Update UserAccount set PhoneNumber = 5876390983 where AccountID = 161;
Update UserAccount set PhoneNumber = 9056483754 where AccountID = 171;
Update UserAccount set PhoneNumber = 8975648790 where AccountID = 181;
Update UserAccount set PhoneNumber = 9237485764 where AccountID = 191;
Update UserAccount set PhoneNumber = 8475683647 where AccountID = 201;
Update UserAccount set PhoneNumber = 9854673740 where AccountID = 211;
Update UserAccount set PhoneNumber = 8759403845 where AccountID = 221;
Update UserAccount set PhoneNumber = 7854454333 where AccountID = 231;
Update UserAccount set PhoneNumber = 9875643332 where AccountID = 241;
Update UserAccount set PhoneNumber = 4365555588 where AccountID = 251;
Update UserAccount set PhoneNumber = 9874678900 where AccountID = 258;


/**************************************************** ALTER ********************************************************/


--alteration on Login 
Alter table Login
Alter column AccountID INT NOT NULL;
GO
ALTER TABLE Login
ADD FOREIGN KEY (AccountID)          
REFERENCES UserAccount(AccountID);

SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='Login';

ALTER TABLE Login
DROP CONSTRAINT PK__Login__7ED91AEFD4ED448A;

ALTER table Login ADD CONSTRAINT primarykey_composite1
PRIMARY KEY (EmailID,AccountID);


--UserAccount

ALTER TABLE UserAccount
DROP CONSTRAINT FK__UserAccou__Email__23DE44F1;
GO

ALTER TABLE
  UserAccount
ALTER COLUMN
  PhoneNumber
    bigint NOT NULL;

ALTER TABLE UserAccount
DROP CONSTRAINT FK__UserAccou__Billi__24D2692A;
GO
ALTER TABLE UserAccount 
DROP COLUMN BillingID;

--BillingInfo

SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='BillingInfo';

ALTER TABLE
  BillingInfo
ALTER COLUMN
  AccountID
    int NOT NULL;

ALTER table BillingInfo ADD CONSTRAINT primarykey_composite
PRIMARY KEY (BillingID,AccountID,AddressID);
GO
ALTER TABLE BillingInfo DROP CONSTRAINT PK__BillingI__F1656D13FC02F273; 
GO
ALTER TABLE BillingInfo
ADD AccountID int not null;
GO
ALTER TABLE BillingInfo
ADD FOREIGN KEY (AccountID)          
REFERENCES UserAccount(AccountID);
GO
ALTER TABLE BillingInfo
DROP CONSTRAINT PK__BillingI__F1656D13452123F2;

alter table BillingInfo drop column BillingID

Alter table BillingInfo add BillingID INT not null IDENTITY(10,1)


select * from UserAccount

UPDATE BillingInfo set AccountID = 262 where BillingID = 10;
UPDATE BillingInfo set AccountID = 121 where BillingID = 12;
UPDATE BillingInfo set AccountID = 131 where BillingID = 13;
UPDATE BillingInfo set AccountID = 141 where BillingID = 14;
UPDATE BillingInfo set AccountID = 151 where BillingID = 15;
UPDATE BillingInfo set AccountID = 161 where BillingID = 16;
UPDATE BillingInfo set AccountID = 171 where BillingID = 17;
UPDATE BillingInfo set AccountID = 181 where BillingID = 18;
UPDATE BillingInfo set AccountID = 191 where BillingID = 19;
UPDATE BillingInfo set AccountID = 201 where BillingID = 20;
UPDATE BillingInfo set AccountID = 211 where BillingID = 21;
UPDATE BillingInfo set AccountID = 221 where BillingID = 22;
UPDATE BillingInfo set AccountID = 231 where BillingID = 23;
UPDATE BillingInfo set AccountID = 241 where BillingID = 24;
UPDATE BillingInfo set AccountID = 251 where BillingID = 25;

---Devices

SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='Devices';

ALTER TABLE Devices
DROP CONSTRAINT PK__Devices__49E12331BBD7F575;

alter table Devices drop column DeviceID

Alter table Devices add DeviceID INT not null IDENTITY(111110,1)

select * from Devices

INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111126, 111, 'Mac');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111127, 111, 'Windows2');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111128, 111, 'Mac2');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111129, 111, 'Mac3');

INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111130, 121, 'SB');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111131, 121, 'KK');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111132, 121, 'MC');
INSERT INTO Devices (DeviceID, AccountID, DeviceName) VALUES (111133, 121, 'Yay');

---Reviews
SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='Reviews';

ALTER TABLE Reviews
DROP CONSTRAINT FK__Reviews__SeriesI__0C06BB60;

ALTER TABLE Reviews
ADD FOREIGN KEY (SeriesID)          
REFERENCES TVSeries(SeriesID);


alter TABLE Reviews alter column MovieID int

alter TABLE Reviews alter column SeasonID int

alter TABLE Reviews alter column EpisodeID int

alter TABLE Reviews alter column SeriesID varchar(225)

alter table Reviews drop COLUMN LikesDislikes

alter table Reviews drop COLUMN LikesDislikes

alter table Reviews ADD Likes bigint, Dislikes bigint;

update Reviews set MovieID = NULL,SeasonID = Null, EpisodeID = NULL where ReviewID = 9001

update Reviews set SeriesID = NULL,MovieID = Null, EpisodeID = NULL where ReviewID = 9012
update Reviews set SeriesID = NULL,MovieID = Null, EpisodeID = NULL where ReviewID = 9013
update Reviews set SeriesID = NULL,MovieID = Null, EpisodeID = NULL where ReviewID = 9014
update Reviews set SeriesID = NULL,MovieID = Null, EpisodeID = NULL where ReviewID = 9015
update Reviews set SeriesID = NULL,MovieID = Null, EpisodeID = NULL where ReviewID = 9011

INSERT INTO Reviews(ReviewID,EpisodeID, RatingDate, Rating,Likes,Dislikes) VALUES('9016', '8011', GETDATE(), '4.5',293,34);
INSERT INTO Reviews(ReviewID,EpisodeID, RatingDate, Rating,Likes,Dislikes) VALUES('9017', '8001', GETDATE(), '9.5',2930,4);
INSERT INTO Reviews(ReviewID,EpisodeID, RatingDate, Rating,Likes,Dislikes) VALUES('9018', '8012', GETDATE(), '8.5',2983,3);
INSERT INTO Reviews(ReviewID,EpisodeID, RatingDate, Rating,Likes,Dislikes) VALUES('9019', '8002', GETDATE(), '3.5',296,10);
INSERT INTO Reviews(ReviewID,EpisodeID, RatingDate, Rating,Likes,Dislikes) VALUES('9020', '8013', GETDATE(), '2.5',290,100);

update Reviews set Likes = 1000, Dislikes = NULL where ReviewID = 9001
update Reviews set Likes = 1030, Dislikes = 33 where ReviewID = 9002
update Reviews set Likes = 2000, Dislikes = 2 where ReviewID = 9003
update Reviews set Likes = 5000, Dislikes = 6 where ReviewID = 9004
update Reviews set Likes = 3400, Dislikes = 7 where ReviewID = 9005
update Reviews set Likes = 1650, Dislikes = 15 where ReviewID = 9006
update Reviews set Likes = 1630, Dislikes = 9 where ReviewID = 9007
update Reviews set Likes = 1230, Dislikes = 22 where ReviewID = 9008
update Reviews set Likes = 2400, Dislikes = 32 where ReviewID = 9009
update Reviews set Likes = 2600, Dislikes = 12 where ReviewID = 9010
update Reviews set Likes = 1230, Dislikes = 21 where ReviewID = 9011
update Reviews set Likes = 2543, Dislikes = 5 where ReviewID = 9012
update Reviews set Likes = 2312, Dislikes = 2 where ReviewID = 9013
update Reviews set Likes = 2222, Dislikes = 11 where ReviewID = 9014
update Reviews set Likes = 1234, Dislikes = 16 where ReviewID = 9015

select * from Reviews

