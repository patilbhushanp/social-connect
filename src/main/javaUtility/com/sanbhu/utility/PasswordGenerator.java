package com.sanbhu.utility;

import java.util.Scanner;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordGenerator {

	public static void main(String[] args) {
		System.out.print("Enter Plain Password :");
		try(final Scanner scanner = new Scanner(System.in);){
			final String password = scanner.nextLine();
			final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			final String encodedPassword = passwordEncoder.encode(password);
			System.out.println("Plain Password :" + password);
			System.out.println("Encrypted Password :" + encodedPassword);
		}
	}

}
