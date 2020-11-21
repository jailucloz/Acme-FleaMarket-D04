
package acme.features.auditor.item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.items.Item;
import acme.entities.roles.Auditor;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.services.AbstractShowService;

@Service
public class AuditorItemShowService implements AbstractShowService<Auditor, Item> {

	@Autowired
	AuditorItemRepository repository;


	@Override
	public boolean authorise(final Request<Item> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Item> request, final Item entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;
		int itemId = request.getModel().getInteger("id");
		model.setAttribute("itemId", itemId);
		request.unbind(entity, model, "ticker", "title", "itemCategory", "creationMoment", "descriptionText", "price", "additionalInformation", "photo");
	}

	@Override
	public Item findOne(final Request<Item> request) {
		assert request != null;

		Item result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneItemById(id);

		return result;
	}

}
