/*+ HashJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=3 AND u.Reputation<=211 AND u.Views>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-10-08 09:14:10'::timestamp;

