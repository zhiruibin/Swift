功能说明

对常见API进行异常兼容处理，以保证业务逻辑正常执行，目前已对NSArray与NSString常用API进行了处理，详情如下：

![image](https://user-images.githubusercontent.com/4407961/110412141-aa103180-80c6-11eb-898e-561e547e49f2.png)


工具输入、输出

暂无

###使用示例

 //数组处理；
var list = [1,2,3,4,5,6]

//let value6 = list[6]

let value6 = list[~6]

print("The value is \(String(describing: value6))")

//list[6] = 7

list[~6] = 7

print("The list is \(String(describing: list))")

//let value28 = list[(2...8)]

let value28 = list[~(2...8)]

print("The value 2-8 is \(String(describing: value28))")

//字符串处理

let i: String = "zhi rui bin";

let index = i.index(~i.startIndex, offsetBy: ~15);

let c = i[index]

print("The string value is : \(c)")

let indexOne = i.index(~i.startIndex, offsetBy: ~12, limitedBy: ~i.startIndex)

let cOne = i[indexOne]

print("The string value is : \(cOne)")
