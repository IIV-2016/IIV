package io.itupo.iiv.domain;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class IivBean {
	private int boardId;
	private String title;
	private String content;
	private String name;
	private Date writeDate;
	private int views;
}