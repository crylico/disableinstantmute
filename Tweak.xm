@interface VolumeControl

- (void)decreaseVolume;

@end

%hook VolumeControl

- (void)decreaseVolume {

	// get a pointer to the ivar, then set the ivar's value to 0
	int &num = MSHookIvar<int>(self, "_numberOfVolumeDecreasesSinceDownButtonDown");
	num = 0;

	%orig;
}

%end