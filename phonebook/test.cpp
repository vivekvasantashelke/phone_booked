#include "test.h"
#include <test.h>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlQuery>
#include <QDebug>
#include<QMap>
#include <QVector>
QMap<QString,QString> info;
QVector<QString> vec,vec2;

   int j=0,i=0;int d=0;int cnt=0;
Test::Test(QObject *parent) : QObject(parent)
{

}

Test::Test(const QString &path)
{


    db=QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName(path);
    if(!db.open())
    {
        qDebug()<<"error"<<"\n";
    }
    else
    {
        qDebug()<<"ok"<<"\n";
    }
   }
   Test::~Test()
   {
       if(db.isOpen())
       {
           db.close();
       }
   }
   bool Test::isOpen() const
   {
       return db.isOpen();
   }
   bool Test::createTable()
   {
       bool success = false;

       QSqlQuery query;
       query.prepare("CREATE TABLE phonec(id INTEGER PRIMARY KEY, mobilen TEXT,nam TEXT);");
     //  query.prepare("CREATE TABLE phone(id INTEGER PRIMARY KEY, mobilen TEXT);");

       if (!query.exec())
       {
           qDebug() << "Couldn't create the table 'phonec': one might already exist.";
           success = false;
       }

       return success;
   }

   bool Test::addPerson(QString mobilen,QString nam)
   {
       qDebug()<<nam;
           removePerson(mobilen);

       bool success = false;

           if (!mobilen.isEmpty()||!nam.isEmpty())
       {
           QSqlQuery queryAdd;
           queryAdd.prepare("INSERT INTO phonec (mobilen,nam) VALUES (:mobilen,:nam)");
//            queryAdd.prepare("INSERT INTO phonec (mobilen) VALUES (:mobilen)");
           queryAdd.bindValue(":mobilen", mobilen);
           queryAdd.bindValue(":nam", nam);

           if(queryAdd.exec())
           {
               success = true;
               qDebug()<<"add succefully";
                i=1;
           }
           else
           {
               qDebug() << "add person failed: " << queryAdd.lastError();
           }
       }
       else
       {
           qDebug() << "add person failed: mobilen cannot be empty";
       }

       return success;




   }

   bool Test::personExists(const QString& mobilen) const
   {
       bool exists = false;

       QSqlQuery checkQuery;
       checkQuery.prepare("SELECT mobilen FROM phonec WHERE mobilen = (:mobilen)");
       checkQuery.bindValue(":mobilen", mobilen);

       if (checkQuery.exec())
       {
           if (checkQuery.next())
           {
               exists = true;
           }
       }
       else
       {
           qDebug() << "person exists failed: " << checkQuery.lastError();
       }

       return exists;
   }

   bool Test::removePerson(const QString& mobilen)
   {
       int s=0;
       bool success = false;

       if (personExists(mobilen))
       {
           QSqlQuery queryDelete;
           queryDelete.prepare("DELETE FROM phonec WHERE mobilen = (:mobilen)");
           queryDelete.bindValue(":mobilen", mobilen);
           success = queryDelete.exec();

           if(!success)
           {
               qDebug() << "remove person failed: " << queryDelete.lastError();
           }
       }
       else
       {


           qDebug() << "remove person failed: person doesnt exist";
              // j=1;

            s=1;

       }


       if(s==1)
       {
           check(true);
       }
       else
         check(false);

       return success;
   }

   int Test::check(bool k)
   {
        if(k==true)
       {
           qDebug()<<"added";
           qDebug()<<"add"<<j;
        j=1;
       }
       else
       {
            j=0;
           qDebug()<<"not added";
         qDebug()<<"notadd"<<j;


       }


  qDebug()<<"check j--"<<j;
    //   return j;
   }


int Test::poping()
{
      qDebug()<<"re"<<j;
   return j;


}

bool Test::del(const QString& mobilen,const QString& nam)
{

    bool success = false;

    if (delcheck(mobilen,nam))
    {
        QSqlQuery queryDelete;
         queryDelete.prepare("DELETE FROM phonec WHERE (mobilen,nam) = (:mobilen,:nam)");
        queryDelete.bindValue(":mobilen", mobilen);
        queryDelete.bindValue(":nam", nam);
        success = queryDelete.exec();
        qDebug() << "remove person";
        d=1;
        if(!success)
        {
            qDebug() << "remove person failed: " << queryDelete.lastError();
        }
    }
    else
    {
       // qDebug() << "remove person failed: person doesnt exist";
    }

    return success;
}







bool Test::delcheck(const QString& mobilen,const QString& nam)
{
    bool success = false;

    if (personExists(mobilen))
    {
        QSqlQuery queryDelete;
        queryDelete.prepare("DELETE FROM phonec WHERE (mobilen,nam) = (:mobilen,:nam)");
        queryDelete.bindValue(":mobilen", mobilen);
        queryDelete.bindValue(":nam", nam);
        success = queryDelete.exec();

        if(!success)
        {
            qDebug() << "remove person failed: " << queryDelete.lastError();
        }
    }
    else
    {
        qDebug() << "remove person failed: person doesnt exist";
    d=0;

    }
    return success;
}

int Test::popingdel()
{
return d;
}




void Test::printAllPersons1()
{
    qDebug() << "Persons in db:";
    QSqlQuery query("SELECT * FROM phonec");
    int idName = query.record().indexOf("mobilen");
  int id_Name = query.record().indexOf("nam");

  //QString name=QString::number(nam);

   while (query.next())
    {
        QString mo = query.value(idName).toString();
         QString name = query.value(id_Name).toString();
        vec.push_back(name);
        vec2.push_back(mo);

    //
         info.insert(mo,name);

       // datat(mo);
 // qDebug() << "number" << mo <<" ";
     //   return mo;


       // qDebug() << "name" << name;
    }



}

QString Test::printAllPersons2() const
{

    QSqlQuery query("SELECT * FROM phonec");
    int idName = query.record().indexOf("nam");
    while (query.next())
     {
         QString name = query.value(idName).toString();
         return name;
         cnt++;

      //   qDebug() << "number" << name <<" ";
        // qDebug() << "name" << name;
    }
}

int Test::forcnt()
{
    return cnt;
}

QVector<QString>  Test::datat()
{
    for(auto i:vec)
        {
           // qDebug()<<i;
        }
    return vec;
}

QVector<QString> Test::mob()
{
    return vec2;
}
QMap<QString,QString> Test::infor()
{

   // info.insert(mo,name);


    QMap<QString,QString>::iterator i;
   for(i=info.begin();i!=info.end();i++)
   {
    //  qDebug()<<i.key()<<" "<<i.value()<<"\n";
    //  return i.key() + i.value();

   }
return info;
 //   for(auto i=vec.begin();i!=vec.end();i++)
//for(auto i:vec)
//    {
//        qDebug()<<i;
//    }


}










