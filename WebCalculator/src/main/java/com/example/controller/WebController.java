package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.configuration.CalculatorConfiguration;

@Controller
public class WebController {
	
	@Autowired
	private CalculatorConfiguration calculatorConfig;
	
	@RequestMapping("/")
	public String home()
	{
		return "home";	
	}
	
	@GetMapping("/calculator")
	public String showCalculator(Model model, Operation operation)
	{
		model.addAttribute("operation", operation);
		
		return "operation_before";
	}
	
	@PostMapping("/calculator")
	public String showPostCalculator(@ModelAttribute("operation") Operation operations)
	{
		
		try {
			String result = calculatorConfig.calculator(operations.getA(), operations.getB(), operations.getOp());
			operations.setResult(result);
			System.out.println(result);
		
			return "operation_after";
		}
		catch(Exception exception)
		{
			return "operation_failed";
		}
			
	}
		
}


