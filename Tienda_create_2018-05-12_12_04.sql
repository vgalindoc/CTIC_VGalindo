-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-05-12 16:33:07.959

-- tables
-- Table: Carrito
CREATE TABLE Carrito (
    ID_Carrito int  NOT NULL,
    DNI int  NOT NULL,
    ID_Item int  NOT NULL,
    CONSTRAINT Carrito_pk PRIMARY KEY  (ID_Carrito)
);

-- Table: Carrito_MetCompra
CREATE TABLE Carrito_MetCompra (
    ID_MetCompra int  NOT NULL,
    Carrito_ID_Carrito int  NOT NULL
);

-- Table: Carrito_MetPago
CREATE TABLE Carrito_MetPago (
    ID_MetPago int  NOT NULL,
    ID_Carrito int  NOT NULL
);

-- Table: Carrito_item
CREATE TABLE Carrito_item (
    ID Item int  NOT NULL,
    ID Carrito int  NOT NULL
);

-- Table: Cliente
CREATE TABLE Cliente (
    DNI int  NOT NULL,
    Nombre1 int  NOT NULL,
    Nombre2 int  NOT NULL,
    Apellido1 int  NOT NULL,
    Apellido2 int  NOT NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY  (DNI)
);

-- Table: Item_Proveedor
CREATE TABLE Item_Proveedor (
    RUC int  NOT NULL,
    ID_Item int  NOT NULL,
    Precio_compra int  NOT NULL
);

-- Table: Items
CREATE TABLE Items (
    ID int  NOT NULL,
    Descripcion int  NOT NULL,
    Color int  NOT NULL,
    Precio_venta int  NOT NULL,
    CONSTRAINT Items_pk PRIMARY KEY  (ID)
);

-- Table: Metodo de Compra
CREATE TABLE Metodo de Compra (
    ID int  NOT NULL,
    Descripcion int  NOT NULL,
    Tipo int  NOT NULL,
    Direccion int  NOT NULL,
    CONSTRAINT Metodo de Compra_pk PRIMARY KEY  (ID)
);

-- Table: Metodo de Pago
CREATE TABLE Metodo de Pago (
    ID_MetPago int  NOT NULL,
    Descripcion int  NOT NULL,
    CONSTRAINT Metodo de Pago_pk PRIMARY KEY  (ID_MetPago)
);

-- Table: Proveedor
CREATE TABLE Proveedor (
    RUC int  NOT NULL,
    Nombre int  NOT NULL,
    Direccion int  NOT NULL,
    CONSTRAINT RUC PRIMARY KEY  (RUC)
);

-- foreign keys
-- Reference: Carrito_Clinte (table: Carrito)
ALTER TABLE Carrito ADD CONSTRAINT Carrito_Clinte
    FOREIGN KEY (DNI)
    REFERENCES Cliente (DNI);

-- Reference: Carrito_MetCompra_Carrito (table: Carrito_MetCompra)
ALTER TABLE Carrito_MetCompra ADD CONSTRAINT Carrito_MetCompra_Carrito
    FOREIGN KEY (Carrito_ID_Carrito)
    REFERENCES Carrito (ID_Carrito);

-- Reference: Carrito_MetCompra_Metodo de Compra (table: Carrito_MetCompra)
ALTER TABLE Carrito_MetCompra ADD CONSTRAINT Carrito_MetCompra_Metodo de Compra
    FOREIGN KEY (ID_MetCompra)
    REFERENCES Metodo de Compra (ID);

-- Reference: Carrito_MetPago_Metodo de Pago (table: Carrito_MetPago)
ALTER TABLE Carrito_MetPago ADD CONSTRAINT Carrito_MetPago_Metodo de Pago
    FOREIGN KEY (ID_MetPago)
    REFERENCES Metodo de Pago (ID_MetPago);

-- Reference: Carrito_item_Carrito (table: Carrito_item)
ALTER TABLE Carrito_item ADD CONSTRAINT Carrito_item_Carrito
    FOREIGN KEY (ID Carrito)
    REFERENCES Carrito (ID_Carrito);

-- Reference: Carrito_item_Items (table: Carrito_item)
ALTER TABLE Carrito_item ADD CONSTRAINT Carrito_item_Items
    FOREIGN KEY (ID Item)
    REFERENCES Items (ID);

-- Reference: Item_Proveedor_Items (table: Item_Proveedor)
ALTER TABLE Item_Proveedor ADD CONSTRAINT Item_Proveedor_Items
    FOREIGN KEY (ID_Item)
    REFERENCES Items (ID);

-- Reference: Item_Proveedor_Proveedor (table: Item_Proveedor)
ALTER TABLE Item_Proveedor ADD CONSTRAINT Item_Proveedor_Proveedor
    FOREIGN KEY (RUC)
    REFERENCES Proveedor (RUC);

-- Reference: MMetodo de Pago_Carrito (table: Carrito_MetPago)
ALTER TABLE Carrito_MetPago ADD CONSTRAINT MMetodo de Pago_Carrito
    FOREIGN KEY (ID_Carrito)
    REFERENCES Carrito (ID_Carrito);

-- End of file.

