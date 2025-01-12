import {DayCard} from './DayCard'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State Content: DayCard = new DayCard;
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
      Row({space: 20}) {
        Button('<')
          .margin({
            left:3
          })
          .type(ButtonType.Circle)
          .fontWeight(FontWeight.Bolder)
          .fontColor(Color.White)
          .backgroundColor(Color.Gray)
        DayCard()
        DayCard()
        DayCard()
      }
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}