-- begin SESSIONPLANNER_SPEAKER
create table SESSIONPLANNER_SPEAKER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    FIRST_NAME varchar(255) not null,
    PHOTO_ID uuid,
    LAST_NAME varchar(255),
    EMAIL varchar(255) not null,
    --
    primary key (ID)
)^
-- end SESSIONPLANNER_SPEAKER
-- begin SESSIONPLANNER_SESSION
create table SESSIONPLANNER_SESSION (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TOPIC varchar(255) not null,
    START_DATE timestamp not null,
    END_DATE timestamp,
    SPEAKER_ID uuid not null,
    DESCRIPTION varchar(2000),
    --
    primary key (ID)
)^
-- end SESSIONPLANNER_SESSION
