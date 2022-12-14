#ifndef TEST_H
#define TEST_H

#include <QSqlDatabase>
#include <QObject>
#include <QDebug>
#include <QSettings>
#include <QMap>
class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

    Test(const QString &path);
    ~Test();
    bool createTable();

    bool isOpen() const;

    //Normal function


signals:

public slots:
    bool addPerson(QString ,QString);
     bool personExists(const QString& ) const;
        bool removePerson(const QString &);
int check(bool);
int poping();
  bool del(const QString &,const QString &);
   bool delcheck(const QString &,const QString &);
   int popingdel();
   void printAllPersons1();
QString printAllPersons2() const;
int forcnt();
QVector<QString> datat();
QVector<QString> mob();

QMap<QString,QString> infor();

private:
       QSqlDatabase db;

};

#endif // TEST_H
