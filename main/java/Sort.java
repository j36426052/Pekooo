import java.util.ArrayList;

public class Sort {
	private ArrayList<Game> games;
	
	public Sort(ArrayList<Game> games,int a) {
		this.games = games;
	}

	public void sort() {
		if (games.size() == 0) {
			System.out.println("Invalid Operation");
		} else {
			quickSort(0, games.size() - 1);
		}

	}

	private void quickSort(int leftbound, int rightbound) {
		if (leftbound < rightbound) {
			int partitionIndex = partition(leftbound, rightbound);
			quickSort(leftbound, partitionIndex - 1);
			quickSort(partitionIndex + 1, rightbound);
		}
	}

	private int partition(int leftbound, int rightbound) {
		Keyword pivot = games.get(rightbound).getKey();
		int i = (leftbound - 1);

		for (int j = leftbound; j < rightbound; j++) {
			if (games.get(j).getKey().getCount() >= pivot.getCount()) {
				i++;
				swap(i, j);
			}
		}
		swap(i + 1, rightbound);
		return i + 1;
	}

	private void swap(int aIndex, int bIndex) {
		Game temp = games.get(aIndex);
		games.set(aIndex, games.get(bIndex));
		games.set(bIndex, temp);
	}

	public void output() {
		for (Game game : games) {
			System.out.println("[" + game.getName() + "," + game.getKey().getCount() + "," + game.getPrices()+ "," + game.geturl()+ "]");
		}
	}
	
	public String output(int game,int type) {
		String result = "";
		if(type == 1) {
			result = games.get(game).getName();
		}else if(type == 2) {
			result = games.get(game).getPrices();
		}else if(type == 3) {
			result = games.get(game).geturl();
		}else {
			result = "null";
		}
		return result;
	}
}
