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
bool STOP; //bool to catch ctrl+s and quit nicely

void ctrlC_handler(int s);

int main(int argc, const char** argv)
{
  //CTRL+C signal handler init
  STOP = false;
  struct sigaction sigIntHandler;
  sigIntHandler.sa_handler = ctrlC_handler;
  sigemptyset(&sigIntHandler.sa_mask);
  sigIntHandler.sa_flags = 0;
  sigaction(SIGINT, &sigIntHandler, NULL);

  
  //gst-streamer command to start camera
  char* gst = "nvcamerasrc ! video/x-raw(memory:NVMM), width=(int)1280, height=(int)720,format=(string)I420, framerate=(fraction)24/1 ! nvvidconv flip-method=2 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";
  
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
      Mat frame;
      cap >> frame; // get a new frame from camera
      cvtColor(frame, edges, COLOR_BGR2GRAY);
      GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
      Canny(edges, edges, 0, 30, 3);

      imshow("edges", edges);
      waitKey(1);
      
    }
  cap.release();
  cout <<endl<< "Released Camera!" << endl;
  return 0;
}



//catch ctrl+c and quit nicely
void ctrlC_handler(int s){
           printf("Caught signal %d\n",s);
           STOP = true;
}
