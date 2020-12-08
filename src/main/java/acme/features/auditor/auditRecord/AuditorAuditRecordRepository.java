
package acme.features.auditor.auditRecord;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditRecords.AuditRecord;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuditorAuditRecordRepository extends AbstractRepository {

	@Query("select ar from AuditRecord ar where (ar.item.id =?1 and ar.auditor.id =?2)")
	Collection<AuditRecord> findManyByItemIdAndAuditorId(int itemId, int auditorId);

	@Query("select ar from AuditRecord ar where (ar.item.id =?1 and ar.auditor.id != ?2)")
	Collection<AuditRecord> findManyByItemIdAndNotAuditorId(int itemId, int auditorId);

	@Query("select ar from AuditRecord ar where ar.auditor.id =?1")
	Collection<AuditRecord> findManyByAuditorId(int auditorId);

	@Query("select ar from AuditRecord ar where ar.id = ?1")
	AuditRecord findOneById(int id);

}
