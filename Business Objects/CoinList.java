package Business;
import java.util.ArrayList;

public class CoinList {
	
	public int count;

	public ArrayList<Coins> cList = new ArrayList<Coins>();

	public void addCoin(Coins c1) {
		cList.add(count, c1);
		count++;
	}

	public void displayList() {
		for (int y = 0; y < cList.size(); y++) {
			cList.get(y).display();
		}
	}

	public static void main(String args[]) {
		CoinList list = new CoinList();
		Coins c2 = new Coins("Lincoln Penny", 1939, "None", .01, "P", 25.99, "Copper", "Penny");
		Coins c3 = new Coins("Jefferson Nickle", 1891, "1891", .05, "S", 49.99, "Silver", "Nickle");
		list.addCoin(c2);
		list.addCoin(c3);
		list.displayList();
	}

}