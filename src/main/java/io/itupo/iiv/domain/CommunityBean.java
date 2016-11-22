package io.itupo.iiv.domain;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CommunityBean {
	private int id;
	private String sector;
	private String title;
	private String content;
	private int fileId;
	private int userId;
	private Date writeDate;
	private int views;
	private int likes;
	private String username;
}
