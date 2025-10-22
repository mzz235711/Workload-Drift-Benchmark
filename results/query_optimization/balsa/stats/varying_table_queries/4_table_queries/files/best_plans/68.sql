/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date>='2010-07-21 12:33:12'::timestamp AND b.Date<='2014-08-11 10:41:32'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0;

