package hot.member.domain;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Embeddable
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Bathroom{
	
	
	@Column(name = "bathroom_number_of_rooms", table = "bathroom")
	private int bathroomNumberOfRooms;
	@Column(name = "bathroom_type", table = "bathroom")
	private int bathroomType;
	@Column(name = "bathroom_ceiling", table = "bathroom")
	private int bathroomCeiling;
	@Column(name = "bathroom_tile", table = "bathroom")
	private int bathroomTile;

}
