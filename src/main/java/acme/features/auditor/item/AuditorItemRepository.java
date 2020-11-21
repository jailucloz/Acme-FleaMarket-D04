
package acme.features.auditor.item;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.items.Item;
import acme.framework.repositories.AbstractRepository;

public interface AuditorItemRepository extends AbstractRepository {

	@Query("select i from Item i where i.id=?1")
	Item findOneItemById(int id);

	@Query("select i from Item i where not exists(select a from AuditRecord a where a.item.id = i.id and a.auditor.id = ?1)")
	Collection<Item> findManyNotWrittenByAuditor(int auditorId);

	@Query("select i from AuditRecord a join a.item i where a.auditor.id = ?1")
	Collection<Item> findManyWrittenByAuditor(int auditorId);
}
