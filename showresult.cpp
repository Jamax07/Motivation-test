#include "showresult.h"
#include <QDebug>
#include <iterator>

showResult::showResult(QObject *parent) : QObject(parent),isFirstStart(true)
{

}

void showResult::updateMotives(int val)
{
    Test::Motive mtv = (Test::Motive)val;
    const QMap<Test::Motive,int> points = {
        {Test::Motive::External_motive,0},
        {Test::Motive::Educational_motive,5},
        {Test::Motive::Game_motive,1},
        {Test::Motive::Positional_motive,3},
        {Test::Motive::Social_motive,4},
        {Test::Motive::Score_motive,2}
    };
    m_res[mtv]+=points[mtv];
    isFirstStart = false;
}

void showResult::cleanMotives()
{
    if(isFirstStart==false)
        m_res.clear();
}

void showResult::addScore(int val)
{
    Test::Motive mtv = (Test::Motive)val;
    emit motiveResultSignal(getResultText(mtv));
}

void showResult::getResult()
{
    QMultiMap<int,Test::Motive> maxMotives;
    for(int i=Test::Motive::External_motive;i<=Test::Motive::Score_motive;i++){
        Test::Motive key = (Test::Motive)i;
        maxMotives.insert(m_res[key],key);
    }
    int maxValue = maxMotives.lastKey();
    if(maxMotives.values(maxValue).size()==2){

        emit extraQuestionSignal(maxMotives.values(maxValue)[0]
                ,maxMotives.values(maxValue)[1]);

    }else if(maxMotives.values(maxValue).size()==1){
        Test::Motive mtv= maxMotives.values(maxValue)[0];

        emit motiveResultSignal(getResultText(mtv));
    }
}

QString showResult::getResultText(Test::Motive val)
{
    switch (val) {
    case Test::Motive::External_motive: return "External motive";
    case Test::Motive::Educational_motive: return "Educational motive";
    case Test::Motive::Positional_motive: return "Positional motive";
    case Test::Motive::Social_motive: return "Social motive";
    case Test::Motive::Score_motive: return "Score motive";
    case Test::Motive::Game_motive: return "Game motive";
    default:break;
    }
    return " ";
}

void showResult::newFunc(int a)
{

}


