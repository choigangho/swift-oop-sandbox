import Playgrounds

#Playground {

//    튜플 확인 문제
    
//    1. 웹 요청의 응답 상태를 나타내는 이름 있는 튜플 `httpResponse`를 만드세요. `statusCode`라는 이름으로 `Int` 타입의 값 `404`를, `errorMessage`라는 이름으로 `String` 타입의 값 `"Not Found"`를 담으세요.
//    2. `httpResponse`에서 `errorMessage`만 출력해 보세요.
//    3. `httpResponse` 튜플을 `code`와 `error`라는 두 개의 새로운 상수로 분해(Decomposition)하세요.
//    4. 분해된 `code` 상수를 출력해 보세요.
    
    let httpResponse = (statusCode: 404, errorMessage: "Not Found")
    
    print(httpResponse.errorMessage)
    
    let (code, error) = httpResponse
    
    print(code)
    
}
