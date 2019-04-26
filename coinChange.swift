import Foundation

func coinChange(a: [Int],b: Int,c: Int)->Int{
    var x: Int,y: Int
    var table = [[Int]]()
    var list = [Int]()
    var list2 = [Int]()
    for _ in 0...b-1{
        list.append(1)
        list2.append(0)
    }
    table.append(list)
    for _ in 0...c-1{
        table.append(list2)
    }
    print(table)
    for i in 1...c{
        for j in 0...b-1{
            if(i - a[j] >= 0){
                x = table[i-a[j]][j]
            }
            else{
                x = 0
            }
            if(j >= 1){
                y = table[i][j - 1]
            }else{
                y = 0
            }
            table[i][j] = x + y;
            print(x,y)
        }
    }
    
    print(table)
    return table[c][b-1]
}

var a: [Int] = [1 ,2 ,3]
var b = a.count
coinChange(a: a,b: b,c: 4)
print(b)
