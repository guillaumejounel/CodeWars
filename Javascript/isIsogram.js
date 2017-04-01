//An isogram is a word that has no repeating letters, consecutive or non-consecutive.

function isIsogram(str){
    str = str.toLowerCase()
    for (var i = 0; i < str.length; i++) {
        for (var j = 0; j < str.length; j++)
            if ((str[i] == str[j]) && (i!=j))
                return false
    }
    return true;
}

console.log("Demartoglyphics : "+ isIsogram("Dermatoglyphics"))
console.log("Awesome : "+ isIsogram("Awesome"))

//Best solution:
function isIsogram(str){
  return !/(\w).*\1/i.test(str)
}

/* Explanation:
 - ! : not (negation)
 - w : a word character
 - .* : any character 0+ times
 - /(\w).*\1/ containing a word character A, 0+ other characters
              and then the word caractere A again.
 - i : case insensitive

The function "test" applies the RegExp expression on the desired string
and returns true (if there is a matching pattern) or false. */
