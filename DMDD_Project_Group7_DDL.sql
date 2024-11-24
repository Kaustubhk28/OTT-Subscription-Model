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
/**************************************************   DDL   *******************************************************/
--------------------------------------------------------------------------------------------------------------------

CREATE DATABASE demofile;
GO
USE demofile;
GO

/*Creating Table Login*/
CREATE TABLE Login
  (
    EmailID VARCHAR(225) NOT NULL PRIMARY KEY,  
    AccountID VARCHAR(225) NOT NULL,                       
    EncryptedPassword VARBINARY(225) NOT NULL,
	LoginTimestamp DATETIME NOT NULL DEFAULT GETDATE(),
	UserLogin VARCHAR(225) NOT NULL,
	UserLogout VARCHAR(225) NOT NULL,
	LogoutTimestamp DATETIME NOT NULL DEFAULT GETDATE() 
   );


/*Creating UserAccount Table*/
CREATE TABLE UserAccount
    ( 
    AccountID INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    EmailID VARCHAR(225) NOT NULL REFERENCES Login(EmailID),
    BillingID INT NOT NULL REFERENCES BillingInfo(BillingID),
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DateOfBirth DATE NOT NULL,
	  Age AS DATEDIFF(HOUR, DateOfBirth, GETDATE())/8776,
    PhoneNumber VARCHAR(50) NOT NULL,
    AccountOpeningDate DATE NOT NULL
   );


/******************* Constrain to Check if Phone Number is 10 digits *******************/
ALTER TABLE UserAccount ADD CONSTRAINT ph_num_chk 
CHECK ( [PhoneNumber] LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' and len([PhoneNumber])=10 )


/*Creating Devices Table*/
CREATE TABLE Devices
   ( 
    DeviceID INT NOT NULL PRIMARY KEY, 
    AccountID INT NOT NULL REFERENCES UserAccount(AccountID),
	DeviceName VARCHAR(225)
   );


/*Creating Table RequestReportContent*/
CREATE TABLE RequestReportContent
  (
    ReqID INT NOT NULL PRIMARY KEY,  
    AccountID INT NOT NULL REFERENCES UserAccount(AccountID),
    RequestType VARCHAR(225) NOT NULL,
	ContentName VARCHAR(225) NOT NULL,
	ContentDescription VARCHAR(225) NOT NULL,
	NoOfReqReceived INT NOT NULL
  );


/*Creating Table CustomerFeedback*/
CREATE TABLE CustomerFeedback
  (
    FeedbackID INT NOT NULL PRIMARY KEY,  
    AccountID INT NOT NULL REFERENCES UserAccount(AccountID),
    Feedback VARCHAR(225) NOT NULL,
	FeedbackRating FLOAT NOT NULL
  );


/*Creating Table BillingInfo*/
CREATE TABLE BillingInfo
  (
    BillingID INT NOT NULL PRIMARY KEY,  
    PlanID INT NOT NULL REFERENCES SubscriptionPlan(PlanID),
    AddressID INT NOT NULL REFERENCES AddressInfo(AddressID),
    Encrypted_CardNumber VARBINARY(160),   --Encrypted card number
	CVV_Encrypted VARBINARY(160),   --Encrypted cvv
    Expiry_Encrypted VARBINARY(160),  --Encrypted expiry
  );


/*Creating Table AddressInfo*/
CREATE TABLE AddressInfo
  (
    AddressID INT NOT NULL PRIMARY KEY,  
    StreetID INT REFERENCES StreetAddress(StreetID) NOT NULL,
    City VARCHAR(225) NOT NULL,
	State VARCHAR(225) DEFAULT '',
	ZipCode VARCHAR(225) NOT NULL,
	Country VARCHAR(225) NOT NULL,
  );


/*Creating Table StreetAddress*/
CREATE TABLE StreetAddress
  (
    StreetID INT NOT NULL PRIMARY KEY,  
    StreetNumber VARCHAR(225) NOT NULL,
    StreetName VARCHAR(225) NOT NULL,
	  ApartmentNumber	INT NOT NULL
  );


/*Creating Table SubscriptionPlan*/
CREATE TABLE SubscriptionPlan
  (
    PlanID INT NOT NULL PRIMARY KEY,  
    PlanType VARCHAR(225) NOT NULL,
    PlanStatus VARCHAR(225) NOT NULL,
	 --  CONSTRAINT planstats CHECK (PlanStatus IN ('Active', 'Inactive')), 
	  PlanCost DECIMAL(38,2) NOT NULL,
	  PlanStartDate DATE NOT NULL,
	  PlanEndDate DATE NOT NULL,
	  ReasonForCancellation VARCHAR(225) 
  );


/*Creating Table Advertisement*/
CREATE TABLE Advertisement
    (
	   AdvID INT NOT NULL, 
	   PlanID INT REFERENCES SubscriptionPlan(PlanID) NOT NULL, 
	   NameOfAdvertiser VARCHAR(225) NOT NULL, 
	   TargetLocation VARCHAR(225) NOT NULL, 
	   TargetNumberOfUser INT NOT NULL, 
	   AdvStartDate DATETIME, 
	   AdvEndDate DATETIME, 
	   AdvAmount INT
	);


/*Creating a table TVSeries*/
CREATE TABLE TVSeries
    (  
	   SeriesID VARCHAR(225) NOT NULL PRIMARY KEY, 
	   PlanID INT REFERENCES SubscriptionPlan(PlanID) NOT NULL, 
	   OrderID INT REFERENCES PurchaseOrder(OrderID) NOT NULL,
	   Title VARCHAR(225) NOT NULL,
	   Genre VARCHAR(225) NOT NULL,
	   AgeGroup VARCHAR(225) NOT NULL,
	   sViews INT NOT NULL,
	   Actor VARCHAR(225) NOT NULL,                       
	   Director VARCHAR(225) NOT NULL,
	   sLanguage VARCHAR(225) NOT NULL,
	   Awards VARCHAR(225) NOT NULL,
	   Rating FLOAT NOT NULL
	      CONSTRAINT CHK_Rating_Range_TVShows1to10
	      CHECK (Rating BETWEEN 1 AND 10),	   
       ReleaseDate DATE NOT NULL
	);


/*Creating table PurchaseOrder*/
CREATE TABLE PurchaseOrder		
(
 OrderID INT NOT NULL PRIMARY KEY,
 PurchaseCost FLOAT NOT NULL,
 OrderStartDate DATE NOT NULL,
 OrderEndDate DATE NOT NULL,
 OrderPurchaseDate DATE NOT NULL
);


/*Creating table Movies*/
CREATE TABLE Movies 
(
    MovieID INT NOT NULL PRIMARY KEY,
    PlanID INT NOT NULL,
    OrderID INT NOT NULL REFERENCES PurchaseOrder(OrderID),
    Title VARCHAR(225) NOT NULL,
    Genre VARCHAR(225) NOT NULL,
    AgeGroup VARCHAR(45) NOT NULL,
    mViews INT NOT NULL,
    Actor VARCHAR(225) NOT NULL,
    Director VARCHAR(225) NOT NULL,
    mLanguage VARCHAR(225) NOT NULL,
    Awards VARCHAR(225) NOT NULL,
	  Rating FLOAT NOT NULL
	  CONSTRAINT CHK_Rating_Range1to10
	  CHECK (Rating BETWEEN 1 AND 10),
	  ReleaseDate DATE NOT NULL
);


/*Creating table Seasons*/
CREATE TABLE Seasons 
(
    SeasonID INT NOT NULL PRIMARY KEY,
    SeriesID VARCHAR(225) NOT NULL REFERENCES TVSeries(SeriesID),
    SeasonName VARCHAR(225) NOT NULL,
    ReleaseDate DATE NOT NULL
);


/*Creating table Episodes*/
CREATE TABLE Episodes 
(
    EpisodeID INT NOT NULL PRIMARY KEY,
    SeasonID INT NOT NULL REFERENCES Seasons(SeasonID),
    EpisodeName VARCHAR(225) NOT NULL,
    ReleaseDate DATE NOT NULL
);


/*Creating table Reviews*/
CREATE TABLE Reviews 
(
    ReviewID INT NOT NULL PRIMARY KEY,
    SeriesID VARCHAR(225) NOT NULL REFERENCES TVSeries(SeriesID),
    MovieID INT NOT NULL REFERENCES Movies(MovieID),
    SeasonID INT NOT NULL REFERENCES Seasons(SeasonID),
    EpisodeID INT NOT NULL REFERENCES Episodes(EpisodeID),
    LikesDislikes VARCHAR(225), 
    RatingDate DATETIME,
	Rating FLOAT
);
GO


/**************************************************************************************************************/
/**********************************************   STORED PROCEDURE   ******************************************/
/**************************************************************************************************************/

/*Creating a Procedure to add new user*/
GO
CREATE PROCEDURE AddNewUser(
@EmailID VARCHAR(225),
@FirstName VARCHAR(225),
@LastName VARCHAR(225),
@Gender VARCHAR(225),
@DateOfBirth DATE,
@PhoneNumber BIGINT,
@AccountOpeningDate DATE)

AS
BEGIN

SET IDENTITY_INSERT dbo.UserAccount OFF

DECLARE @StringVariable NVARCHAR(50);

DECLARE @email_count int;

SELECT @email_count = COUNT(EmailID) FROM UserAccount WHERE EmailID = @EmailID;
PRINT(@email_count)
IF @email_count>0
PRINT 'Account already exists.';

IF @email_count = 0
Begin
PRINT 'Account Created.';
INSERT INTO UserAccount (EmailID,FirstName,LastName,Gender,DateOfBirth,PhoneNumber,AccountOpeningDate)
VALUES (@EmailID,@FirstName,@LastName,@Gender,@DateOfBirth,@PhoneNumber,@AccountOpeningDate)

END
END
GO
EXEC dbo.AddNewUser @EmailID='kaustubhkhedekar2488@gmail.com',
@FirstName='Kaustubh',
@LastName='Khedekar',
@Gender='M',
@DateOfBirth='1994-06-28',
@PhoneNumber=9876543111,
@AccountOpeningDate='2022-06-02';



/* Creating a procedure to insert data into the BillingInfo table after encrypting the Cardnumber, CVV and Expiry */
GO
CREATE PROCEDURE InsertintoBillingInfo 
@planID INT, @addressID INT, @cardnumber VARCHAR(50), @cvv VARCHAR(50), @expirydate VARCHAR(50), @accountID int
AS 
  BEGIN 
      DECLARE @cardnumberencrypted VARBINARY(160) 
      DECLARE @cvvencrypted VARBINARY(160) 
      DECLARE @expirydateencrypted VARBINARY(160)

      DECLARE @cardnum_len INT
      DECLARE @cvv_len INT

      SET @cardnum_len = LEN(@cardnumber)
      SET @cvv_len = LEN(@cvv)

      if @cardnum_len > 16 or @cardnum_len < 16 --and @cvv_len > 3 or @cvv_len <3
      BEGIN
        if @cvv_len > 3 or @cvv_len <3
            PRINT 'Invalid Card Number or CVV.'
      End

      if @cardnum_len = 16 and @cvv_len = 3
      Begin
      SET @cardnumberencrypted = Encryptbykey(Key_guid('Billing_Encryption_Key'), 
                                 CONVERT(varchar, @cardnumber)) 
      SET @cvvencrypted = Encryptbykey(Key_guid('Billing_Encryption_Key'), 
                          CONVERT (varchar, @cvv)) 
      SET @expirydateencrypted = Encryptbykey(Key_guid('Billing_Encryption_Key'), 
                             CONVERT(varchar, @expirydate)) 

      INSERT INTO dbo.BillingInfo (PlanID, AddressID, Encrypted_CardNumber, CVV_Encrypted, Expiry_Encrypted, AccountID)
      VALUES (@planID, @addressID, @cardnumberencrypted, @cvvencrypted, @expirydateencrypted, @accountID); 
      PRINT 'Pass'
      END

END;
GO
EXEC dbo.InsertintoBillingInfo @planID = 2014, 
                               @addressID = 102, 
                               @cardnumber = 5676765465482201, 
                               @cvv = 199, 
                               @expirydate = '13/29', 
                               @accountID = 263;
GO


/*Creating a Procedure to add new device*/
GO
CREATE PROCEDURE AddNewDevice(
@accid int,
@devicename VARCHAR(225))

AS
BEGIN

INSERT INTO Devices (AccountID,DeviceName)
VALUES (@accid,@devicename)

END;
GO
EXEC dbo.AddNewDevice @accid = 141,
                      @devicename = 'pez3'
GO


/**************************************************************************************************************/
/***************************************************   VIEW   *************************************************/
/**************************************************************************************************************/

/* View to decrypt and view LoginPassword */
GO
CREATE VIEW decryptUserPassword 
AS 
SELECT  
AccountID,
CONVERT(varchar, DecryptByKey([EncryptedPassword])) AS 'Decrypted Password' 
FROM Login;
GO
SELECT * FROM decryptUserPassword;          --- Run OpenSymetricKey for Login statement before executing the statement.


/* View to decrypt and view BillingDetails */
GO
CREATE VIEW decryptedBillingDetails AS 
SELECT BillingID, CONVERT(VARCHAR, DecryptByKey([Encrypted_CardNumber])) 'Decrypted Card Number',
CONVERT(VARCHAR, DecryptByKey([CVV_Encrypted])) AS 'Decrypted cvv',
CONVERT(VARCHAR, DecryptByKey([Expiry_Encrypted])) AS 'Decrypted expiry'  
FROM BillingInfo;
GO
SELECT * FROM decryptedBillingDetails        --- Run OpenSymetricKey for BillingInfo statement before executing the statement. 
GO

/* View to Report Revenue Generated by Each Plan for 2022 */
CREATE VIEW revenueGeneratedByEachPlan2022 AS
SELECT p.PlanType, p.PlanCost,count(PlanID) as NumberofSubscriptions, SUM(p.PlanCost) as [Revenue Generated by Each Plan for 2022] 
FROM dbo.SubscriptionPlan p
Where YEAR(PlanStartDate) = '2022'
group by PlanType,p.PlanCost
GO
SELECT * FROM revenueGeneratedByEachPlan2022
order by NumberofSubscriptions desc;
GO


/* View to Report the Number of Suscribers by Country, Ordered by Desc to show the Countries with Highest Subscriptions on Top */
CREATE VIEW numofsubscribersbycountry AS
SELECT a.Country,count(p.PlanID) as NumberofSubscriptions 
FROM dbo.SubscriptionPlan p
right join BillingInfo b 
on b.PlanID = p.PlanID
right join AddressInfo a
on a.AddressID = b.AddressID
--Where YEAR(PlanStartDate) = '2022'
group by a.Country
GO
SELECT * FROM numofsubscribersbycountry
order by NumberofSubscriptions desc;


/* View to Report the Top 3 Rated TVSeries, Genre, Director, Language and Ratings */
go
create view Top3HighestRatedTVSeries
as
select top 4 t.Title, t.Genre, t.Director, t.sLanguage as [Language], t.Rating
from TVSeries t
order by t.Rating desc

go
select * from Top3HighestRatedTVSeries
go


/*View to report the average Customer Feedback */
go
create view CustFeedback 
as
select cast(avg (c.FeedbackRating) as decimal(10,2)) as [Average Customer Feedback on the Platform]
from CustomerFeedback c

go
select * from CustFeedback


/* View to Report the Total Investment made by the Platform to Purchase the Content 
and the Total Revenue Generated from the Subscriptions */

go
create VIEW totalinvestmentandrevenue1 AS
select (select SUM(PurchaseCost) from PurchaseOrder) as [Total Investment Made to Purchase the Content],
       (select SUM(PlanCost)from SubscriptionPlan) as [Total Revenue Generated from The Subscriptions] 
from PurchaseOrder
CROSS join SubscriptionPlan
go
select Distinct * from totalinvestmentandrevenue1
GO

/**************************************************************************************************************/
/******************************************   Table Level Check  **********************************************/
/**************************************************************************************************************/

CREATE FUNCTION tab_levck_device_cnt (@accid int)
RETURNS int
BEGIN
   DECLARE @devicecount int;
   SELECT @devicecount = count(DeviceID)
      FROM Devices
      group by AccountID having count(DeviceID)>4;
   RETURN @devicecount;
END
GO
ALTER TABLE Devices ADD CONSTRAINT check_devices_count 
CHECK (dbo.tab_levck_device_cnt (AccountID) = 0);


/**************************************************************************************************************/
/*******************************************   ENCRYPTION  ****************************************************/
/**************************************************************************************************************/

/* UserAccount */
/* Creating a master key encryption */
CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = 'info6210'; 

/* Creating a certificate for encryption  */
CREATE CERTIFICATE PasswordEncryption  
WITH SUBJECT = 'Password Encryption';

/* Creating a symmetric key using AES_256 using the created Password encryption certificate */  
CREATE SYMMETRIC KEY Password_Encryption_Key  
WITH ALGORITHM = AES_256  
ENCRYPTION BY CERTIFICATE PasswordEncryption;

/* Query to Open Symmetric Key for Password */
OPEN SYMMETRIC KEY Password_Encryption_Key  
DECRYPTION BY CERTIFICATE PasswordEncryption;



/* BillingInfo */
/* Creating a master key encryption */
CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = 'Test_Password'; 

/*Creating a certificate for encryption*/
CREATE CERTIFICATE BillingEncryption  
WITH SUBJECT = 'Billing Encryption';  

/* Creating a symmetric key using AES_256 using the created payment encryption certificate */  
CREATE SYMMETRIC KEY Billing_Encryption_Key  
WITH ALGORITHM = AES_256  
ENCRYPTION BY CERTIFICATE BillingEncryption;

/* Query to Open Symmetric Key for Password */
OPEN SYMMETRIC KEY Billing_Encryption_Key  
DECRYPTION BY CERTIFICATE BillingEncryption;


