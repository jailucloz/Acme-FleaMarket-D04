
package acme.entities.forums;

import java.util.Collection;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import acme.entities.items.Item;
import acme.entities.messages.Message;
import acme.framework.entities.Authenticated;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Forum extends DomainEntity {

	private static final long			serialVersionUID	= 1L;

	@NotBlank
	private String						title;

	@NotNull
	@Valid
	@ManyToMany
	private Collection<Authenticated>	users;

	@Valid
	@OneToOne(optional = false)
	private Item						item;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "forum")
	private Set<Message>				messages;
}
