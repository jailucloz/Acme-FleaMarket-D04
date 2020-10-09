
package acme.features.administrator.suggestions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.suggestions.Suggestion;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractShowService;

@Service
public class AdministratorSuggestionsShowService implements AbstractShowService<Administrator, Suggestion> {

	@Autowired
	private AdministratorSuggestionsRepository repository;


	@Override
	public boolean authorise(final Request<Suggestion> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Suggestion> request, final Suggestion entity, final Model model) {

		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "description", "email", "creationMoment");

	}

	@Override
	public Suggestion findOne(final Request<Suggestion> request) {
		assert request != null;

		Suggestion result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneById(id);

		return result;
	}

}
