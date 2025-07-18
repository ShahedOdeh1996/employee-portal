ALTER TABLE "myfirstmodule$employee_department" DROP CONSTRAINT "uniq_myfirstmodule$employee_department_myfirstmodule$employeeid";
DROP INDEX "idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee";
ALTER TABLE "myfirstmodule$employee_department" RENAME TO "743f5da8ab4844439659b6944b8b0dda";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '1c696e27-0648-4698-bedd-7c3ceae85fe7';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_myfirstmodule$employee_department_myfirstmodule$employeeid';
CREATE TABLE "myfirstmodule$employee_account" (
	"myfirstmodule$employeeid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$employeeid","administration$accountid"),
	CONSTRAINT "uniq_myfirstmodule$employee_account_administration$accountid" UNIQUE ("administration$accountid"),
	CONSTRAINT "uniq_myfirstmodule$employee_account_myfirstmodule$employeeid" UNIQUE ("myfirstmodule$employeeid"));
CREATE INDEX "idx_myfirstmodule$employee_account_administration$account_myfirstmodule$employee" ON "myfirstmodule$employee_account" ("administration$accountid" ASC,"myfirstmodule$employeeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('25e26a5c-0ed7-4fe3-bfc7-66c9d2e6f8df', 
'MyFirstModule.Employee_Account', 
'myfirstmodule$employee_account', 
'c4098a5e-4245-4fd4-bbc2-37a137731f0c', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'myfirstmodule$employeeid', 
'administration$accountid', 
'idx_myfirstmodule$employee_account_administration$account_myfirstmodule$employee');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$employee_account_administration$accountid', 
'25e26a5c-0ed7-4fe3-bfc7-66c9d2e6f8df', 
'10842362-f790-314b-803e-7ef0fae5105b');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$employee_account_myfirstmodule$employeeid', 
'25e26a5c-0ed7-4fe3-bfc7-66c9d2e6f8df', 
'd74efd18-78e2-37aa-88c3-10f992140e19');
CREATE TABLE "myfirstmodule$employee_department" (
	"myfirstmodule$employeeid" BIGINT NOT NULL,
	"myfirstmodule$departmentid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$employeeid","myfirstmodule$departmentid"),
	CONSTRAINT "uniq_myfirstmodule$employee_department_myfirstmodule$employeeid" UNIQUE ("myfirstmodule$employeeid"));
CREATE INDEX "idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee" ON "myfirstmodule$employee_department" ("myfirstmodule$departmentid" ASC,"myfirstmodule$employeeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('72356165-6b62-4b1f-b738-bdb57fa56a66', 
'MyFirstModule.Employee_Department', 
'myfirstmodule$employee_department', 
'c4098a5e-4245-4fd4-bbc2-37a137731f0c', 
'2ef49ca9-ba88-457a-8dbd-0177a9b24356', 
'myfirstmodule$employeeid', 
'myfirstmodule$departmentid', 
'idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$employee_department_myfirstmodule$employeeid', 
'72356165-6b62-4b1f-b738-bdb57fa56a66', 
'a5f60754-0460-3740-ba77-2bc44692644f');
DROP TABLE "743f5da8ab4844439659b6944b8b0dda";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20250718 19:26:19';
