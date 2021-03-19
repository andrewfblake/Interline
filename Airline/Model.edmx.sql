
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/19/2021 12:51:50
-- Generated from EDMX file: C:\Users\andre\source\repos\Airline\Airline\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Airline];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AirlineFeature_AirlineTaxonomy]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AirlineFeature] DROP CONSTRAINT [FK_AirlineFeature_AirlineTaxonomy];
GO
IF OBJECT_ID(N'[dbo].[FK_Ancillary_ProductCatalogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ancillary] DROP CONSTRAINT [FK_Ancillary_ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[FK_CancelRestriction_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CancelRestriction] DROP CONSTRAINT [FK_CancelRestriction_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_CarrierAcceptanceRule_ProductCatalogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarrierAcceptanceRule] DROP CONSTRAINT [FK_CarrierAcceptanceRule_ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[FK_ChangeRestriction_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChangeRestriction] DROP CONSTRAINT [FK_ChangeRestriction_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_Market_ProductCatalogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Market] DROP CONSTRAINT [FK_Market_ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[FK_MinConnectTimeAcceptanceRule_ProductCatalogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MinConnectTimeAcceptanceRule] DROP CONSTRAINT [FK_MinConnectTimeAcceptanceRule_ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[FK_OperatingLeg_Route]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OperatingLeg] DROP CONSTRAINT [FK_OperatingLeg_Route];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductToAncillary_Ancillary]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductToAncillary] DROP CONSTRAINT [FK_ProductToAncillary_Ancillary];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductToAncillary_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductToAncillary] DROP CONSTRAINT [FK_ProductToAncillary_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_Route_Market]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Route] DROP CONSTRAINT [FK_Route_Market];
GO
IF OBJECT_ID(N'[dbo].[FK_SeatAttribute_SeatMap]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SeatAttribute] DROP CONSTRAINT [FK_SeatAttribute_SeatMap];
GO
IF OBJECT_ID(N'[dbo].[FK_SeatMap_TransportVehicleToProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SeatMap] DROP CONSTRAINT [FK_SeatMap_TransportVehicleToProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_Settlement_ProductCatalogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Settlement] DROP CONSTRAINT [FK_Settlement_ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[FK_TransportVehicle_ProductCatalogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransportVehicle] DROP CONSTRAINT [FK_TransportVehicle_ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[FK_TransportVehicleToProducts_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransportVehicleToProducts] DROP CONSTRAINT [FK_TransportVehicleToProducts_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_TransportVehicleToProducts_TransportVehicle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransportVehicleToProducts] DROP CONSTRAINT [FK_TransportVehicleToProducts_TransportVehicle];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AirlineFeature]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AirlineFeature];
GO
IF OBJECT_ID(N'[dbo].[AirlineTaxonomy]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AirlineTaxonomy];
GO
IF OBJECT_ID(N'[dbo].[Ancillary]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ancillary];
GO
IF OBJECT_ID(N'[dbo].[CancelRestriction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CancelRestriction];
GO
IF OBJECT_ID(N'[dbo].[CarrierAcceptanceRule]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarrierAcceptanceRule];
GO
IF OBJECT_ID(N'[dbo].[ChangeRestriction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChangeRestriction];
GO
IF OBJECT_ID(N'[dbo].[Market]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Market];
GO
IF OBJECT_ID(N'[dbo].[MinConnectTimeAcceptanceRule]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MinConnectTimeAcceptanceRule];
GO
IF OBJECT_ID(N'[dbo].[OperatingLeg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OperatingLeg];
GO
IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO
IF OBJECT_ID(N'[dbo].[ProductCatalogue]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductCatalogue];
GO
IF OBJECT_ID(N'[dbo].[ProductToAncillary]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductToAncillary];
GO
IF OBJECT_ID(N'[dbo].[Resource]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Resource];
GO
IF OBJECT_ID(N'[dbo].[Route]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Route];
GO
IF OBJECT_ID(N'[dbo].[SeatAttribute]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SeatAttribute];
GO
IF OBJECT_ID(N'[dbo].[SeatMap]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SeatMap];
GO
IF OBJECT_ID(N'[dbo].[Settlement]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Settlement];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TransportVehicle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TransportVehicle];
GO
IF OBJECT_ID(N'[dbo].[TransportVehicleToProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TransportVehicleToProducts];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AirlineFeatures'
CREATE TABLE [dbo].[AirlineFeatures] (
    [Code] nchar(10)  NOT NULL,
    [AirlineTaxonomyCode] nchar(10)  NULL,
    [Type] nchar(10)  NULL,
    [Vale] nchar(10)  NULL
);
GO

-- Creating table 'AirlineTaxonomies'
CREATE TABLE [dbo].[AirlineTaxonomies] (
    [Code] nchar(10)  NOT NULL,
    [AnyParentCode] nchar(10)  NULL,
    [Title] nchar(10)  NULL,
    [Description] nchar(10)  NULL
);
GO

-- Creating table 'Ancillaries'
CREATE TABLE [dbo].[Ancillaries] (
    [Code] varchar(50)  NOT NULL,
    [ProductCatalogueCode] varchar(50)  NULL,
    [Name] varchar(50)  NULL,
    [Description] varchar(50)  NULL
);
GO

-- Creating table 'CancelRestrictions'
CREATE TABLE [dbo].[CancelRestrictions] (
    [Code] varchar(50)  NOT NULL,
    [ProductCode] varchar(50)  NULL
);
GO

-- Creating table 'CarrierAcceptanceRules'
CREATE TABLE [dbo].[CarrierAcceptanceRules] (
    [Code] varchar(50)  NOT NULL,
    [ProductCatalogueCode] varchar(50)  NULL,
    [TransportDesignator] varchar(50)  NULL,
    [AccountingCode] varchar(50)  NULL,
    [Type] varchar(50)  NULL,
    [Accepted] bit  NULL
);
GO

-- Creating table 'ChangeRestrictions'
CREATE TABLE [dbo].[ChangeRestrictions] (
    [Code] varchar(50)  NOT NULL,
    [ProductCode] varchar(50)  NULL
);
GO

-- Creating table 'Markets'
CREATE TABLE [dbo].[Markets] (
    [Code] varchar(50)  NOT NULL,
    [ProductCatalogueCode] varchar(50)  NULL,
    [LocationOne] varchar(50)  NULL,
    [LocationTwo] varchar(50)  NULL
);
GO

-- Creating table 'MinConnectTimeAcceptanceRules'
CREATE TABLE [dbo].[MinConnectTimeAcceptanceRules] (
    [Code] varchar(50)  NOT NULL,
    [ProductCatalogueCode] varchar(50)  NULL,
    [TransportDesignator] varchar(50)  NULL,
    [AccountingCode] varchar(50)  NULL,
    [LocationCode] varchar(50)  NULL,
    [Onward] bit  NULL,
    [Min] time  NULL,
    [Max] time  NULL,
    [Accepted] bit  NULL
);
GO

-- Creating table 'OperatingLegs'
CREATE TABLE [dbo].[OperatingLegs] (
    [Code] varchar(50)  NOT NULL,
    [RouteCode] varchar(50)  NULL,
    [TransportVehicle] varchar(50)  NULL,
    [DepartureTime] varchar(50)  NULL,
    [DepartureDay] varchar(50)  NULL,
    [ServiceStart] varchar(50)  NULL,
    [ServiceEnd] varchar(50)  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Code] varchar(50)  NOT NULL,
    [Name] varchar(50)  NULL,
    [Description] varchar(50)  NULL
);
GO

-- Creating table 'ProductCatalogues'
CREATE TABLE [dbo].[ProductCatalogues] (
    [Code] varchar(50)  NOT NULL,
    [TransportDesignator] varchar(50)  NOT NULL,
    [AccountingCode] varchar(50)  NOT NULL,
    [Type] varchar(50)  NULL
);
GO

-- Creating table 'ProductToAncillaries'
CREATE TABLE [dbo].[ProductToAncillaries] (
    [AncillaryCode] varchar(50)  NOT NULL,
    [ProductCode] varchar(50)  NOT NULL,
    [Optional] bit  NULL
);
GO

-- Creating table 'Resources'
CREATE TABLE [dbo].[Resources] (
    [Code] nchar(10)  NOT NULL,
    [AnyParentCode] nchar(10)  NULL,
    [Title] nchar(10)  NULL,
    [Description] nchar(10)  NULL,
    [URL] nchar(10)  NULL
);
GO

-- Creating table 'Routes'
CREATE TABLE [dbo].[Routes] (
    [Code] varchar(50)  NOT NULL,
    [MarketCode] varchar(50)  NULL,
    [DepartureLocation] varchar(50)  NULL,
    [ArrivalLocation] varchar(50)  NULL
);
GO

-- Creating table 'SeatAttributes'
CREATE TABLE [dbo].[SeatAttributes] (
    [Code] varchar(50)  NOT NULL,
    [SeatMap] varchar(50)  NULL,
    [Row] varchar(50)  NULL,
    [Column] varchar(50)  NULL,
    [Attributes] varchar(50)  NULL
);
GO

-- Creating table 'SeatMaps'
CREATE TABLE [dbo].[SeatMaps] (
    [Code] varchar(50)  NOT NULL,
    [TransportVehicleCode] varchar(50)  NULL,
    [ProductCode] varchar(50)  NULL,
    [Floor] varchar(50)  NULL,
    [StartRow] varchar(50)  NULL,
    [EndRow] varchar(50)  NULL,
    [Columns] varchar(50)  NULL,
    [Attributes] varchar(50)  NULL
);
GO

-- Creating table 'Settlements'
CREATE TABLE [dbo].[Settlements] (
    [Code] varchar(50)  NOT NULL,
    [ProductCatalogueCode] varchar(50)  NULL,
    [SettlmentTime] varchar(50)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TransportVehicles'
CREATE TABLE [dbo].[TransportVehicles] (
    [Code] varchar(50)  NOT NULL,
    [ProductCatalogueCode] varchar(50)  NULL,
    [Type] varchar(50)  NULL,
    [Name] varchar(50)  NULL
);
GO

-- Creating table 'TransportVehicleToProducts'
CREATE TABLE [dbo].[TransportVehicleToProducts] (
    [TransportVehicleCode] varchar(50)  NOT NULL,
    [ProductCode] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Code] in table 'AirlineFeatures'
ALTER TABLE [dbo].[AirlineFeatures]
ADD CONSTRAINT [PK_AirlineFeatures]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'AirlineTaxonomies'
ALTER TABLE [dbo].[AirlineTaxonomies]
ADD CONSTRAINT [PK_AirlineTaxonomies]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'Ancillaries'
ALTER TABLE [dbo].[Ancillaries]
ADD CONSTRAINT [PK_Ancillaries]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'CancelRestrictions'
ALTER TABLE [dbo].[CancelRestrictions]
ADD CONSTRAINT [PK_CancelRestrictions]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'CarrierAcceptanceRules'
ALTER TABLE [dbo].[CarrierAcceptanceRules]
ADD CONSTRAINT [PK_CarrierAcceptanceRules]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'ChangeRestrictions'
ALTER TABLE [dbo].[ChangeRestrictions]
ADD CONSTRAINT [PK_ChangeRestrictions]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'Markets'
ALTER TABLE [dbo].[Markets]
ADD CONSTRAINT [PK_Markets]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'MinConnectTimeAcceptanceRules'
ALTER TABLE [dbo].[MinConnectTimeAcceptanceRules]
ADD CONSTRAINT [PK_MinConnectTimeAcceptanceRules]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'OperatingLegs'
ALTER TABLE [dbo].[OperatingLegs]
ADD CONSTRAINT [PK_OperatingLegs]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'ProductCatalogues'
ALTER TABLE [dbo].[ProductCatalogues]
ADD CONSTRAINT [PK_ProductCatalogues]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [AncillaryCode], [ProductCode] in table 'ProductToAncillaries'
ALTER TABLE [dbo].[ProductToAncillaries]
ADD CONSTRAINT [PK_ProductToAncillaries]
    PRIMARY KEY CLUSTERED ([AncillaryCode], [ProductCode] ASC);
GO

-- Creating primary key on [Code] in table 'Resources'
ALTER TABLE [dbo].[Resources]
ADD CONSTRAINT [PK_Resources]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [PK_Routes]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'SeatAttributes'
ALTER TABLE [dbo].[SeatAttributes]
ADD CONSTRAINT [PK_SeatAttributes]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'SeatMaps'
ALTER TABLE [dbo].[SeatMaps]
ADD CONSTRAINT [PK_SeatMaps]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [Code] in table 'Settlements'
ALTER TABLE [dbo].[Settlements]
ADD CONSTRAINT [PK_Settlements]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Code] in table 'TransportVehicles'
ALTER TABLE [dbo].[TransportVehicles]
ADD CONSTRAINT [PK_TransportVehicles]
    PRIMARY KEY CLUSTERED ([Code] ASC);
GO

-- Creating primary key on [TransportVehicleCode], [ProductCode] in table 'TransportVehicleToProducts'
ALTER TABLE [dbo].[TransportVehicleToProducts]
ADD CONSTRAINT [PK_TransportVehicleToProducts]
    PRIMARY KEY CLUSTERED ([TransportVehicleCode], [ProductCode] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AirlineTaxonomyCode] in table 'AirlineFeatures'
ALTER TABLE [dbo].[AirlineFeatures]
ADD CONSTRAINT [FK_AirlineFeature_AirlineTaxonomy]
    FOREIGN KEY ([AirlineTaxonomyCode])
    REFERENCES [dbo].[AirlineTaxonomies]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AirlineFeature_AirlineTaxonomy'
CREATE INDEX [IX_FK_AirlineFeature_AirlineTaxonomy]
ON [dbo].[AirlineFeatures]
    ([AirlineTaxonomyCode]);
GO

-- Creating foreign key on [ProductCatalogueCode] in table 'Ancillaries'
ALTER TABLE [dbo].[Ancillaries]
ADD CONSTRAINT [FK_Ancillary_ProductCatalogue]
    FOREIGN KEY ([ProductCatalogueCode])
    REFERENCES [dbo].[ProductCatalogues]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Ancillary_ProductCatalogue'
CREATE INDEX [IX_FK_Ancillary_ProductCatalogue]
ON [dbo].[Ancillaries]
    ([ProductCatalogueCode]);
GO

-- Creating foreign key on [AncillaryCode] in table 'ProductToAncillaries'
ALTER TABLE [dbo].[ProductToAncillaries]
ADD CONSTRAINT [FK_ProductToAncillary_Ancillary]
    FOREIGN KEY ([AncillaryCode])
    REFERENCES [dbo].[Ancillaries]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProductCode] in table 'CancelRestrictions'
ALTER TABLE [dbo].[CancelRestrictions]
ADD CONSTRAINT [FK_CancelRestriction_Product]
    FOREIGN KEY ([ProductCode])
    REFERENCES [dbo].[Products]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CancelRestriction_Product'
CREATE INDEX [IX_FK_CancelRestriction_Product]
ON [dbo].[CancelRestrictions]
    ([ProductCode]);
GO

-- Creating foreign key on [ProductCatalogueCode] in table 'CarrierAcceptanceRules'
ALTER TABLE [dbo].[CarrierAcceptanceRules]
ADD CONSTRAINT [FK_CarrierAcceptanceRule_ProductCatalogue]
    FOREIGN KEY ([ProductCatalogueCode])
    REFERENCES [dbo].[ProductCatalogues]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarrierAcceptanceRule_ProductCatalogue'
CREATE INDEX [IX_FK_CarrierAcceptanceRule_ProductCatalogue]
ON [dbo].[CarrierAcceptanceRules]
    ([ProductCatalogueCode]);
GO

-- Creating foreign key on [ProductCode] in table 'ChangeRestrictions'
ALTER TABLE [dbo].[ChangeRestrictions]
ADD CONSTRAINT [FK_ChangeRestriction_Product]
    FOREIGN KEY ([ProductCode])
    REFERENCES [dbo].[Products]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ChangeRestriction_Product'
CREATE INDEX [IX_FK_ChangeRestriction_Product]
ON [dbo].[ChangeRestrictions]
    ([ProductCode]);
GO

-- Creating foreign key on [ProductCatalogueCode] in table 'Markets'
ALTER TABLE [dbo].[Markets]
ADD CONSTRAINT [FK_Market_ProductCatalogue]
    FOREIGN KEY ([ProductCatalogueCode])
    REFERENCES [dbo].[ProductCatalogues]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Market_ProductCatalogue'
CREATE INDEX [IX_FK_Market_ProductCatalogue]
ON [dbo].[Markets]
    ([ProductCatalogueCode]);
GO

-- Creating foreign key on [MarketCode] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [FK_Route_Market]
    FOREIGN KEY ([MarketCode])
    REFERENCES [dbo].[Markets]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Route_Market'
CREATE INDEX [IX_FK_Route_Market]
ON [dbo].[Routes]
    ([MarketCode]);
GO

-- Creating foreign key on [ProductCatalogueCode] in table 'MinConnectTimeAcceptanceRules'
ALTER TABLE [dbo].[MinConnectTimeAcceptanceRules]
ADD CONSTRAINT [FK_MinConnectTimeAcceptanceRule_ProductCatalogue]
    FOREIGN KEY ([ProductCatalogueCode])
    REFERENCES [dbo].[ProductCatalogues]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MinConnectTimeAcceptanceRule_ProductCatalogue'
CREATE INDEX [IX_FK_MinConnectTimeAcceptanceRule_ProductCatalogue]
ON [dbo].[MinConnectTimeAcceptanceRules]
    ([ProductCatalogueCode]);
GO

-- Creating foreign key on [RouteCode] in table 'OperatingLegs'
ALTER TABLE [dbo].[OperatingLegs]
ADD CONSTRAINT [FK_OperatingLeg_Route]
    FOREIGN KEY ([RouteCode])
    REFERENCES [dbo].[Routes]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OperatingLeg_Route'
CREATE INDEX [IX_FK_OperatingLeg_Route]
ON [dbo].[OperatingLegs]
    ([RouteCode]);
GO

-- Creating foreign key on [ProductCode] in table 'ProductToAncillaries'
ALTER TABLE [dbo].[ProductToAncillaries]
ADD CONSTRAINT [FK_ProductToAncillary_Product]
    FOREIGN KEY ([ProductCode])
    REFERENCES [dbo].[Products]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductToAncillary_Product'
CREATE INDEX [IX_FK_ProductToAncillary_Product]
ON [dbo].[ProductToAncillaries]
    ([ProductCode]);
GO

-- Creating foreign key on [ProductCode] in table 'TransportVehicleToProducts'
ALTER TABLE [dbo].[TransportVehicleToProducts]
ADD CONSTRAINT [FK_TransportVehicleToProducts_Product]
    FOREIGN KEY ([ProductCode])
    REFERENCES [dbo].[Products]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransportVehicleToProducts_Product'
CREATE INDEX [IX_FK_TransportVehicleToProducts_Product]
ON [dbo].[TransportVehicleToProducts]
    ([ProductCode]);
GO

-- Creating foreign key on [ProductCatalogueCode] in table 'Settlements'
ALTER TABLE [dbo].[Settlements]
ADD CONSTRAINT [FK_Settlement_ProductCatalogue]
    FOREIGN KEY ([ProductCatalogueCode])
    REFERENCES [dbo].[ProductCatalogues]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Settlement_ProductCatalogue'
CREATE INDEX [IX_FK_Settlement_ProductCatalogue]
ON [dbo].[Settlements]
    ([ProductCatalogueCode]);
GO

-- Creating foreign key on [ProductCatalogueCode] in table 'TransportVehicles'
ALTER TABLE [dbo].[TransportVehicles]
ADD CONSTRAINT [FK_TransportVehicle_ProductCatalogue]
    FOREIGN KEY ([ProductCatalogueCode])
    REFERENCES [dbo].[ProductCatalogues]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransportVehicle_ProductCatalogue'
CREATE INDEX [IX_FK_TransportVehicle_ProductCatalogue]
ON [dbo].[TransportVehicles]
    ([ProductCatalogueCode]);
GO

-- Creating foreign key on [SeatMap] in table 'SeatAttributes'
ALTER TABLE [dbo].[SeatAttributes]
ADD CONSTRAINT [FK_SeatAttribute_SeatMap]
    FOREIGN KEY ([SeatMap])
    REFERENCES [dbo].[SeatMaps]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SeatAttribute_SeatMap'
CREATE INDEX [IX_FK_SeatAttribute_SeatMap]
ON [dbo].[SeatAttributes]
    ([SeatMap]);
GO

-- Creating foreign key on [TransportVehicleCode], [ProductCode] in table 'SeatMaps'
ALTER TABLE [dbo].[SeatMaps]
ADD CONSTRAINT [FK_SeatMap_TransportVehicleToProducts]
    FOREIGN KEY ([TransportVehicleCode], [ProductCode])
    REFERENCES [dbo].[TransportVehicleToProducts]
        ([TransportVehicleCode], [ProductCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SeatMap_TransportVehicleToProducts'
CREATE INDEX [IX_FK_SeatMap_TransportVehicleToProducts]
ON [dbo].[SeatMaps]
    ([TransportVehicleCode], [ProductCode]);
GO

-- Creating foreign key on [TransportVehicleCode] in table 'TransportVehicleToProducts'
ALTER TABLE [dbo].[TransportVehicleToProducts]
ADD CONSTRAINT [FK_TransportVehicleToProducts_TransportVehicle]
    FOREIGN KEY ([TransportVehicleCode])
    REFERENCES [dbo].[TransportVehicles]
        ([Code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------