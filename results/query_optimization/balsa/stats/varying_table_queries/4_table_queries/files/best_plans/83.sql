/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Views<=69 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-04 18:21:49'::timestamp;

