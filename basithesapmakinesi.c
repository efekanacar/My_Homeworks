#include<stdio.h>

int main(){
	printf("BASIT HESAP MAKINESI\n\n");
	
	float sayi1, sayi2, sonuc;
	int islem;
	
	printf("Birinci sayiyi giriniz: \n");
	scanf("%f", &sayi1);
	
	printf("Ikinci sayiyi giriniz: \n");
	scanf("%f", &sayi2);
	
	printf("Islemi giriniz (1-> Toplama 2-> cikartma 3-> Bolme 4-> Carpma): \n");
	scanf("%d", &islem);
	
	if(islem == 1)
		sonuc = sayi1 + sayi2;
	else if(islem == 2)
		sonuc = sayi1 - sayi2;
	else if(islem == 3)
		sonuc = sayi1 / sayi2;
	else if(islem == 4)
		sonuc = sayi1 * sayi2;
		
	printf("Islemin sonucu: %.2f", sonuc);
	return 0;
}
