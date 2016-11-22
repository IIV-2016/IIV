package io.itupo.iiv.domain;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ActivityBean {
	private int id;
	private String sector;
	private String title;
	private String content;
	private String fileId;
	private int userId;
	private Date writeDate;
	private int views;
	private int likes;
	private String username;
}