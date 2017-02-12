package ts.webapp.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import ts.webapp.spring.services.ItemService;

@RestController("/items")
public class ItemController {
	
	@Autowired
	private ItemService service;
	
	
	

}
