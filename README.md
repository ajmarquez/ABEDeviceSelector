# ABEDeviceSelector
Wanted to run code on an specific Apple device? This is for you!

## Description
This simple class allows you to group devices on Retina and no-Retina, iPhone or iPad. Why? Sometimes you want to load specific images depending on devices or run some code for an certain device. Well, just pick one of the methods and you are ready to go!

Want to be able to load all the code in one simple method? Check. We have that too. 

## Install

Just copy the ```ABEDeviceSelector.h``` and ```ABEDeviceSelector.m``` to your project! (Yeah the stone-age way, pods coming soon)

## Usage 

Let's say you want to add some super awesome image in 3X for your happy iPhone 6 Plus users, well, we pick the following method:

```- (void) useForIPhoneSixPlus:(void (^)(void))someCode;```

And we implement it this way:

``` 
  __block UIImage *superAwesomePicture;
    
  [ABEDeviceSelector useForIPhoneSixPlus:^{
     superAwesomePicture = [UIImage imageNamed:@"Pirate_on_a_TRex_Picture.png"];
    }];
```
This works on any other device. If you want to add different code on each type of device and don't want to insert each line of code you may want to use the grouped method:

```
+ (void) useForDevicesRetinaIPhone:(void (^)(void))rIPhone
                   nonRetinaIphone:(void (^)(void))nrIPhone
                        retinaiPad:(void (^)(void))rIPad
                     nonRetinaiPad:(void (^)(void))nrIPad
                     iPhoneSixPlus:(void (^)(void))iPhoneSixPlus;
```
Any comments or aditions are Welcome!







The MIT License (MIT)

Copyright (c) 2015 Abelardo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
