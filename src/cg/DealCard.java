package cg;
import java.util.*;
/*
    斗地主有序版本
    1.准备牌
    2.洗牌
    3.发牌
    4.排序
    5.看牌
*/
public class DealCard {
    public static void main(String[] args) {
        //1.准备牌

        //创建集合poker，存储54张牌的索引和组装好的牌
        HashMap<Integer,String> poker = new HashMap<>();
        //创建一个list集合，存储牌的索引
        ArrayList<Integer> pokerIndex = new ArrayList<>();
        //定义两个集合，分别存储花色和数字
        String[] colors = {"♠","♥","♣","♦"};
        String[] numbers = {"2","A","K","Q","J","10","9","8","7","6","5","4","3"};
        //存储大小王
        //定义一个牌的索引
        int index = 0;
        poker.put(index,"大王");
        pokerIndex.add(index);
        index++;
        poker.put(index,"小王");
        pokerIndex.add(index);
        index++;

        //循环嵌套遍历两个集合，组装52张牌，存储到集合中
        for (String number : numbers) {
            for (String color : colors) {
                poker.put(index,color+number);
                pokerIndex.add(index);
                index++;
            }
        }

        //2.洗牌
        Collections.shuffle(pokerIndex);

        // 3.发牌
        //定义四个集合分别存储玩家和底牌的牌索引
        ArrayList<Integer> player01 = new ArrayList<>();
        ArrayList<Integer> player02 = new ArrayList<>();
        ArrayList<Integer> player03 = new ArrayList<>();
        ArrayList<Integer> dipai = new ArrayList<>();

        for (int i = 0; i < pokerIndex.size(); i++) {
            int in = pokerIndex.get(i);
            if(i > 50) {
                dipai.add(in);
            }else if(i % 3 == 0) {
                player01.add(in);
            }else if(i % 3 == 1) {
                player02.add(in);
            }else if(i % 3 == 2) {
                player03.add(in);
            }
        }

        // 4.排序
        Collections.sort(player01);
        Collections.sort(player02);
        Collections.sort(player03);
        Collections.sort(dipai);

        //5.看牌
        pokerShow("hql",poker,player01);
        pokerShow("leq",poker,player02);
        pokerShow("lzh",poker,player03);
        pokerShow("底牌",poker,dipai);
    }
    /*
        定义一个方法，看牌，使用查表方法
    */

    public static void pokerShow(String name,HashMap<Integer,String> poker,ArrayList<Integer> list) {
        //输出玩家的名称
        System.out.print(name+ ":");

        for (Integer key : list) {
            String value = poker.get(key);
            System.out.print(value+ " ");
        }
        System.out.println();
    }
}
