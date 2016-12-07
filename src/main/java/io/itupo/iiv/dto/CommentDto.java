package io.itupo.iiv.dto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CommentDto {
	private int id;
	private String table;
	private int postId;
	
	public CommentDto(String table, int postId) {
		this.table = table;
		this.postId = postId;
	}
	
	public CommentDto(int id, String table) {
		this.id = id;
		this.table = table;
	}
}
