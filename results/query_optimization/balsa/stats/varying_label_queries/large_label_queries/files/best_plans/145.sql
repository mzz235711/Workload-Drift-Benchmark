/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-22 11:30:13'::timestamp AND c.CreationDate<='2014-09-05 03:05:11'::timestamp AND b.Date<='2014-08-26 18:51:40'::timestamp AND u.Reputation>=1 AND u.UpVotes=0;

