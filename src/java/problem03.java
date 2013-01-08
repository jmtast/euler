/*
** PROBLEM 3:
** The prime factors of 13195 are 5, 7, 13 and 29.
**
** What is the largest prime factor of the number 600851475143 ?
*/

import java.util.LinkedList;
import java.util.ListIterator;	//libreria para iteradores bidireccionales
import java.lang.Math;			//libreria para funciones matematicas

public class problem3{
	public static void main(String[] args){
		int primoMax = 0;
		long tope = 600851475143L;
		double raizTope = Math.sqrt(tope);
		LinkedList<Integer> damePrimos = primosHasta(raizTope);
		int tam = damePrimos.size()-1;
		ListIterator<Integer> it = damePrimos.listIterator(tam);
		for(int i = tam; i > 1; i--){
			if (tope % damePrimos.get(i).intValue() == 0){
				primoMax = damePrimos.get(i).intValue();
				break;
			}
			it.previous();
		}
		System.out.printf("El primo m‡ximo que divide a %d es %d", tope, primoMax);
	}
	
	public static LinkedList<Integer> primosHasta(double tope){
		LinkedList<Integer> primos = new LinkedList<Integer>();
		primos.add(2);
		int i = 3;
		while (i <= tope){
			if (esPrimo(i,primos)){
				primos.add(i);
			}
			i += 2;
		}
		return primos;
	}
	
	public static boolean esPrimo(int i, LinkedList<Integer> primos){
		boolean check = true;
		/*if (primos.contains(i)){
			check = true;
		}else */
		if(i < primos.getLast()){
			check = false;
		}else{
			int j = primos.getFirst();
			do {
				check = (0 != i % j);
				j++;
			}while (j < i && check);
		}
		return check;
		
	}
}