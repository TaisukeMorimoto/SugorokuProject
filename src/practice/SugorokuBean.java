package practice;

import java.util.Random;

public class SugorokuBean {

	private static final int DICE_MAX = 6;
	private static final int SQUARE = 25 + 1;
	private boolean[] buf = new boolean[SQUARE];
	private int[] event = new int[SQUARE];
	private int[] alcohol = new int[] {5, 3, 2, -2, -5};
	private int location = 0;
	private int count = 0;
	private int bloodAlcLv = 0;

	public void initial() {

		for (int i = 0; i < SQUARE ; i++) {
			buf[i] = false;
			//各マスにアルコール値をセット
			event[i] = alcohol[new Random().nextInt(alcohol.length)];
		}

		// 初期値0
		buf[0] = true;
//		event[0] = 100;
		location = 0;
		count = 0;
		bloodAlcLv = 0;
	}

	public int rollDice() {
		// サイコロを振る
		int dice = new Random().nextInt(DICE_MAX) + 1;

		// bufの現在地をfalseにする
		buf[location] = false;

		// locationを更新
		location += dice;

		// locationがマス目を超えた場合
		if (location >= SQUARE - 1) {
			location = SQUARE - 1;
		}

		// bufの新しいマスをtrueにする
		buf[location] = true;
		count++;
		System.out.println("count in rollDice" + count);
		return dice;
	}

	// 血中アルコール濃度の更新
	public int alcIntake() {
		// マスを超えたら計算しない
		try {
			bloodAlcLv += event[location];
		} catch(ArrayIndexOutOfBoundsException ae) {
			System.out.println("locationの値がSQUAREを超えている");
		}

		//血中アルコール濃度は0以下にならない
		if(bloodAlcLv < 0) {
			bloodAlcLv = 0;
		}
		System.out.println("event[location] in alcIntake" + event[location]);
		System.out.println("bloodAlcLv in alcIntake" + bloodAlcLv);
		return bloodAlcLv;
	}


	//マスのテキスト
	public String getDrinkText() {

		String text = null;
		if(event[location] == alcohol[0]) {
			text = "みんなで日本酒４合空けるぞ～～";
		}else if(event[location] == alcohol[1]){
			text = "とりあえず、ビールで乾杯！";
		}else if(event[location] == alcohol[2]) {
			text = "あ、カシスオレンジください。。。";
		}else if(event[location] == alcohol[3]) {
			text = "チェイサー？いや、これ焼酎の水割りだよ";
		}else if(event[location] == alcohol[4]) {
			text = "実は飲み会前にウコンの力を飲んでいたのさ";
		}else {
			text = null;
		}
		System.out.println("text in getDrink: " + text);
		return text;
	}

	// 血中アルコール濃度上昇の表示
	public String getAlcoholLvText() {

		String text = null;
		if(event[location] > 0) {
			text = "血中アルコール濃度は" + event[location] + "上昇した";
		}else if(event[location] < 0) {
			text = "血中アルコール濃度は" + Math.abs(event[location]) + "回復した";
		}
		System.out.println("text in getAlcoholLv: " + text);
		return text;
	}

	public int getCount() {
		return count;
	}

	public int getSQUARE() {
		return SQUARE;
	}

	public int getLocation() {
		return location;
	}

	public boolean getBuf(int num) {
		return buf[num];
	}

	public int getBloodAlcLv() {
		return bloodAlcLv;
	}

}
