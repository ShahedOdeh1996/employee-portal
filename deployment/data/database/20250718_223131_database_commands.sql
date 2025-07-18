CREATE TABLE "myfirstmodule$department_account" (
	"myfirstmodule$departmentid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$departmentid","administration$accountid"),
	CONSTRAINT "uniq_myfirstmodule$department_account_administration$accountid" UNIQUE ("administration$accountid"),
	CONSTRAINT "uniq_myfirstmodule$department_account_myfirstmodule$departmentid" UNIQUE ("myfirstmodule$departmentid"));
CREATE INDEX "idx_myfirstmodule$department_account_administration$account_myfirstmodule$department" ON "myfirstmodule$department_account" ("administration$accountid" ASC,"myfirstmodule$departmentid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('5a335aef-86ea-45e8-b015-4f5fdd587e33', 
'MyFirstModule.Department_Account', 
'myfirstmodule$department_account', 
'2ef49ca9-ba88-457a-8dbd-0177a9b24356', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'myfirstmodule$departmentid', 
'administration$accountid', 
'idx_myfirstmodule$department_account_administration$account_myfirstmodule$department');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$department_account_administration$accountid', 
'5a335aef-86ea-45e8-b015-4f5fdd587e33', 
'91dbe460-4a52-3aa1-a1ee-5bf166c18791');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$department_account_myfirstmodule$departmentid', 
'5a335aef-86ea-45e8-b015-4f5fdd587e33', 
'fdf6f48d-858a-36d3-b1fc-5a26c78485a0');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20250718 22:31:31';
