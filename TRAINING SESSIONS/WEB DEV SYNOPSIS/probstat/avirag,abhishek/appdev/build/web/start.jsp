<%-- 
    Document   : start
    Created on : Feb 2, 2013, 3:25:10 AM
    Author     : Avi
--%>

<%@page import="java.awt.CheckboxGroup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TEST</title>
    </head>
    <body><br><br><br>
        <%
        String s[]=new String[100];
        s[0]="Which one of the five is least like the other four?";
        s[1]="Which number should come next in the series\n1 - 1 - 2 - 3 - 5 - 8 – 13?";
        s[2]="Which one of the five choices makes the best comparison? \nPEACH is to HCAEP as 46251 is to:";
        s[3]="Mary, who is sixteen years old, is four times as old as her brother.\nHow old will Mary be when she is twice as old as her brother?";
        s[4]="Which one of the numbers does not belong in the following series?\n2 - 3 - 6 - 7 - 8 - 14 - 15 - 30";
        s[5]="Which one of the five choices makes the best comparison? Finger is to Hand as Leaf is to:";
        s[6]="If you rearrange the letters \"CIFAIPC\" you would have the name of a(n):";
        s[7]="Choose the number that is 1/4 of 1/2 of 1/5 of 200:";
        s[8]="John needs 13 bottles of water from the store. John can only carry 3 at a time.\nWhat's the minimum number of trips John needs to make to the store?";
        s[9]="If all Bloops are Razzies and all Razzies are Lazzies, then all Bloops are definitely Lazzies?";
        s[10]="Choose the word most similar to \"Trustworthy\":";
        s[11]="If you rearrange the letters \"LNGEDNA\" you have the name of a(n):";
        s[12]="Which one of the numbers does not belong in the following series?\n1 - 2 - 5 - 10 - 13 - 26 - 29 - 48";
        s[13]="Ralph likes 25 but not 24; he likes 400 but not 300; he likes 144 but not 145.\nWhich does he like:";
        s[14]="What is the missing number in the sequence shown below?\n1 - 8 - 27 - ? - 125 - 216";
        s[15]="Which one of the following things is the least like the others?";
        s[16]="If you count from 1 to 100, how many 7's will you pass on the way?";
        s[17]="One of the following proverbs is closest in meaning to the saying,\n\"Birds of a feather, flock together\" Choose one:";
        s[18]="Pear is to apple as potato is to?";
        s[19]="If it were two hours later, it would be half as long until midnight\nas it would be if it were an hour later. What time is it now?";
        s[20]="If a circle is one, how many is an octagon?";
        s[21]="If two typists can type two pages in two minutes, how many typists will it take to type 18 pages in six minutes?";
        s[22]="Which vowel comes midway between J and T?";
        s[23]="Two men, starting at the same point, walk in opposite directions for 4 meters,\nturn left and walk another 3 meters. What is the distance between them?";
        s[24]="There are 1200 elephants in a herd. Some have pink and green stripes, some are all pink and some are all blue. One third are pure pink.\nIs it true that 400 elephants are definitely blue?";     
        String option[][]={{"Dog","Mouse","Lion","Snake","Elephant"},
                        {"8","13","21","26","31"},
                        {"25641","26451","12654","51462","15264"},
                        {"20","24","25","26","28"},
                        {"3","7","8","15","30"},
                        {"Twig","Tree","Branch","Blossom","Bark"},
                        {"City","Animal","Ocean","River","Country"},
                        {"2","5","10","25","50"},
                        {"3","4","4.5","5","6"},
                        {"True","False","","",""},
                        {"Resolute","Tenacity","Relevant","Insolent","Reliable"},
                        {"Animal","Country","State","City","Ocean"},
                        {"1","5","26","29","48"},
                        {"10","50","124","200","1600"},
                        {"36","45","46","64","99"},
                        {"Poem","Novel","Painting","Statue","Flower"},
                        {"10","11","19","20","21"},
                        {"One swallow doesn\'t make a summer","A bird in the hand is worth two in the bush",
                        "A man is known by the company he keeps","Fine feathers make fine birds","Don't judge a book by its cover"},
                        {"Banana","Radish","Strwaberry","Peach","Lettuce"},
                        {"18:30","20:00","21:00","22:00","23:30"},
                        {"2","4","6","8","12"},
                        {"3","4","6","12","36"},
                        {"A","E","I","O","U"},
                        {"2m","6m","10m","12.5m","14m"},
                        {"Yes","No","","",""},
                        };
        int answers[]={0,4,3,5,2,2,1,3,4,2,1,1,2,4,3,3,2,4,1,2,1,1,3,2,4,1};
        int level[]={0,1,2,3,1,2,2,3,1,1,2,3,2,2,1,2,3,1,2,3,1,1,2,3,3,1};
        String x=null,ans,sc;
       int score=0;
      if(session.getAttribute("score") !=null){
      sc=session.getAttribute("score").toString();
         score=Integer.parseInt(sc);
            }
       else
           { session.setAttribute("score","0"); score=0;}
           if(session.getAttribute("qs").toString()!=null)
        x=session.getAttribute("qs").toString();
        
        ans=request.getParameter("ans");
        if(ans!=null)
        if(Integer.parseInt(ans)==answers[Integer.parseInt(x)]) {score++;
             session.setAttribute("score",Integer.toString(score));  
        }
        
        if(x!=null)
            session.setAttribute("qs",Integer.toString(Integer.parseInt(x)+1));
        else
            session.setAttribute("qs","0");
       // int q=Integer.parseInt(session.getAttribute("qs").toString());
        out.println(s[Integer.parseInt(x)-1]);
    %>
    <br>
    <table>
        <% for(int i=0;i<5;i++){
            %>
        <tr>
            <td>
                <input type="radio" name="ans" value="<%=(i+1)%>">
            </td>
            <td><%
            out.print(option[Integer.parseInt(x)-1][i]);
    %>
            </td>
        </tr>
        <%
               }%>
               <tr>
                   <td><input type="submit" value="Next"></td>
               </tr>
    </table>
    </body>
</html>
