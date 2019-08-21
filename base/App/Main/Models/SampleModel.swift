import RxSwift

/* 状態を定義する
enum RequestState
{
    case stoped
    case error
    case success
}
 */

final class SampleModel {
    fileprivate let disposeBag = DisposeBag()
    /*
    let requestState = Variable<RequestState>(.stoped)
    */
}

extension SampleModel {
    /* 何らかの処理（非同期処理）の結果をvariableのvalueに代入し、ViewModelへ状態の変化を通知する
     ※ apiRequestは定義していない
    func request(param: Int) {
        apiRequest.request(param: param)
            .subscribe(onNext: { [weak self] response in
                guard let strongSelf = self else { fatalError() }
                成功時の処理
                strongSelf.requestState.value = .success
                
                }, onError: { [weak self] error in
                    guard let strongSelf = self else { fatalError() }
                    エラー時の処理
                    strongSelf.requestState.value = .error
                }, onCompleted: { [weak self] in
                    guard let strongSelf = self else { fatalError() }
                    完了時の処理
                    strongSelf.requestState.value = .stoped
            })
            .disposed(by: disposeBag)
    }
     
     func doSomething() {
         何らかの処理
     }
    */
}
