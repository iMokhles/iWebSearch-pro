int main(int argc, char **argv) {
	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	int ret = UIApplicationMain(argc, argv, @"iWebSearchProApplication", @"iWebSearchProApplication");
	[p drain];
	return ret;
}

// vim:ft=objc
