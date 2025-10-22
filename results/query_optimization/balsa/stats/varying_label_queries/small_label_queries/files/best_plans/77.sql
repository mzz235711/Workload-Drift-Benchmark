/*+ HashJoin(ph c b p u)
 HashJoin(c b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (c (b (p u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.PostTypeId=2 AND p.CreationDate<='2014-09-13 08:02:51'::timestamp AND ph.CreationDate>='2010-11-07 12:54:08'::timestamp AND b.Date='2013-04-05 11:48:24'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-09-15 09:37:05'::timestamp AND u.CreationDate<='2014-09-02 18:15:20'::timestamp;

