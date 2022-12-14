import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.3
import QtQuick 2.0

Window {
    width: 450
    height: 480
    visible: true
    title: qsTr("Phone_Book")
color: "skyblue"
    property int i;
    property int a;
    property int f;
    property int check;
       property string l;
    property string l1;
    property int count;
      property int j;

    Item {
        x: 87
        y: 210
        width: 206
        height: 98
        visible: true


        Popup{
            anchors.centerIn: parent
            id:ok
            height: 100
            width: 200
             background: Rectangle {
                    color: "red"
                }

            Label {
                id: label1
                width: 100
                height: 25
                text: qsTr("Save ")
                font.bold: true
                font.pixelSize: 40
                color: "blue"
            }

            Button{
                x: 100
                y: 50
                  width: 50
                height: 30
                text: "OK"
                background: Rectangle {
                        color: parent.pressed ? "red" : "yellow"
                    }
                 onClicked:{
print( count)
                    check=1;
                    ok.close()
                    label.text=""

                }
            }

        }
    }





    Popup{
        anchors.centerIn: parent
        id:add
        height: 100
        width: 220

        background: Rectangle {
                color: "silver"
            }

        Label {
            id: label3
            width: 100
            height: 50
            text: qsTr("Number or name is empty!!..")
            font.bold: true
            font.pixelSize: 15
            color: "blue"

            Button{
                x: 75
                y: 50

                width: 50
                height: 30
                text: "close"
                background: Rectangle {
                        color: parent.pressed ? "red" : "yellow"
                    }
                onClicked:{
                    add.close()
                     count=0;
                    check=0;

                }
            }
        }

    }



    Item {
        x: 87
        y: 211
        width: 223
        height: 97

        Popup{
            anchors.centerIn: parent
            id:okk
            height: 100
            width: 300

            background: Rectangle {
                    color: "purple"
                }
            Label {
                id: label2
                width: 50
                height: 25
                text: qsTr("person already save")
                font.bold: true
                font.pixelSize: 30
                color: "red"

            }


            Button{
                x: 130
                y: 45

                width: 50
                height: 30
                text: "OK"
                background: Rectangle {
                        color: parent.pressed ? "red" : "yellow"
                    }
                onClicked:{
                    okk.close()
                 count=0;}
            }

        }


    }




    Label {
        id: label
        x: 78
        y: 118
        width: 156
        height: 35
        text: qsTr("")
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "yellow"
            }
        font.bold: true
    }

    Button {
        id: button
        x: 78
        y: 208
        width: 70
        height: 33
        text: qsTr("1")
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        font.bold: true
        onClicked: {
            i = text
            label.text =label.text + i

        }

    }

    Button {
        id: button1
        x: 259
        y: 211
        width: 70
        height: 33
        text: qsTr("3")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }

    }

    Button {
        id: button2
        x: 165
        y: 247
        width: 73
        height: 28
        text: qsTr("5")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button3
        x: 78
        y: 281
        width: 70
        height: 27
        text: qsTr("7")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button4
        x: 165
        y: 210
        width: 73
        height: 30
        text: qsTr("2")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button5
        x: 78
        y: 247
        width: 70
        height: 28
        text: qsTr("4")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button6
        x: 259
        y: 247
        width: 70
        height: 28
        text: qsTr("6")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button7
        x: 165
        y: 281
        width: 73
        height: 27
        text: qsTr("8")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button8
        x: 259
        y: 284
        width: 70
        height: 24
        text: qsTr("9")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button9
        x: 165
        y: 314
        width: 73
        height: 24
        text: qsTr("0")
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            i = text
            label.text =label.text + i

        }
    }

    Button {
        id: button10
        x: 78
        y: 314
        width: 70
        height: 24
        text: "*"
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
            print(text)
            l = text
             label.text =label.text + l

        }
    }

    Button {
        id: button11
        x: 78
        y: 344
        width: 160
        height: 31
        text: qsTr("Save")
        focusPolicy: Qt.StrongFocus
        icon.color: "#db57d3c9"
           font.pointSize: 15
        background: Rectangle {
                color: "#db57d3c9"
            }
        onClicked: {
            //a=label.text

            print(label.text)
            if(label.text=="*0#")
            {        label.text=""
                print("chekkinggg")
                visit.open()

            }
//            while (a >0){
//                a/=10;
//                count++;
//            }

            if(textField.text=="" || label.text=="")
            {
                a=1;
            }

            else
            {a=0;}
             if(a==0)
            {
           testing.addPerson(label.text,textField.text)
            if( testing.poping()==1)
            {
                ok.open()
                check=1;
                count=0;

            }
            if(check==1)
            {
                // add.open()
            }
            if(testing.poping()==0)
            {
                okk.open()
            }
              count=0;

        }

             else
             {
                 add.open()
             }
             }

    }

    TextField {
        id: textField
        x: 78
        y: 159
        width: 156
        height: 34
        background: Rectangle {
                color: parent.pressed ? "pink" : "gray"
            }
        placeholderText: qsTr("Enter Name")
    }

    Button {
        id: button12
        x: 258
        y: 314
        width: 72
        height: 22
        text: "#"
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "red" : "green"
            }
        onClicked: {
                   l = text
            label.text =label.text + l

        }
    }

    Button {
        id: button14
        x: 258
        y: 120
        width: 71
        height: 31
        text: qsTr("x")
        highlighted: false
        focusPolicy: Qt.StrongFocus
        icon.color: "#de3867"
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "green" : "red"
            }

        onClicked: {
              label.text =""

        }
    }


    Button {
        id: button15
        x: 258
        y: 160
        width: 71
        height: 31
        text: qsTr("x")
        highlighted: false
        focusPolicy: Qt.StrongFocus
        icon.color: "#de3867"
        font.bold: true
        font.pointSize: 15
        background: Rectangle {
                color: parent.pressed ? "green" : "red"
            }

        onClicked: {
              textField.text=""

        }
    }



    Button {
        id: button13
        x: 259
        y: 344
        width: 70
        height: 31
        text: qsTr("Delete")
        background: Rectangle {
                color: parent.pressed ? "green" : "red"
            }


        onClicked: {
            testing.del(label.text,textField.text)


            if( testing.popingdel()==1)
            {
                dels.open()


            }
            if( testing.popingdel()==0)
            {
                delu.open()


            }


        }

    }




    Popup{
        anchors.centerIn: parent
        id:delu
        height: 100
        width: 150
        background: Rectangle {
                color: "brown"
            }

        Label {
            id: label5
            width: 130
            height: 25
            text: qsTr("person doesnt exist ")
            font.bold: true
            font.pixelSize: 15
            color: "black"

            Button{
                x: 50
                y: 50

                width: 50
                height: 30
                text: "close"
                background: Rectangle {
                        color: parent.pressed ? "red" : "yellow"
                    }
                onClicked:{
                    delu.close()

                }
            }
        }

    }




    Popup{
        anchors.centerIn: parent
        id:dels
        height: 100
        width: 150
        background: Rectangle {
                color: "lime"
            }

        Label {
            id: label4
            width: 100
            height: 25
            text: qsTr("delete succeful!!..")
            font.bold: true
            font.pixelSize: 15
            color: "black"

            Button{
                x: 50
                y: 50

                width: 50
                height: 30
                text: "close"
                background: Rectangle {
                        color: parent.pressed ? "red" : "yellow"
                    }
                onClicked:{
                    dels.close()
                    label.text=""
                    textField.text=""

                }
            }
        }

    }








    Popup{
        anchors.centerIn: parent
        id: info
        height: 300
        width: 300

        background: Rectangle {
                color: "cyan"
            }

        Label {
            id: lab
            width: 15
            height: 10
         //   text: "name"+"\t"+"mono"
            font.bold: true
            font.pixelSize: 5
            color: "black"
}

        Component.onCompleted:{}


        ListView {
           // id:daylistView
            orientation: Qt.Vertical
         //   model:hourlistModel
            width: 180; height: 200
                id:list
                   model:ListModel{}
                   spacing: 5
                delegate: Text {
                    id: b2
                    text: val
                }



                Item {
                    anchors.fill: parent
                    focus: true
                    Keys.onPressed: console.log("move left")
                }



                Item {
                    anchors.fill: parent
                    focus: true
                    Keys.onPressed: (event)=> {
                      //  if (event.key == Qt.Key_Left) {
                            console.log("move left");
                            event.accepted = true;
                      //  }
                    }
                }


//                MouseArea {
//                                    anchors.fill: parent
//                                    onClicked: list.currentIndex = index


//                                }


//                Rectangle {

//                           Text {
//                               anchors.centerIn: parent
//                               text:model.get(list.currentIndex).name

//                           }

//                       }

                      //  delegate:Item{
                         //    id:hourItem
                            // property string hourTime:hourweeklistviewLabel
                           //  property string notetaking:notesLabe

                             MouseArea{

                                 anchors.fill: parent
                                   onClicked: list.currentIndex = index

//                                 anchors.fill:parent
//                                 onClicked:{
//                                //  windowLoader.active =true
//                                      TextArea
//                                      console.log("key  "+parent.keys+" "+parent.text);
                                       // console.log( parent.accepted = true);

                                 // daylistView.currentIndex=index

                                  }


                                  TextInput{

                            Keys.onPressed:
                                      {
                                          console.log("key "+parent.key+" "+parent.text);
                                      }

                            Keys.onReleased:{
                            console.log("key"+event.key+" "+event.text);
                            }

                                  }
                             }
                             /*Rectangle{}
                             Label{
                               id:hourweeklistviewLabel
                             }
                             Label{
                               id:notesLabel
                               anchors.left:hourweeklistviewLabel.right
                               anchors.leftMargin: 30
                               text:""
                             }//L*///abel
                           // }//delegate:Item










                TextInput{

          Keys.onPressed:
                    {
                        console.log("key"+event.key+" "+event.text);
                    }

          Keys.onReleased:{
          console.log("key"+event.key+" "+event.text);
          }

                }




               Button{
                    x: 100
                    y: 250

                    width: 50
                    height: 30
                    text: "close"
                    background: Rectangle {
                            color: parent.pressed ? "red" : "yellow"
                        }
                    onClicked:{
                        info.close()

                    }
                }

        }



   //}





    Button {
        id: button16
        x: 253
        y: 393
        width: 76
        height: 29
        text: qsTr("info")
        background: Rectangle {
         color: parent.pressed ? "red" : "yellow"
            }

        onClicked: {
       var num=[]
       var num2=[]
            num2=testing.mob()
            num=testing.datat()
for(let i=0;i<num.length;i++)
{
 //  console.log(num[i])
    list.model.append({val:num[i]+"\t"+num2[i]})
}

    info.open()

        }
 }




    Popup{
        anchors.centerIn: parent
        id:visit
        height: 100
        width: 150
        background: Rectangle {
                color: "brown"
            }

        Label {
            id: label7
            width: 130
            height: 25
            text: qsTr("vivek shelke.. ")
            font.bold: true
            font.pixelSize: 15
            color: "black"

            Button{
                x: 50
                y: 50

                width: 50
                height: 30
                text: "close"
                background: Rectangle {
                        color: parent.pressed ? "red" : "yellow"
                    }
                onClicked:{
                    visit.close()

                }
            }
        }

    }











}
