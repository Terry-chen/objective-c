#import <Foundation/Foundation.h>

typedef enum {
	kRedColor,
	kGreenColor,
	kBlueColor,
} ShapeColor;

typedef struct {
	int x,y,width,height;
} ShapeRect;

NSString *colorName (ShapeColor colorName)
{
	switch (colorName)
	{
		case kRedColor:
			return @"red";
			break;
		case kGreenColor:
			return @"green";
			break;
		case kBlueColor:
			return @"blue";
			break;
	}
	return @"no clue";
}


@interface Circle : NSObject
{
	ShapeColor fillColor;
	ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end //Circle

@implementation Circle
-(void) setFillColor: (ShapeColor) c
{
	fillColor = c;
}
-(void) setBounds: (ShapeRect) b
{
	bounds =b;
}

-(void) draw
{
	NSLog(@"drawing a circle at (%d %d %d %d) in %@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}
@end //Circle	
