CREATE TABLE ��������� (
[��� ���������] INT NOT NULL PRIMARY KEY, 
����� NVARCHAR(15) NOT NULL, 
г� DATE NOT NULL, 
���������� FLOAT NOT NULL, 
[��� �������] NVARCHAR(15) NOT NULL, 
[��� ������] NVARCHAR(16) NOT NULL, 
����  NVARCHAR(25), 
���� FLOAT);

CREATE TABLE �볺��(
[��� �볺���] INT NOT NULL PRIMARY KEY, 
������� NVARCHAR(20) NOT NULL, 
[���] NVARCHAR(20) NOT NULL, 
[�� �������] NVARCHAR(23), 
[�����] NVARCHAR(10), 
[̳���] NVARCHAR(25) NOT NULL, 
������ NVARCHAR(35) NOT NULL,
������� NVARCHAR(5) NOT NULL,
������� INT NOT NULL);

CREATE TABLE ���������(
[��� ����������] INT NOT NULL PRIMARY KEY, 
������� NVARCHAR(20) NOT NULL, 
[���] NVARCHAR(20) NOT NULL, 
[�� �������] NVARCHAR(23), 
[�����] NVARCHAR(10), 
������ NVARCHAR(30) NOT NULL,  
������� INT NOT NULL);

CREATE TABLE ���(
[��� ���] INT NOT NULL PRIMARY KEY, 
����� NVARCHAR(30) NOT NULL,
���� VARCHAR(100), 
̳��� NVARCHAR(25) NOT NULL, 
������ NVARCHAR(35) NOT NULL,
������� NVARCHAR(5) NOT NULL,
������� INT NOT NULL,
����� VARCHAR(100));

CREATE TABLE ������(
[��� �����] INT NOT NULL PRIMARY KEY, 
����� NVARCHAR(25) NOT NULL,
������� MONEY NOT NULL,
�������� NVARCHAR(25));

CREATE TABLE ����������(
[��� ����������] INT NOT NULL PRIMARY KEY,
[��� �볺���] INT NOT NULL,
[��� ���������] INT NOT NULL,
[��� ����������] INT NOT NULL,
[��� ���] INT NOT NULL,
[��� �����] INT NOT NULL, 
[ʳ������ �������] INT NOT NULL,
[���� ����������] DATE NOT NULL,
FOREIGN KEY ([��� �볺���]) REFERENCES �볺��([��� �볺���]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ���������]) REFERENCES ���������([��� ���������]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ����������]) REFERENCES ���������([��� ����������]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ���]) REFERENCES ���([��� ���]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� �����]) REFERENCES ������([��� �����]) ON DELETE CASCADE ON UPDATE CASCADE);
