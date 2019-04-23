import Foundation

func getNthUgly(num : Int) -> Int{
    var ugly = [Int]()
    var i2 = 0, i3 = 0, i5 = 0
    var nm2 = 2, nm3 = 3, nm5 = 5
    var nextUgly = 1
    ugly.append(1)
    if(num == 0){
        return ugly[0]
    }

    for _ in 1...num{
        nextUgly = min(nm2,min(nm3,nm5))
        ugly.append(nextUgly)
       // print("\(ugly[i]) and i is \(i) \n")
        if(nextUgly == nm2){ 
            i2 += 1
            nm2 = ugly[i2]*2
        }
        if(nextUgly == nm3){ 
            i3 += 1
            nm3 = ugly[i3]*3
        }
        if(nextUgly == nm5){ 
            i5 += 1
            nm5 = ugly[i5]*5
        }
    }
    return ugly[num-1]
}

print(getNthUgly(num: 1))

