package Java;

import java.util.Scanner;

public class App {

  public static void main(String[] args) {

    Scanner scnr = new Scanner(System.in);

    String fullName = "";

    System.out.println("Please Enter Your Full Name:");

    fullName = scnr.nextLine();

    System.out.println("Hello " + fullName);

    scnr.close();
  }

}