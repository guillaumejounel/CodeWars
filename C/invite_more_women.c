//An array arr representing the attendees, where -1 represents women and 1 represents men.
//Should return true if Arthur need to invite more women, false otherwise (gender equality needed)

#include <stddef.h>
#include <stdio.h>

int invite_more_women(int *arr, size_t count)
{
    int i, res=0;
    for (i=0; i<count; i++)
      res+=arr[i];
    if (res>0) {
        res = 1;
    } else {
        res = 0;
    }
    return res;
}

//better:
//
// int invite_more_women(int *arr, size_t count)
// {
//     int sum=0;
//     while(count--){
//       sum += *arr++;
//     }
//     return (sum>0)? 1 : 0 ;
// }
