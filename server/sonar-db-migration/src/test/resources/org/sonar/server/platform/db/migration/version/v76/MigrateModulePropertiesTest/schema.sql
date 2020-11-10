CREATE TABLE "PROJECTS" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "KEE" VARCHAR(400),
  "UUID" VARCHAR(50) NOT NULL,
  "ROOT_UUID" VARCHAR(50),
  "PROJECT_UUID" VARCHAR(50) NOT NULL,
  "MODULE_UUID" VARCHAR(50),
  "MODULE_UUID_PATH" VARCHAR(1500),
  "MAIN_BRANCH_PROJECT_UUID" VARCHAR(50),
  "NAME" VARCHAR(2000),
  "TAGS" VARCHAR(500),
  "ENABLED" BOOLEAN NOT NULL DEFAULT TRUE,
  "SCOPE" VARCHAR(3),
  "QUALIFIER" VARCHAR(10)
);
CREATE UNIQUE INDEX "PROJECTS_KEE" ON "PROJECTS" ("KEE");
CREATE INDEX "PROJECTS_ROOT_UUID" ON "PROJECTS" ("ROOT_UUID");
CREATE UNIQUE INDEX "PROJECTS_UUID" ON "PROJECTS" ("UUID");
CREATE INDEX "PROJECTS_PROJECT_UUID" ON "PROJECTS" ("PROJECT_UUID");
CREATE INDEX "PROJECTS_MODULE_UUID" ON "PROJECTS" ("MODULE_UUID");
CREATE INDEX "PROJECTS_QUALIFIER" ON "PROJECTS" ("QUALIFIER");

CREATE TABLE "PROPERTIES" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "PROP_KEY" VARCHAR(512) NOT NULL,
  "RESOURCE_ID" INTEGER,
  "USER_ID" INTEGER,
  "TEXT_VALUE" VARCHAR(4000),
  "CLOB_VALUE" CLOB(2147483647),
  "CREATED_AT" BIGINT,
  "IS_EMPTY" BOOLEAN NOT NULL,
);
CREATE INDEX "PROPERTIES_KEY" ON "PROPERTIES" ("PROP_KEY");

