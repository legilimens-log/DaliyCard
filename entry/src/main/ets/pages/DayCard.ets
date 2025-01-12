@Component
export  struct DayCard {
  build() {
    Column(){
      Text('1月')
        .width('100%')
        .textAlign(TextAlign.Start)
        .fontWeight(FontWeight.Bold)
        .fontSize(30)
        .padding(20)
        .fontColor(Color.White)
    }
    .width(250)
    .height(350)
    .backgroundColor('#D0CBCB')
    // .backgroundImage($r('app.media.dog'))
    .borderRadius(20)
    .useShadowBatching(true)
  }
}