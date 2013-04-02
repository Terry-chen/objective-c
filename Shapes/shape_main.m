#import "base.m"

int main(int argc, const char* argv[])
{
	ShapeRect rect0 = {0,0,10,30};
	id shape = [Circle new];
	[shape setBounds: rect0];
	[shape setFillColor: kRedColor];
	[shape draw];
}
