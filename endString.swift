import Foundation

func editDistance(a: String,b: String,c: Int,d: Int)->Int{
    var table = [[Int]]()
    var list2 = [Int]()
    for _ in 0...d{
        list2.append(0)
    }
    for _ in 0...c{
        table.append(list2)
    }
    //print(table)
    for i in 0...c{
        for j in 0...d{
            if(i == 0){
                table[i][j] = j;
            }
            else if(j == 0){
                table[i][j] = i;
            }
            else if(a[a.index(b.startIndex, offsetBy: i-1)] == b[b.index(b.startIndex, offsetBy: j-1)]){
                table[i][j] = table[i-1][j-1]
            }
            else{
                table[i][j] = 1 + min(min(table[i][j-1],table[i-1][j]),table[i-1][j-1])
            }
        }
    }
    /*if str[str.index(str.startIndex, offsetBy: i)] == "a" {*/
    
    //print(table)
    return table[c][d]
}

var a: String = "sunday"
var b: String = "saturday"
print(editDistance(a: a,b: b,c: a.count, d: b.count))
