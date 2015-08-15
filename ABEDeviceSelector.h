//
//  ABEDeviceSelector.h
//  An easy way to select your favorite Apple device!
//  For sure!
//
//  Created by Abelardo Marquez on 8/14/15.
//
//

#import <Foundation/Foundation.h>


/*!
 * @class ABEDeviceSelector
 *
 *
 *
 * @brief ABEDeviceSelector is a class to help select devices
 *
 * @discussion In order to use specific code for devices this class
 * helps discriminate devices
 */
@interface ABEDeviceSelector : NSObject



/*!
 *  Execute code when the device is a NonRetina iPhone: iPhone 4/4S
 *
 *  @param someCode Block of code to be executed
 */
+ (void) useForNonRetinaIPhone:(void (^)(void))someCode;


/*!
 *  Execute code when the device is a Retina iPhone: iPhone 5/5s/6
 *
 *  @param someCode Block of code to be executed
 */
+ (void) useForRetinaIPhone:(void (^)(void))someCode;


/*!
 *  Execute code when the device is an iPhone 6+
 *
 *  @param someCode Block of code to be executed
 */
+ (void) useForIPhoneSixPlus:(void (^)(void))someCode;


/*!
 *  Execute code when the device is a NonRetina iPad: iPad2/3
 *
 *  @param someCode Block of code to be executed
 */
+ (void) useForNonRetinaIPad:(void (^)(void))someCode;


/*!
 *  Execute code when the device is a Retina iPad: iPad 4/Air
 *
 *  @param someCode Block of code to be executed
 */
+ (void) useForRetinaIPad:(void (^)(void))someCode;



/*!
 *  Execute blocks of code depending on the device Typee
 *
 *  @param rIPhone       Block for iPhone 5/5s/6
 *  @param nrIPhone      Block for iPhone 4/4S
 *  @param rIPad         Block for iPad 4/Air
 *  @param nrIPad        Block for iPad2/3
 *  @param iPhoneSixPlus Block for iPhone 6 Plus
 */
+ (void) useForDevicesRetinaIPhone:(void (^)(void))rIPhone
                   nonRetinaIphone:(void (^)(void))nrIPhone
                        retinaiPad:(void (^)(void))rIPad
                     nonRetinaiPad:(void (^)(void))nrIPad
                     iPhoneSixPlus:(void (^)(void))iPhoneSixPlus;

@end
