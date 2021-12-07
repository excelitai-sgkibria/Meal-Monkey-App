part of pages;

class SecondIntroPage extends StatefulWidget {
  const SecondIntroPage({Key? key}) : super(key: key);

  @override
  _SecondIntroPageState createState() => _SecondIntroPageState();
}

class _SecondIntroPageState extends State<SecondIntroPage> {
  late  PageController _controller = PageController();
  final List<IntroModel> _data= IntroModel.data;
  int _activeindex = 0;


  @override
  void initstate() {
    super.initState();
  _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() { setState((

        ) {
      _activeindex = _controller.page!.round();
    });});
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
                itemCount: _data.length,
                itemBuilder: (context, index){
              return Column(
                children: [
                  SizedBox(height: 150.h,),
                  Image.asset(_data[index].imagepath!,
                  width: 700.w,
                  ),
                ],
              );
            }),
          ),
          SliderIndicator(
            length: _data.length,
            activeIndex:_activeindex,
            indicator:Icon(Icons.fiber_manual_record_rounded,
            color: placeholdColor,size: 32.w,),
            activeIndicator: Icon(Icons.fiber_manual_record_rounded,
            color: mainColor,
            size: 32.w,),),
          SizedBox(height: 150.h,
              child: Text(_data[_activeindex].title!,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    height: 4.h
                ),
                textAlign: TextAlign.center,
              ),
          ),


          SizedBox(height: 150.h,

              child: Text(_data[_activeindex].desc!,
              style: Theme.of(context).textTheme.caption!.copyWith(
                color: secondarycolor,
                fontWeight: FontWeight.bold,
                height: 4.h
              ),
                textAlign: TextAlign.center,
              )),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 60.w, vertical: 120.h),
            child: Expanded(
              child: ElevatedButton(
                  onPressed: (){
                if((_activeindex + 1)>=_data.length) {
                  Navigator.pushReplacementNamed(context, '/starter');
                  return;
                }
                _controller.animateToPage(_activeindex +1,
                    duration:const Duration(milliseconds: 250),
                    curve:Curves.easeIn);

                return;


              },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.r
                        )
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(mainColor),

                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                       EdgeInsets.symmetric(horizontal:380.h, vertical:40.w),
                    )


                  ),

                  child:const Text("Next")),
            ),
          )
        ],
      ),
    );
  }
}


