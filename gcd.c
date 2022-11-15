int gcd(int a, int b){
    int tmp;
    /*negative*/
    a = (a > 0) ? a : -a;
    b = (b > 0) ? b : -b;
    if(a > b){
        while(1){
            tmp = a % b;
            if (tmp == 0)return b;
            else if(tmp == 1)return 1;
            else{
                a = b;
                b = tmp;
            }
        }
    }else{
        while(1){
            tmp = b % a;
            if (tmp == 0)return a;
            else if(tmp == 1)return 1;
            else{
                b = a;
                a = tmp;
            }
        }
    }
    
}