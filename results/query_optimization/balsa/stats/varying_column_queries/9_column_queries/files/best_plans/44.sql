/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(c)
 Leading(((ph (b (u p))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-05 14:01:34'::timestamp AND p.FavoriteCount<=5 AND b.Date>='2010-08-26 09:21:17'::timestamp AND b.Date<='2014-08-10 02:30:44'::timestamp AND u.Reputation<=222 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-19 19:52:18'::timestamp AND u.CreationDate<='2014-09-08 01:24:30'::timestamp;

