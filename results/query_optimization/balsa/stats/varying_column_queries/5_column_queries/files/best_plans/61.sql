/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 10:14:09'::timestamp AND b.Date<='2014-08-23 21:48:32'::timestamp AND u.Reputation>=1 AND u.Reputation<=787 AND u.UpVotes=0;

