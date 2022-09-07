/// Algorithm
/// 1. `Remove` negative numbers from the input and `sort` it (0 ≤ A < B < C < N)
/// 2. Check if the current arr can still `create` a triangle
/// 3. access the last `three` numbers in the array (it represents the 3 biggest number) then get the `product` of it.

public func solution(_ A: [Int]) -> Int {
    let arr = A.filter { $0 >= 0 }.sorted()
    let count = arr.count
    guard count >= 3 else { return 0 }
    return arr[count-1] * arr[count-2] * arr[count-3]
}

// MARK: Test Cases
print(solution([10,50,5,1])) // 2500
print(solution([-6,2,4,-5,10,12])) // 480
print(solution([-6,2,4,-5,10,12,0])) // 480
print(solution([-6,2,-4,-5,10,])) // 0
