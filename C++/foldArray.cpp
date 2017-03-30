#include <iostream>
#include <vector>

// In this kata you have to write a method that folds a given array of integers
// by the middle x-times (summing them).

class Kata
{
public:
    std::vector<int> foldArray(std::vector<int> array, int runs)
    {
        if (runs == 0)
            return array;
        for(unsigned int i=0; i<array.size()/2; i++) {
            array[i] += array[array.size()-1-i];
        }
        array.resize((array.size()+1)/2);
        return foldArray(array, runs-1);
    }
};

int main(int argc, char const *argv[]) {
    Kata kata;
    std::vector<int> actual = kata.foldArray({ 1, 2, 3, 4, 5 }, 1);
    for(unsigned int i=0; i<actual.size(); i++) {
        std::cout << actual[i] <<" , ";
    }
    return 0;
}
