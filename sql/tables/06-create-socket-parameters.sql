CREATE TABLE bots.SocketParameters
(
    Host VARCHAR(50),
    Port INT NOT NULL,
    Request JSONB NOT NULL, 
    Handshake VARCHAR(50),
    Channel VARCHAR(50) NOT NULL,
    Topic VARCHAR(50) NOT NULL, 
);
