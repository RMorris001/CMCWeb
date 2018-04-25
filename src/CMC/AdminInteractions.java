package CMC;

import java.util.*;

/**
 * AdminInteractions is the interface for the Admin Functionalites
 * 
 * @author Richard Morris
 * @version February 26, 2018
 */
public class AdminInteractions {
	private AdminFunctionalityController afHome;
	private DBController dbHome;
	private Account currentAdmin;
	private boolean isLoggedOn;

	public AdminInteractions(Account logAccount) {
		// currentAdmin =
		isLoggedOn = true;
		afHome = new AdminFunctionalityController(logAccount);
	}

	public void adminMenu() {

		int selection;
		String selection2, selection3, selection4;

		Scanner input = new Scanner(System.in);

		System.out.println("Choose from these choices");
		System.out.println("-------------------------\n");
		System.out.println("1 - View School ");
		System.out.println("2 - View Schools ");
		System.out.println("3 - Add New School ");
		System.out.println("4 - View Accounts ");
		System.out.println("5 - Add New User ");
		System.out.println("6 - Deactivate User ");
		System.out.println("7 - View Account ");

		selection = input.nextInt();

		switch (selection) {
		case 1:
			System.out.println("You picked option 1: View School ");
			Scanner in = new Scanner(System.in);
			System.out.println("Enter the School Name you want to view: ");
			selection2 = in.nextLine();
			viewSchool(selection2);
			in.close();

		case 2:
			System.out.println("You picked option 2: View All Schools");
			viewSchools();

		case 3:
			System.out.println("You picked option 3: Add New School");
			School school = newSchool();
			addNewSchool(school);
		case 4:
			System.out.println("You picked option 4: View All Accounts");
			viewAccounts();
		case 5:
			System.out.println("You picked option 5: Add New Account");
			newAccount();
			Account account = newAccount();
			addNewAccount(account);

		case 6:
			System.out.println("You picked option 6: Deactivate User");
			Scanner in2 = new Scanner(System.in);
			System.out.println("Enter the Account Username you want to deactivate: ");
			selection3 = in2.nextLine();
			User toggledUser = getUser(selection3);
			deactivateAccount(toggledUser);
			in2.close();
		case 7:
			System.out.println("You picked option 7: View Account ");
			Scanner in3 = new Scanner(System.in);
			System.out.println("Enter the Account Username you want to view: ");
			selection4 = in3.nextLine();
			viewAccount(selection4);
			in3.close();

		default:
			System.out.println("Unrecognized option");
			break;
		}
		input.close();
	}
	
	public School viewSchool(String name) {
		return afHome.viewSchool(name);
}

	public ArrayList<School> viewSchools() {
		return afHome.viewSchools();
	}

	public void addNewSchool(School school) {
		afHome.addNewSchool(school);
	}
	
	public void removeSchool(School school) {
		afHome.removeSchool(school);
	}

	public School newSchool() {
		Scanner input2 = new Scanner(System.in);
		String name = input2.nextLine();
		String state = input2.nextLine();
		String location = input2.nextLine();
		String control = input2.nextLine();
		int numStudents = input2.nextInt();
		double percentFemale = input2.nextDouble();
		int verbalSAT = input2.nextInt();
		int mathSAT = input2.nextInt();
		double expense = input2.nextDouble();
		double percentFinAid = input2.nextDouble();
		int numApplicants = input2.nextInt();
		double percentAdmit = input2.nextDouble();
		double percentEnroll = input2.nextDouble();
		int academicScale = input2.nextInt();
		int socialScale = input2.nextInt();
		int qualityLifeScale = input2.nextInt();
		ArrayList<String> areasOfStudy = new ArrayList<String>();

		School newSchool = new School(name, state, location, control, numStudents, percentFemale, verbalSAT, mathSAT,
				expense, percentFinAid, numApplicants, percentAdmit, percentEnroll, academicScale, socialScale,
				qualityLifeScale, areasOfStudy);

		input2.close();
		return newSchool;

	}

	public ArrayList<Account> viewAccounts() {
		return afHome.viewAccounts();
	}

	public Account newAccount() {
		Scanner input3 = new Scanner(System.in);
		String username = input3.nextLine();
		String password = input3.nextLine();
		String first = input3.nextLine();
		String last = input3.nextLine();
		String typeString = input3.nextLine();
		char type = typeString.charAt(0);
		String statusString = input3.nextLine();
		char status = statusString.charAt(0);

		Account newAccount = new Account(username, password, first, last, type, status);
		input3.close();
		return newAccount;

	}

	public Account newAccount(String username, String password, String first, String last, char type, char status) {
		Account newAccount = new Account(username, password, first, last, type, status);
		return newAccount;
	}

	public void addNewAccount(Account account) {
		afHome.addNewAccount(account);
	}

	public void deactivateAccount(User activeUser) {
		afHome.toggleActivation(activeUser);
	}

	public void viewAccount(String userName) {
		afHome.viewAccount(userName);
	}

	public User getUser(String userName) {
		Account account = afHome.viewAccount(userName);
		User curUser = dbHome.getUser(account.getUsername());
		return curUser;

	}

	public boolean deleteAccount(Account account) {
		return afHome.deleteAccount(account);
	}

}