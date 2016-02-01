﻿CREATE TABLE [dbo].[Offer] (
    [OID]                  INT           IDENTITY (100000, 1) NOT NULL,
    [isEnabled]            BIT           NULL,
    [AdminName]            NVARCHAR(255)  NULL,
    [Title]                NVARCHAR(255) NULL,
    [ExternalRedirectFlag] BIT           NULL,
    [RedirectURL]          NVARCHAR(255) CONSTRAINT [DF_Offer_RedirectURL] DEFAULT ('') NULL,
    [MaxImpressions]       INT           CONSTRAINT [DF_Offer_MaxImpressions] DEFAULT ((0)) NULL,
    [TotalImpressions]     INT           CONSTRAINT [DF_Offer_TotalImpressions] DEFAULT ((0)) NULL,
    [SerialPrefix]         VARCHAR (50)  NULL,
    [ZipCode]              VARCHAR (5)   CONSTRAINT [DF_Offer_ZipCode] DEFAULT ('') NULL,
    [AgeStart]             INT           CONSTRAINT [DF_Offer_AgeStart] DEFAULT ((0)) NULL,
    [AgeEnd]               INT           CONSTRAINT [DF_Offer_AgeEnd] DEFAULT ((0)) NULL,
    [ProgramId]            INT           CONSTRAINT [DF_Offer_ProgramId] DEFAULT ((0)) NULL,
    [BranchId]             INT           CONSTRAINT [DF_Offer_BranchId] DEFAULT ((0)) NULL,
    [LastModDate]          DATETIME      CONSTRAINT [DF_Offer_LastModDate] DEFAULT (getdate()) NULL,
    [LastModUser]          VARCHAR (50)  CONSTRAINT [DF_Offer_LastModUser] DEFAULT ('N/A') NULL,
    [AddedDate]            DATETIME      CONSTRAINT [DF_Offer_AddedDate] DEFAULT (getdate()) NULL,
    [AddedUser]            VARCHAR (50)  CONSTRAINT [DF_Offer_AddedUser] DEFAULT ('N/A') NULL,
    [TenID]                INT           NULL,
    [FldInt1]              INT           NULL,
    [FldInt2]              INT           NULL,
    [FldInt3]              INT           NULL,
    [FldBit1]              BIT           NULL,
    [FldBit2]              BIT           NULL,
    [FldBit3]              BIT           NULL,
    [FldText1]             TEXT          NULL,
    [FldText2]             TEXT          NULL,
    [FldText3]             TEXT          NULL,
    CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED ([OID] ASC)
);

