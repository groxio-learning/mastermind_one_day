# Building in Layers

We want to build our software in layers. Remember the sentence:

> Do Fun Things with Big Loud Wildebeests

The layers are: 

- Data (do). The modules with the corresponding structs. Put them in `lib/core` or `lib/app_name/core`. 
- Functional Core (fun). A functional core. 
- Tests (things). We run as many tests as possible in the functional core. 
- Boundaries (big). All process machinery, including OTP, is isolated to the boundary, and beyond. 
- Lifecycle (loud). OTP supervisors fit here. 
- Workers (wildebeests). The configuration that lets us split work. 
