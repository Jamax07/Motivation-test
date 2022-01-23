#ifndef SHOWRESULT_H
#define SHOWRESULT_H

#include <QObject>
#include <QDebug>
#include <QList>


namespace Test
{
    Q_NAMESPACE         // required for meta object creation
    enum Motive {
        External_motive,
        Educational_motive,
        Game_motive,
        Positional_motive,
        Social_motive,
        Score_motive
    };
    Q_ENUM_NS(Motive)  // register the enum in meta object data
}

class showResult : public QObject
{
    Q_OBJECT
public:
    explicit showResult(QObject *parent = nullptr);
public slots:
    void updateMotives(int val);
    void cleanMotives();
    void addScore(int val);
    void getResult();
    QString getResultText(Test::Motive val);
    void newFunc(int a);
signals:
    void motiveResultSignal(QString val);
    void extraQuestionSignal(int motiveFirst,int motiveSecond);

private:
    QMap<Test::Motive,int> m_res;
    bool isFirstStart;
};

#endif // SHOWRESULT_H
