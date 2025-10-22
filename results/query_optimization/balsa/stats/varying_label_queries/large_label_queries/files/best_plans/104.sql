/*+ MergeJoin(b ph u c)
 MergeJoin(b ph u)
 HashJoin(ph u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading(((b (ph u)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-27 10:53:31'::timestamp AND b.Date>='2010-08-03 19:40:21'::timestamp AND u.Reputation=101 AND u.UpVotes>=0;

