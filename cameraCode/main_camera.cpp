#include <stdio.h>
#include <signal.h>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/videoio.hpp>
#include <cstdio>
#include <ctime>
#include <string>

using namespace cv;
using namespace std;
bool STOP;


void my_handler(int s){
           printf("Caught signal %d\n",s);
           STOP = true;
}


int main(int argc, const char** argv)
{
	//CTRL+C signal handler
	STOP = false;
	struct sigaction sigIntHandler;
	sigIntHandler.sa_handler = my_handler;
	sigemptyset(&sigIntHandler.sa_mask);
	sigIntHandler.sa_flags = 0;
	sigaction(SIGINT, &sigIntHandler, NULL);
	
	//register gst debug info - moderate
        putenv("GST_DEBUG=*:3");
        bool useCamera = true;//parser.get<bool>("camera");
        bool update_bg_model = true;

	//gst-streamer kommando
        char* gst = "nvcamerasrc ! video/x-raw(memory:NVMM), width=(int)1280, height=(int)720,format=(string)I420, framerate=(fraction)24/1 ! nvvidconv flip-method=2 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";

	cout <<"GST command:"<<endl<< gst<< endl<<endl; 
	//open videostream
        VideoCapture cap(gst);
	
	//check if videostream opened nicely
        if( !cap.isOpened() )
        {
            printf("can not open camera or video file\n%s", "");
            return -1;
        }
	cout << "Opened camera!"<< endl;


	Mat edges;
	namedWindow("edges",1);
	while(!STOP)
	{
		clock_t start = clock(); //fps counter start
		Mat frame;
		cap >> frame; // get a new frame from camera
		cvtColor(frame, edges, COLOR_BGR2GRAY);
		GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
		Canny(edges, edges, 0, 30, 3);
		
		double dur = (clock() - start)/CLOCKS_PER_SEC; 
		double fps = 0.0;
		if(dur!=0.0)
			fps = 1/dur;
		string x = "fps" + to_string(fps);
//cout << "string=" << x << endl;
		putText(edges, 
			x, 
			Point(edges.cols/10, edges.rows/10), 
			FONT_HERSHEY_DUPLEX,
			1.0,
			CV_RGB(255,255,255),
			2);

		imshow("edges", edges);
		waitKey(1);
	}
	cap.release();
	cout <<endl<< "Released Camera!" << endl;
	return 0;
}
