int numsellipse = 200;
PVector[] p=new PVector[numsellipse];
int[] speed=new int[numsellipse];
int[] countdown=new int[numsellipse];
void setup()
{
  size(600,600);
  for (int i = 0; i < numsellipse; i++)
  {
   p[i]=new PVector(random(0,width),random(0,height));
   speed[i]=int(random(-5,5));
   countdown[i]=0;
   p[i].z=0;
  }
}
void draw()
{ 
  background(0);
  for(int i=0;i<numsellipse;i++)
  {
    if(p[i].z==0)
    {
      if(i<numsellipse/2)
   {
     p[i].y=p[i].y+speed[i];
     if(p[i].y>height)
   {    
     speed[i]=-speed[i];
   }
   if(p[i].y<0)
   {
     speed[i]=-speed[i];
   }
    }
   else
  {
   p[i].x=p[i].x+speed[i];
   if(p[i].x>width)
   {    
     speed[i]=-speed[i];
   }
   if(p[i].x<0)
   {
     speed[i]=-speed[i];
   }  
  }
    }
     ellipse(p[i].x,p[i].y,20,20);  
   if(dist(p[i].x,p[i].y,mouseX,mouseY)<10)
    {
        p[i].z = 1;
    }
    if (p[i].z == 1)
    {
      countdown[i]++;
    }
    if (countdown[i] == 20)
    {
      countdown[i] = 0;
      p[i].z = 0;
    }
  }
}
