#include<iostream>

using namespace std;

int main()
{
    char mesaj[100], karakter;
    int i, anahtar;
    cout << "Sifrelemek icin metin gir ";
    cin.getline(mesaj, 100);
    cout << "Anahtari gir  ";
    cin >> anahtar;
    for(i = 0; mesaj[i] != '\0'; ++i){
        karakter = mesaj[i];
       
        if(karakter>= 'a' && karakter <= 'z'){
            karakter = karakter + anahtar;
           
            if(karakter > 'z'){
                karakter = karakter - 'z' + 'a' - 1;
            }
           
            mesaj[i] = karakter;
        }
        else if(karakter >= 'A' && karakter <= 'Z'){
            karakter = karakter + anahtar;
            if(karakter > 'Z'){
                karakter = karakter - 'Z' + 'A' - 1;
            }
            mesaj[i] = karakter;
        }
    }
    cout << "Sifreli Mesaj = " << mesaj;
    return 0;
}
