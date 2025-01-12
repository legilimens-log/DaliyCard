import {DayCard} from './DayCard'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State Content: DayCard = new DayCard;
  private month: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  scroller: Scroller = new Scroller;
  build() {
    Column() {
      Row(){
        Text('2025年1月1号')
          .fontWeight(FontWeight.Bolder)
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
      .height('10%')
      .padding({
        bottom: 20
      })
      Text('< 2025 >')
        .fontColor(Color.Black)
        .fontSize(24)
        .fontWeight(FontWeight.Bolder)
        .margin(15)
        Scroll(this.scroller){
          Row({space: 20}) {
            // Button('<')
            //   .margin({
            //     left:3
            //   })
            //   .type(ButtonType.Circle)
            //   .fontWeight(FontWeight.Bolder)
            //   .fontColor(Color.White)
            //   .backgroundColor(Color.Gray)
            ForEach(this.month, (item: number) => {
              DayCard()
            })
          }
          .margin({
            left: 40,
            right: 20
          })
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .edgeEffect(EdgeEffect.Spring)
        .scrollSnap({snapAlign:ScrollSnapAlign.START, snapPagination:270, enableSnapToStart:true, enableSnapToEnd:true})
      }
      .height('100%')
      .width('100%')
      .justifyContent(FlexAlign.Center)
  }
}