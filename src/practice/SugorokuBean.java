package practice;

import java.util.Random;

public class SugorokuBean {

	private static final int DICE_MAX = 6;
	private static final int SQUARE = 10 + 1;
	private boolean[] buf = new boolean[SQUARE];
	private int location = 0;
	private int count = 0;
	private int dice = 0;

	public void initial() {

		for (int i = 0; i < SQUARE ; i++) {
			buf[i] = false;
		}
		// 初期値0
		buf[0] = true;
		location = 0;
		count = 0;
		dice = 0;
	}

	public int rollDice() {
		// サイコロを振る
		dice = new Random().nextInt(DICE_MAX) + 1;

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
}
