CREATE TABLE "member" (
	"member_num"	number		NOT NULL,
	"id"	varchar2(50)		NULL,
	"password"	varchar2(50)		NULL,
	"nickname"	varchar2(50)		NULL,
	"email"	varchar2(50)		NULL,
	"birth_year"	number		NULL,
	"birth"	number		NULL,
	"regdate"	timestamp		NULL,
	"admin"	number		NULL
);

CREATE TABLE "board" (
	"board_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"place"	varchar2(50)		NULL,
	"content"	varchar2(2000)		NULL,
	"regdate"	timestamp		NULL,
	"tripdate"	date		NULL
);

CREATE TABLE "tag" (
	"tag_num"	number		NOT NULL,
	"board_num"	number		NOT NULL,
	"tag"	varchar2(12)		NULL
);

CREATE TABLE "board_img" (
	"board_img_num"	number		NOT NULL,
	"board_num"	number		NOT NULL,
	"org_file_name"	varchar2(260)		NULL,
	"store_file_name"	varchar2(36)		NULL,
	"file_size"	number		NULL,
	"file_type"	varchar2(10)		NULL,
	"main_img"	number		NULL
);

CREATE TABLE "profile" (
	"member_num"	number		NOT NULL,
	"message"	varchar2(100)		NULL,
	"emblem_name"	varchar2(50)		NULL
);

CREATE TABLE "profile_img" (
	"member_num"	number		NOT NULL,
	"org_file_name"	varchar2(260)		NULL,
	"store_file_name"	varchar2(36)		NULL,
	"file_size"	number		NULL,
	"file_type"	varchar2(10)		NULL
);

CREATE TABLE "map" (
	"map_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"marker_lon"	number		NULL,
	"marker_lat"	number		NULL,
	"marker_text"	varchar2(50)		NULL
);

CREATE TABLE "emblem" (
	"emblem_num"	number		NOT NULL,
	"emblem_name"	varchar2(50)		NULL,
	"emblem_explain"	varchar2(100)		NULL
);

CREATE TABLE "emblem_get" (
	"emblem_get_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"emblem_num"	number		NOT NULL
);

CREATE TABLE "chatting" (
	"chatting_num"	number		NOT NULL,
	"send"	varchar2(50)		NULL,
	"receive"	verchar2(50)		NULL,
	"date"	timestamp		NULL,
	"content"	varchar2(200)		NULL
);

CREATE TABLE "comment" (
	"commnet_num"	number		NOT NULL,
	"board_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"regdate"	timestamp		NULL
);

CREATE TABLE "report_member" (
	"report_member_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"report_type"	varchar2(100)		NULL
);

CREATE TABLE "report_comment" (
	"report_commnet_num"	number		NOT NULL,
	"commnet_num"	number		NOT NULL,
	"report_send"	varchar2(50)		NULL,
	"report_receive"	varchar2(50)		NULL,
	"report_content"	varchar2(100)		NULL,
	"report_type"	varchar2(100)		NULL,
	"report_date"	timestamp		NULL
);

CREATE TABLE "report_board" (
	"report_board_num"	number		NOT NULL,
	"board_num"	number		NOT NULL,
	"report_send"	varchar2(50)		NULL,
	"report_receive"	varchar2(50)		NULL,
	"report_type"	varchar2(100)		NULL,
	"report_content"	varchar2(100)		NULL,
	"report_date"	timestamp		NULL
);

CREATE TABLE "pick" (
	"pick_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"board_num"	number		NOT NULL
);

CREATE TABLE "like" (
	"like_num"	number		NOT NULL,
	"member_num"	number		NOT NULL,
	"board_num"	number		NOT NULL
);

CREATE TABLE "report_cnt" (
	"member_num"	number		NOT NULL,
	"report_com_cnt"	number		NULL,
	"report_cnt"	number		NULL,
	"warning_cnt"	number		NULL
);

CREATE TABLE "calender" (

);

ALTER TABLE "member" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"member_num"
);

ALTER TABLE "board" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"board_num"
);

ALTER TABLE "tag" ADD CONSTRAINT "PK_TAG" PRIMARY KEY (
	"tag_num"
);

ALTER TABLE "board_img" ADD CONSTRAINT "PK_BOARD_IMG" PRIMARY KEY (
	"board_img_num"
);

ALTER TABLE "profile" ADD CONSTRAINT "PK_PROFILE" PRIMARY KEY (
	"member_num"
);

ALTER TABLE "profile_img" ADD CONSTRAINT "PK_PROFILE_IMG" PRIMARY KEY (
	"member_num"
);

ALTER TABLE "map" ADD CONSTRAINT "PK_MAP" PRIMARY KEY (
	"map_num"
);

ALTER TABLE "emblem" ADD CONSTRAINT "PK_EMBLEM" PRIMARY KEY (
	"emblem_num"
);

ALTER TABLE "emblem_get" ADD CONSTRAINT "PK_EMBLEM_GET" PRIMARY KEY (
	"emblem_get_num"
);

ALTER TABLE "chatting" ADD CONSTRAINT "PK_CHATTING" PRIMARY KEY (
	"chatting_num"
);

ALTER TABLE "comment" ADD CONSTRAINT "PK_COMMENT" PRIMARY KEY (
	"commnet_num"
);

ALTER TABLE "report_member" ADD CONSTRAINT "PK_REPORT_MEMBER" PRIMARY KEY (
	"report_member_num"
);

ALTER TABLE "report_comment" ADD CONSTRAINT "PK_REPORT_COMMENT" PRIMARY KEY (
	"report_commnet_num"
);

ALTER TABLE "report_board" ADD CONSTRAINT "PK_REPORT_BOARD" PRIMARY KEY (
	"report_board_num"
);

ALTER TABLE "pick" ADD CONSTRAINT "PK_PICK" PRIMARY KEY (
	"pick_num"
);

ALTER TABLE "like" ADD CONSTRAINT "PK_LIKE" PRIMARY KEY (
	"like_num"
);

ALTER TABLE "report_cnt" ADD CONSTRAINT "PK_REPORT_CNT" PRIMARY KEY (
	"member_num"
);

ALTER TABLE "profile" ADD CONSTRAINT "FK_member_TO_profile_1" FOREIGN KEY (
	"member_num"
)
REFERENCES "member" (
	"member_num"
);

ALTER TABLE "profile_img" ADD CONSTRAINT "FK_member_TO_profile_img_1" FOREIGN KEY (
	"member_num"
)
REFERENCES "member" (
	"member_num"
);

ALTER TABLE "report_cnt" ADD CONSTRAINT "FK_member_TO_report_cnt_1" FOREIGN KEY (
	"member_num"
)
REFERENCES "member" (
	"member_num"
);

