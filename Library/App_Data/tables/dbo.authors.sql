﻿CREATE TABLE [dbo].[AUTHORS] (
    [ID]   INT           IDENTITY (1, 1) NOT NULL,
    [NAME] VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_AUTHORS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

