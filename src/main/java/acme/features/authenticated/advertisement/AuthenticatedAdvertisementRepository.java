
package acme.features.authenticated.advertisement;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.advertisements.Advertisement;
import acme.framework.repositories.AbstractRepository;

public interface AuthenticatedAdvertisementRepository extends AbstractRepository {

	@Query("select a from Advertisement a where a.id = ?1")
	Advertisement findOneById(int id);

	@Query("select a from Advertisement a where a.deadline > CURRENT_TIMESTAMP and a.initialTime < CURRENT_TIMESTAMP")
	Collection<Advertisement> findManyActive();

}
