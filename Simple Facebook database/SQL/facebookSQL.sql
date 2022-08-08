/*  simple facebook database design project */
CREATE database simpleFacebook ; 
show databases ;
/* create user table */ 
use simpleFacebook ;
CREATE TABLE user_profile(
	id int primary key ,
    email_address char(20),
    password char(20),
    country char(12),
    dateOfBarirthf char(12),
    given_name char(12),
    sub_name char(12)
) ;
/* user posts */
CREATE TABLE user_post(
	id int primary key ,
	profile_id int ,
    wiritten_text char(120),
    media_location char(30),
    created_date_media date,
    FOREIGN KEY (profile_id) REFERENCES user_profile(id)
);
/* user likes */ 
CREATE TABLE user_like(
	id int primary key, 
    post_id int ,
    profile_id int ,
    crated_date date ,
	FOREIGN KEY (profile_id) REFERENCES user_profile(id),
    FOREIGN KEY (post_id) REFERENCES user_post(id)
);
/* user comments  */
CREATE TABLE user_commet(
	id int primary key, 
    post_id int ,
    profile_id int ,
    comment_text char,
    crated_date date ,
	FOREIGN KEY (profile_id) REFERENCES user_profile(id),
    FOREIGN KEY (post_id) REFERENCES user_post(id)
);

/* Relation ship */
CREATE TABLE friendship(
	porfileReqest int ,
    profileAccept int , 
    FOREIGN KEY (porfileReqest) REFERENCES user_profile(id),
    FOREIGN KEY (profileAccept) REFERENCES user_profile(id)
);
