package edu.uoc.practica.bd.uocdb.exercise1;

public class Exercise1Row {

	private int id_dog;
	private String name_dog;
	private int num_visits;
	private int num_dif_vaccines;
	private String date_last_vaccine;
	private int num_drugs;
	private int num_tests;

	public Exercise1Row(int id_dog,
			String name_dog,
			int num_visits,
			int num_dif_vaccines,
			String date_last_vaccine,
			int num_drugs,
			int num_tests
			) {
		super();
		this.id_dog = id_dog;
		this.name_dog = name_dog;
		this.num_visits = num_visits;
		this.num_dif_vaccines = num_dif_vaccines;
		this.date_last_vaccine = date_last_vaccine;
		this.num_drugs = num_drugs;
		this.num_tests = num_tests;
	}

	public int get_id_dog() {
		return id_dog;
	}

	public String get_name_dog() {
		return name_dog;
	}

	public int get_num_visits() {
		return num_visits;
	}

	public int get_num_dif_vaccines() {
		return num_dif_vaccines;
	}

	public String get_date_last_vaccine() {
		return date_last_vaccine;
	}

	public int get_num_drugs() {
		return num_drugs;
	}

	public int get_num_tests() {
		return num_tests;
	}
}
