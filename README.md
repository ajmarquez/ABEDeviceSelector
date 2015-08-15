# ABEDeviceSelector
Wanted to run code on an specific Apple device? This is for you!

## Description
This simple class allows you to group devices on Retina and no-Retina, iPhone or iPad. Why? Sometimes you want to load specific images depending on devices or run some code for an certain device. Well, just pick one of the methods and you are ready to go!

Want to be able to load all the code in one simple method? Check. We have that too. 

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
