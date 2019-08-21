import UIKit
import RxSwift
import RxCocoa

final class SampleViewController : UIViewController {
    
    private let viewModel: SampleViewModelType = SampleViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* UI部品と紐付ける（例：ボタンとpressedButtonを結びつける）
        button
            .rx
            .tap
            .bind(to: viewModel.inputs.pressedButton)
            .disposed(by: disposeBag)
         */
        
        // inputs
        /* view のアクションをviewModelに通知
        viewModel.inputs.pressedButton
            .subscribe(onNext: { [weak self]  _ in
                guard let strongSelf = self else { fatalError() }
                strongSelf.viewModel.inputs.request(param: x)
            })
            .disposed(by: disposeBag)
         
         viewModel.inputs.doSomething()
         */
        
        
        // outputs
        /* viewModelからの通知を受け取る
         ※viewModelのgetRequestStateの状態を購読する。（getRequestStateの値が代入されたタイミングで呼ばれる）
        viewModel.outputs.getRequestState
            .asObservable
            .subscribe(onNext: { [weak self] state in
                guard let strongSelf = self else { fatalError() }
                switch state {
                case .success(let message):
                    成功時の処理
                    break
                case .failure:
                    失敗時の処理
                    break
                default: break
                }
            })
            .disposed(by: disposeBag)
         */
        
    }
}

