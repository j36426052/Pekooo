package PPeko;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Search {
	
	private String keyword;
	private ArrayList<Game> games;
	private int resultNum;
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Search() {
		
	}
	
	public void print(String key) {
		System.out.println(key);
	}
	
	public String output(int game,int type) {
		String result = "";
		if(type == 1) {
			result = games.get(game).getName();
		}else if(type == 2) {
			result = games.get(game).getPrices();
		}else if(type == 3) {
			result = games.get(game).geturl();
		}else if(type == 4){
			result = (games.get(game).getKey().getCount()+10)+ "";
		}else if(type == 51){
			result = games.get(game).getChild(0) + "";
		}else if(type == 52){
			result = games.get(game).getChild(1) + "";
		}else if(type == 53){
			result = games.get(game).getChild(2) + "";
		}else{
			result = "null";
		}
		return result;
	}
	
	public String printAllArea() {
		String result = "";
		if(resultNum != 0) {
			for(int i = 0;i<resultNum;i++) {
				result += printArea(i);
			}
			return result;
		}else{
			result += "<div class=\"resultlist\">\n";
			result += "		<div class=\"chunk\">\n";
			result += "			<div class=\"gamename\">"+"查無遊戲"+"</div>\n";
			result += "		</div>\n";
			result += "</div>\n \n";
			return result;
		}
	}
	
	public String printArea(int game) {
		
		String result = "";
		result += "<div class=\"resultlist\">\n";
		result += "	<a href= " + output(game, 3) +"> \n";
		result += "		<div class=\"chunk\">\n";
		result += "			<div class=\"gamename\">"+output(game, 1)+"</div>\n";
		result += "			<div class=\"gameprice\">"+output(game, 2)+"</div><br>\n";
		//result += "			<div class=\"gametags\">Tag1 Tag2 Tag3</div>\n";
		result += "		</div>\n";
		result += "	</a>\n";
		result += "	<div class=\"scorearea\">\n";
		result += "		<div class=\"mainscore\">總分數：<span class=\"score\">"+output(game, 4)+"</span>分</div><br>\n";
		result += "		<div class=\"subscore\">子網頁1：<span class=\"score\">"+output(game, 51)+"</span>分</div><br>\n";
		result += "		<div class=\"subscore\">子網頁2：<span class=\"score\">"+output(game, 52)+"</span>分</div><br>\n";
		result += "		<div class=\"subscore\">子網頁3：<span class=\"score\">"+output(game, 53)+"</span>分</div><br>\n";
		result += "	</div>\n";
		result += "</div>\n \n";
		
		
		//System.out.print(result);
		return result;
	}
	
	public void gogogo(String peko) throws IOException {
		if(peko == "") {
			return;
		}
		//System.out.println(peko);
		if(peko.contains("蜘蛛人")) {
			keyword ="spider man";
		}else if(peko.contains("蝙蝠俠")) {
			keyword ="Batman";
		}else {
			keyword = new String(peko.getBytes("iso-8859-1"),"UTF-8");
		}
		
		if(keyword.contains("蜘蛛人")) {
			keyword ="spider man";
		}else if(keyword.contains("蝙蝠俠")) {
			keyword ="Batman";
		}
		
		//this.keyword = keword;
		ArrayList<Game> gameList = new ArrayList<Game>();
		Scanner scanner = new Scanner(System.in);
		
		
		GoogleQuery g = new GoogleQuery(keyword);
		
		//把輸入的用進URL
		
		//String[] kewordListG = g.query();
		String[] keywordList = keyword.split(" ");
		//String URL1 = "https://www.metacritic.com/search/game/";
		String URL1 = "https://store.steampowered.com/search/?term=";
		String URL2 = keywordList[0];
		String URLG = "https://www.google.com/search?q=" + keywordList[0];
		
		for (int i = 1; i < keywordList.length; i++) {
			URL2 += "%20" + keywordList[i];
			URLG += "+" + keywordList[i];
		}
		
		URLG += "+PC+game";
		String URLG1 = URLG + "&start=10";
		String URLG2 = URLG + "&start=20";
		String URLG3 = URLG + "&start=30";
		String URLG4 = URLG + "&start=40";
		//String URL3 = "/results?plats[3]=1&search_type=advanced";
		
		//String URL = URL1 + URL2 + URL3;
		String URL = URL1 + URL2;
		
		//連進 steam網站，抓取目標遊戲名稱還有URL
		//URL = "https://store.steampowered.com/search/?term=";
		Connection con1 = Jsoup.connect(URL);
		System.out.println("Now connecting to " + URL);

		//取得 html
		Document html1 = con1.get();
		
		
		//取的每個遊戲的名字 和 url
		Elements urls = html1.select("div#search_resultsRows a");
		Elements names = html1.select("span.title");
		Elements prices = html1.select("div.col.search_price.responsive_secondrow");
		
		int ac=0,bc=0,cc=0;
		
		//System.out.println(names);
		
		for (Element e : names) {
			ac++;
			String name = e.text();
			gameList.add(new Game(name));
		}
		
		for (Element e : urls) {
			bc++;
			String url = e.attr("href");
			gameList.get(bc-1).setURL(url);
		}
		
		for (Element e : prices) {
			cc++;
			String price = e.text();
			gameList.get(cc-1).setPrices(price);
		}
		
		resultNum = cc;
		//把url 變成 game
		
		//連進google
		System.out.println("Connection 1 completed\nNow connecting to " + URLG);
		Connection con2 = Jsoup.connect(URLG);

		Document html2 = con2.get();
		
		//每個子網頁的名稱
		String dataG = "";
		
		//抓google搜尋結果的網頁
		Elements childURL = html2.select("div.yuRUbf>a[href]");
		int a = 0;
		String[] childPage = {"","",""};
		
		for (Element e : childURL) {
			String urltem = e.attr("abs:href");
			if(urltem.contains("amazon")){
				continue;
			}
			
			Document cd;
			try {
				Connection child = Jsoup.connect(urltem);
				cd = child.get();
			}catch(org.jsoup.HttpStatusException excep) {
				continue;
			}
			//System.out.println(e.attr("abs:href"));
			
			//dataG += cd.text();
			childPage[a] = cd.text();
			a++;
			if(a >= 3) {
				break;
			}
		}
		
		
		System.out.println("Connection 2 completed\nNow connecting to " + URLG1);
		Connection con3 = Jsoup.connect(URLG1);
		Document html3 = con3.get();
		System.out.println("Connection 3 completed\nNow connecting to " + URLG2);
		Connection con4 = Jsoup.connect(URLG2);
		Document html4 = con4.get();
		System.out.println("Connection 4 completed\nNow connecting to " + URLG3);
		Connection con5 = Jsoup.connect(URLG3);
		Document html5 = con5.get();
		System.out.println("Connection 5 completed\nNow connecting to " + URLG4);
		Connection con6 = Jsoup.connect(URLG4);
		Document html6 = con6.get();
		
		
		dataG = html2.text() + html3.text() + html4.text() + html5.text() + html6.text();
		
		
		for (Game game : gameList) {
			Keyword k = game.getKey();
			KeywordCounter keywordCounter = new KeywordCounter(dataG, k.getName());
			int child1 = new KeywordCounter(childPage[0], k.getName()).getCount();
			int child2 = new KeywordCounter(childPage[1], k.getName()).getCount();
			int child3 = new KeywordCounter(childPage[2], k.getName()).getCount();
			
			game.setChildCount(0,child1);
			game.setChildCount(0,child2);
			game.setChildCount(0,child3);
			
			k.setCount(keywordCounter.getCount()+child1+child2+child3);
		}
		
		Sort sort = new Sort(gameList,666);
		sort.sort();
		games = sort.output();
	}
}
