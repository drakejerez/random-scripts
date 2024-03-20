// Drake Jerez, 2023
// for a ctf, found some numbers in memory of an ELF file through ghidra
// near some others that were representing letters in ascii
// At a bit of a stand still so this short code will brute some of them to make some sense

import java.util.Random;

public class BruteForce {
    public static void main(String[] stringArray) {
    
        // need 22 different numbers seperated by '.' as input
        // with the given seed, just keep adding 

        //establishing the source int
        int[] sourceNumbers = new int[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,};
        //int[] result = new int[]{116, 122, 54, 50, 93, 66, 98, 117, 75, 51, 97, 78, 104, 119, 90, 53, 94, 36, 105, 84, 40, 69};
        int[] result = new int[]{19, 17, 15, 6, 9, 4, 18, 8, 16, 13, 21, 11, 7, 0, 12, 3, 5, 2, 20, 14, 10, 1};

        //Boolean cracked = false;
        for(int n = 0; n < result.length; n++) {
            int value = 0;
            while(check(value, result[n], n) != true) {
                value ++;
            }
            sourceNumbers[n] = value;
        }
        String crackinod = "";
        for(int i = 0; i < sourceNumbers.length; i++) {
            crackinod += convertToText(sourceNumbers[i]);
        }
        System.out.println(crackinod);
    }

    public static char convertToText(int input) {
        char converted = (char) input;
        return converted;
    }


    public static boolean check(int input, int result, int progress) {
        boolean cracked = false;
        Random random = new Random();
        random.setSeed(431289L);
        int randomized = input ^ random.nextInt(progress + 1);
        if (randomized==result) {
            cracked = true;
            System.out.println(randomized + "result");
            System.out.println(input + "input");
        }
        return cracked;
    }
}