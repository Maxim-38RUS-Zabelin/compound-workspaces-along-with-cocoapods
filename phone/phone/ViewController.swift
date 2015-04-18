//
//  ViewController.swift
//  demo
//
//  Copyright (c) 2015 Maxim Zabelin
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import core
import AFNetworking
import UIKit
import ViewUtils

class ViewController: core.ViewController {

    private weak var imageView: UIImageView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView()
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.addSubview(imageView)
        self.imageView = imageView
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        self.imageView?.frame = self.view.bounds
        println(self.imageView?.width)
        println(self.imageView?.top)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        self.imageView?.setImageWithURL(NSURL(string: "http://placekitten.com/g/400/600"))
    }
}
