@interface SBStatusBarStateAggregator : NSObject
-(void)_updateBatteryItems;
@end
%hook SBStatusBarStateAggregator
-(void)_updateBatteryItems{}
%end
