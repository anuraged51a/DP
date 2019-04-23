import Foundation

func fibonacci(num : Int) -> Int{
    var arr = [Int]()
    arr.append(0)
    arr.append(1)
    var cur = 0

    if(num < 2){
        return arr[num]
    }
    for i in 2...num {
        cur = arr[i-1] + arr[i-2]
        arr.append(cur) 
    }
    return arr[num]
}

print(fibonacci(num: 7))

