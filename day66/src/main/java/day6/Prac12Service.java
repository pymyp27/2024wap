package day6;

import java.util.ArrayList;

public class Prac12Service {
	public ArrayList<Book> getBookList(){
		ArrayList<Book> list =new ArrayList<>();
		list.add(new Book("뇌","베르나르",9000));
		list.add(new Book("시","양세형",15000));
		list.add(new Book("자바의정석","남궁성",9000));
		return list;
		
		
	}

}
