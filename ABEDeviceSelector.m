//
//  ABEDeviceSelector.m
//
//  Created by Abelardo Marquez on 8/14/15.
//
//

#import "ABEDeviceSelector.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad

@implementation ABEDeviceSelector


#pragma Methods for individual selection


+ (void) useForNonRetinaIPhone:(void (^)(void))someCode{
    
    if ( IDIOM != IPAD  && [[UIScreen mainScreen] scale] == 1.0f) {
        
        //It's a No Retina iPhone
        someCode();
    };
    
}

+ (void) useForRetinaIPhone:(void (^)(void))someCode{
    
    if (IDIOM != IPAD  && [[UIScreen mainScreen] scale] == 2.0f) {
        
        //It's a Retina iPhone
        someCode();
    };
    
}

+ (void) useForIPhoneSixPlus:(void (^)(void))someCode{
    
    if (IDIOM != IPAD  && [[UIScreen mainScreen] scale] == 3.0f){
        
        //It's an iPhone 6+, Da DuDe HaZ MoNeY!
        someCode();
    };
    
}

+ (void) useForNonRetinaIPad:(void (^)(void))someCode{
    
    if (IDIOM == IPAD  && [[UIScreen mainScreen] scale] == 1.0f){
        
        //Old iPad
        someCode();
    };
    
}

+ (void) useForRetinaIPad:(void (^)(void))someCode{
    
    if (IDIOM == IPAD  && [[UIScreen mainScreen] scale] == 2.0f){
        
        //Retina iPad
        someCode();
    };

    
}

#pragma For Group selection

+ (void) useForDevicesRetinaIPhone:(void (^)(void))rIPhone
                   nonRetinaIphone:(void (^)(void))nrIPhone
                        retinaiPad:(void (^)(void))rIPad
                     nonRetinaiPad:(void (^)(void))nrIPad
                     iPhoneSixPlus:(void (^)(void))iPhoneSixPlus{
    
    if ( IDIOM != IPAD  && [[UIScreen mainScreen] scale] == 1.0f) {
        
        //It's a No Retina iPhone
        nrIPhone();
    }
    else if (IDIOM != IPAD  && [[UIScreen mainScreen] scale] == 2.0f) {
        
        //It's a Retina iPhone
        rIPhone();
    }
    else if (IDIOM != IPAD  && [[UIScreen mainScreen] scale] == 3.0f){
        
        //It's an iPhone 6+, Da DuDe HaZ MoNeY!
        iPhoneSixPlus();
    }
    else if (IDIOM == IPAD  && [[UIScreen mainScreen] scale] == 1.0f){
        
        //Old iPad
        nrIPad();
    }
    else {
        //iPad Retina
        rIPad();
        
    };
    
}

@end
